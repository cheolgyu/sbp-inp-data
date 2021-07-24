package dao

import (
	"database/sql"
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/lib/pq"
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
	stmt, res_err := db.Conn.Prepare(q_insert)

	for _, item := range o.List {
		_, res_err = stmt.Exec(o.Code.Id, item.Dt, item.Dt_y, item.Dt_m, item.Dt_q4,
			item.OpenPrice, item.ClosePrice, item.LowPrice, item.HighPrice, item.Volume, item.ForeignerBurnoutRate)
		if res_err != nil {
			err_item := fmt.Sprintf("%+v\n", item)
			log.Println("err_item:", err_item)

			if err, ok := res_err.(*pq.Error); ok {
				// 당일 데이터 넣을때는 오류가 안나지만 이전일자의 가격정보를 넣을때 오류가 발생함.
				if err.Constraint == "price_dt_fkey" {
					err := InsertOpening(item.Dt)
					if err != nil {
						log.Fatalln("쿼리:InsertPriceMarket:InsertOpening Insert:", err)
					} else {
						res_err = nil

						_, res_err = stmt.Exec(o.Code.Id, item.Dt, item.Dt_y, item.Dt_m, item.Dt_q4,
							item.OpenPrice, item.ClosePrice, item.LowPrice, item.HighPrice, item.Volume, item.ForeignerBurnoutRate)
						if res_err != nil {
							err_item := fmt.Sprintf("%+v\n", item)
							log.Println("err_item2222222222222-------:", err_item)
						}
					}

				} else {
					log.Println("pq error:", err.Code.Name())
					log.Fatalln("쿼리:InsertPriceMarket: Insert:", err)
				}
				//fmt.Sprintf("%+v", err)
			}

			//panic(err)
		}
	}
	stmt.Close()

	return res_err
}
