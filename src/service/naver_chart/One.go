package naver_chart

import (
	"corplist/src/dao"
	"corplist/src/model"
	market_naver_chart "corplist/src/utils/download/market/naver_chart"
	price_naver_chart "corplist/src/utils/download/price/naver_chart"
	"corplist/src/utils/file"
	"log"
)

type One struct {
	Item, Start, End, Schema_type, Fnm, Seednm string
	List                                       []model.Company
}

func (o *One) Exec() {

	var ch_nc chan model.NaverChart = make(chan model.NaverChart)
	var ch_ncm chan model.NaverChartMarket = make(chan model.NaverChartMarket)
	var ch_res chan bool = make(chan bool)

	f := file.CreateFile(o.Fnm)

	file.Write(f, "-- name: "+o.Seednm)

	for _, item := range o.List {

		switch o.Item {
		case "price":

			go func(short_code string) {
				nc := price_naver_chart.Get(short_code, o.Start, o.End)
				ch_nc <- nc
			}(item.Short_code)

			_item := <-ch_nc

			go func(item model.NaverChart) {
				file.Write_Daily_file_price(f, o.Schema_type, item)
				ch_res <- true
			}(_item)

			<-ch_res

		case "market":

			go func(short_code string) {
				nc := market_naver_chart.Get(short_code, o.Start, o.End)
				ch_ncm <- nc
			}(item.Short_code)

			_item := <-ch_ncm

			go func(item model.NaverChartMarket) {
				file.Write_Daily_file_market(f, o.Schema_type, item)
				ch_res <- true
			}(_item)

			<-ch_res

		}

	}

	log.Println(o.Item, "-daily 시드파일 완성.")

	defer f.Close()

	dao.SqlSeed.Run(o.Fnm, o.Seednm)

}
