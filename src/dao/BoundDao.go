package dao

import (
	"context"
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

var bound_tb string
var price_tb string

func init() {
	bound_tb = fmt.Sprintf(" %v.%v ", c.SCHEMA_NAME_BOUND, c.TABLE_NAME_BOUND)
	price_tb = fmt.Sprintf(" %v.%v ", c.SCHEMA_NAME_PRICE, c.TABLE_NAME_PRICE)
}

func GetPriceByLastBound(code string, gType string) ([]model.PriceStock, error) {
	res := []model.PriceStock{}

	query := "SELECT PS.P_DATE, PS.OP, PS.HP, PS.LP, PS.CP FROM " +
		price_tb + " PS WHERE PS.CODE = $1 AND P_DATE >= ( SELECT COALESCE(max(x1),0) FROM " +
		bound_tb + " WHERE G_TYPE = $2 AND CODE = $1 ) "

	rows, err := db.Conn.QueryContext(context.Background(), query, code, gType)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		item := model.PriceStock{}
		if err := rows.Scan(&item.Date, &item.OpenPrice, &item.HighPrice, &item.LowPrice, &item.ClosePrice); err != nil {
			log.Fatal(err)
			panic(err)
		}
		res = append(res, item)
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
		panic(err)
	}

	return res, err
}

func InsertBoundPoint(code string, gType string, list []model.Point, upsert bool) error {
	client := db.Conn
	q_insert := fmt.Sprintf(`INSERT INTO %s (code, g_type, x1, y1, x2, y2, x_tick, y_minus, y_percent ) VALUES( $1, $2, $3, $4, $5, $6, $7, $8, $9 )`, bound_tb)
	if upsert {
		q_insert += ` ON CONFLICT ("code","g_type","x1") DO UPDATE SET y1=$4 ,x2=$5 ,y2=$6 ,x_tick=$7 ,y_minus=$8 ,y_percent=$9 `
	}

	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", code, gType)
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()
	for _, item := range list {
		_, err := stmt.Exec(code, gType, item.X1, item.Y1, item.X2, item.Y2, item.X_tick, item.Y_minus, item.Y_Percent)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", code, gType)
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}
