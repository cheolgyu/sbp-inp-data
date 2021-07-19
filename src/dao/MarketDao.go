package dao

import (
	"log"

	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

type InsertPriceMarket struct {
	Params PriceParams
	Upsert bool
	List   []model.PriceMarket
}

func (o *InsertPriceMarket) Insert() error {
	q_insert := `INSERT INTO hist.price `
	q_insert += `(code_id, dt, dt_y, dt_m, dt_q4,       op, hp, lp, cp, vol,      fb_rate, o2c, l2h)`
	q_insert += `VALUES( $1, $2, $3, $4, $5,           $6, $7, $8, public.get_o2c($3,$6), public.get_o2c($5,$4),      )`

	if o.Upsert {
		q_insert += `ON CONFLICT ("code","p_date") DO UPDATE SET op=$3 ,hp=$4 ,lp=$5 ,cp=$6 ,vol=$7 ,fb_rate=$8, l2h=public.get_o2c($3,$6), o2c=public.get_o2c($5,$4) `
	}
	stmt, err := db.Conn.Prepare(q_insert)

	for _, item := range o.List {
		_, err = stmt.Exec(o.Params.Code, item.Date, item.OpenPrice, item.HighPrice, item.LowPrice, item.ClosePrice, item.Volume, item.ForeignerBurnoutRate)
		if err != nil {
			log.Fatalln("쿼리 Insert:", err, item, q_insert)
			panic(err)
		}
	}
	stmt.Close()

	return err
}
