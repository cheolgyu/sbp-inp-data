package dao

import (
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

type InsertPriceMarket struct {
	model.Code
	Upsert bool
	List   []model.PriceMarket
}

func (o *InsertPriceMarket) Insert() error {
	q_insert := `INSERT INTO hist.price `
	q_insert += `(code_id, dt, dt_y, dt_m, dt_q4,       op, cp, lp, hp, vol,      fb_rate, o2c, l2h)`
	q_insert += `VALUES( $1, $2, $3, $4, $5,           $6, $7, $8, $9, $10 , $11, utils.get_o2c($6,$7), utils.get_o2c($8,$9) ) `

	if o.Upsert {
		q_insert += ` ON CONFLICT ("code_id","dt") DO UPDATE SET op=$6 ,cp=$7 ,lp=$8 ,hp=$9 ,vol=$10 ,fb_rate=$11, o2c=utils.get_o2c($6,$7), l2h=utils.get_o2c($8,$9) `
	}
	stmt, err := db.Conn.Prepare(q_insert)

	for _, item := range o.List {
		_, err = stmt.Exec(o.Code.Id, item.Dt, item.Dt_y, item.Dt_m, item.Dt_q4,
			item.OpenPrice, item.ClosePrice, item.LowPrice, item.HighPrice, item.Volume, item.ForeignerBurnoutRate)
		if err != nil {
			err_item := fmt.Sprintf("%+v\n", item)
			log.Println("err_item:", err_item)
			log.Fatalln("쿼리:InsertPriceMarket: Insert:", err, item, q_insert)
			//panic(err)
		}
	}
	stmt.Close()

	return err
}
