package dao

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

type PriceParams struct {
	Object    string
	Schema_nm string
	Tb_nm     string
	Code      string
}

type GetDownloadDate struct {
}

func (o *GetDownloadDate) Get() (string, string, error) {
	var start_date string
	var end_date string
	info_nm := "price_start_date"

	q := "select to_char( COALESCE(updated, '" + c.PRICE_DEFAULT_START_DATE + "'), 'YYYYMMDD') as start , to_char( now(), 'YYYYMMDD') as end from public.info where name = $1 "
	err := db.Conn.QueryRow(q, info_nm).Scan(&start_date, &end_date)
	switch {
	case err == sql.ErrNoRows:
		log.Println("조회 결과가 없습니다.")
	case err != nil:
		log.Fatalln("쿼리 오류:", err)
		panic(err)
	default:
		log.Println("다운로드 기간: ", start_date, " ~ ", end_date)
	}

	return start_date, end_date, err
}

type InsertPriceStock struct {
	Params PriceParams
	Upsert bool
	List   []model.PriceStock
}

func (o *InsertPriceStock) Insert() error {
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
		if err != nil {
			log.Fatalln("쿼리 Insert:", err, item)
			panic(err)
		}

	}
	stmt.Close()

	return err
}
