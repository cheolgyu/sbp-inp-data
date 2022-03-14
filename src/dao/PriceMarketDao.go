package dao

import (
	"context"
	"fmt"
	"log"

	"github.com/cheolgyu/base/db"
	"github.com/cheolgyu/model"
	"github.com/lib/pq"
)

type PriceMarketList struct {
}

func (o *PriceMarketList) Get(code_type int) ([]model.DownloadInfo, error) {
	var res []model.DownloadInfo
	query := `
select 
	mc.id,mc.code, mc.code_type
	,coalesce(max( hp.dt),19560303)::text as start_dt 
	,to_char( now(), 'YYYYMMDD')::text as end_dt
 from meta.code mc left join hist.price hp on mc.id = hp.code_id
 where mc.code_type = `
	query += fmt.Sprint(code_type)
	query += ` group by mc.id, mc.code_type
`
	log.Println(query)
	rows, err := db.Conn.QueryContext(context.Background(), query)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		item := model.DownloadInfo{}

		if err := rows.Scan(&item.Code.Id, &item.Code.Code, &item.Code.Code_type, &item.StartDt, &item.EndDt); err != nil {
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
			err_item := fmt.Sprintf("%+v   %+v \n", o.Code.Id, item)
			log.Println("err_item:", err_item)

			if err, ok := res_err.(*pq.Error); ok {

				// 당일 데이터 넣을때는 오류가 안나지만 이전일자의 가격정보를 넣을때 오류가 발생함.
				if err.Constraint == "price_dt_fkey" {
					log.Println("과거 가격정보 insert시 해당 날짜의 opening de가 없음. ")
					err := InsertOpening(item.Dt)
					if err != nil {

						log.Fatalln("쿼리:InsertPriceMarket:InsertOpening Insert:", err, item.Dt)
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
					log.Printf("%+v", item)
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
