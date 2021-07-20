package dao

import (
	"database/sql"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
)

type GetDownloadDate struct {
}

func (o *GetDownloadDate) Get() (string, string, error) {
	var start_date string
	var end_date string
	info_nm := c.INFO_NAME_UPDATED

	query := "select to_char( COALESCE(updated, '" + c.PRICE_DEFAULT_START_DATE + "'), 'YYYYMMDD') as start , to_char( now(), 'YYYYMMDD') as end from public.info where name = $1 "
	log.Println(query)
	err := db.Conn.QueryRow(query, info_nm).Scan(&start_date, &end_date)
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

// type InsertPriceStock struct {
// 	Params PriceParams
// 	Upsert bool
// 	List   []model.PriceStock
// }

// func (o *InsertPriceStock) InsertHistPrice() error {
// 	q_insert := `INSERT INTO hist.price `
// 	q_insert += `(code_id, dt, dt_y, dt_m, dt_q4,       op, hp, lp, cp, vol,      fb_rate, o2c, l2h)`
// 	q_insert += `VALUES( $1, $2, $3, $4, $5,           $6, $7, $8, public.get_o2c($3,$6), public.get_o2c($5,$4),      )`
// 	if o.Upsert {
// 		q_insert += `ON CONFLICT ("code","p_date") DO UPDATE SET op=$3 ,hp=$4 ,lp=$5 ,cp=$6 ,vol=$7 ,fb_rate=$8, l2h=public.get_o2c($3,$6), o2c=public.get_o2c($5,$4)  `
// 	}
// 	stmt, err := db.Conn.Prepare(q_insert)

// 	for _, item := range o.List {
// 		_, err = stmt.Exec(o.Params.Code, item.Date, item.OpenPrice, item.HighPrice, item.LowPrice, item.ClosePrice, item.Volume, item.ForeignerBurnoutRate)
// 		if err != nil {
// 			log.Fatalln("쿼리 Insert:", err, item)
// 			panic(err)
// 		}

// 	}
// 	stmt.Close()

// 	return err
// }
