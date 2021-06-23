package dao

import (
	"context"
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

var tb_hist_bound string
var tb_hist_price string

//var tb_hist_market string
var tb_bound string

func init() {
	tb_hist_bound = fmt.Sprintf(" %v.%v ", c.SCHEMA_NAME_HISTORY, c.TABLE_NAME_HISTORY_BOUND)
	tb_hist_price = fmt.Sprintf(" %v.%v ", c.SCHEMA_NAME_HISTORY, c.TABLE_NAME_HISTORY_PRICE_STOCK)
	//tb_hist_market = fmt.Sprintf(" %v.%v ", c.SCHEMA_NAME_HISTORY, c.TABLE_NAME_HISTORY_PRICE_MARKET)
	tb_bound = fmt.Sprintf(" %v.%v ", c.SCHEMA_NAME_PUBLIC, c.TABLE_NAME_BOUND)

}

func GetPriceByLastBound(code string, gType string) ([]model.PriceStock, error) {
	res := []model.PriceStock{}

	query := "SELECT PS.P_DATE, PS.OP, PS.HP, PS.LP, PS.CP FROM " +
		tb_hist_price + " PS WHERE PS.CODE = $1 AND P_DATE >= ( SELECT COALESCE(max(cp_x1),0) FROM " +
		tb_bound + " WHERE  CODE = $1 ) "

	rows, err := db.Conn.QueryContext(context.Background(), query, code)
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

func InsertHistBound(code string, gType string, list []model.Point, upsert bool) error {
	client := db.Conn
	q_insert := fmt.Sprintf(`INSERT INTO %s (code, g_type, x1, y1, x2, y2, x_tick, y_minus, y_percent ) VALUES( $1, $2, $3, $4, $5, $6, $7, $8, $9 )`, tb_hist_bound)
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

func InsertPublicBound(item model.Bound, upsert bool) error {
	client := db.Conn
	q_insert := `
	INSERT INTO ` + tb_bound + `(
		code, cp_x1, cp_y1, cp_x2, cp_y2, cp_x_tick, cp_y_minus, cp_y_percent, op_x1, op_y1, op_x2, op_y2, op_x_tick, op_y_minus, op_y_percent, lp_x1, lp_y1, lp_x2, lp_y2, lp_x_tick, lp_y_minus, lp_y_percent, hp_x1, hp_y1, hp_x2, hp_y2, hp_x_tick, hp_y_minus, hp_y_percent)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29)
	`
	if upsert {
		q_insert += ` ON CONFLICT ("code") DO UPDATE SET 
		code=$1, cp_x1=$2, cp_y1=$3, cp_x2=$4, cp_y2=$5, cp_x_tick=$6, cp_y_minus=$7, cp_y_percent=$8, op_x1=$9, op_y1=$10,
		op_x2=$11, op_y2=$12, op_x_tick=$13, op_y_minus=$14, op_y_percent=$15, lp_x1=$16, lp_y1=$17, lp_x2=$18, lp_y2=$19, lp_x_tick=$20,
		lp_y_minus=$21, lp_y_percent=$22, hp_x1=$23, hp_y1=$24, hp_x2=$25, hp_y2=$26, hp_x_tick=$27, hp_y_minus=$28, hp_y_percent=$29
		`
	}

	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", item)
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	_, err = stmt.Exec(item.Code,
		item.Cp_X1, item.Cp_Y1, item.Cp_X2, item.Cp_Y2, item.Cp_X_tick, item.Cp_Y_minus, item.Cp_Y_Percent,
		item.Op_X1, item.Op_Y1, item.Op_X2, item.Op_Y2, item.Op_X_tick, item.Op_Y_minus, item.Op_Y_Percent,
		item.Lp_X1, item.Lp_Y1, item.Lp_X2, item.Lp_Y2, item.Lp_X_tick, item.Lp_Y_minus, item.Lp_Y_Percent,
		item.Hp_X1, item.Hp_Y1, item.Hp_X2, item.Hp_Y2, item.Hp_X_tick, item.Hp_Y_minus, item.Hp_Y_Percent,
	)
	if err != nil {
		log.Println("쿼리:stmt.Exec 오류: ", item)
		log.Fatal(err)
		panic(err)
	}
	return err
}
