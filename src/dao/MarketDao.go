package dao

import (
	"fmt"

	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

type InsertPriceMarket struct {
	Params PriceParams
	Upsert bool
	List   []model.PriceMarket
}

func (o *InsertPriceMarket) Insert() error {
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s" (code, p_date, op, hp, lp, cp, vol, fb_rate ) VALUES( $1, $2, $3, $4, $5, $6, $7, $8 )`,
		o.Params.Schema_nm,
		o.Params.Tb_nm,
	)
	if o.Upsert {
		q_insert += `ON CONFLICT ("code","p_date") DO UPDATE SET op=$2 ,hp=$3 ,lp=$4 ,cp=$5 ,vol=$6 ,fb_rate=$7`
	}
	stmt, err := db.Conn.Prepare(q_insert)

	for _, item := range o.List {
		_, err = stmt.Exec(o.Params.Code, item.Date, item.OpenPrice, item.HighPrice, item.LowPrice, item.ClosePrice, item.Volume, item.ForeignerBurnoutRate)
	}
	stmt.Close()

	return err
}
