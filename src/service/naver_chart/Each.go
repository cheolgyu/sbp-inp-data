package naver_chart

import (
	"github/cheolgyu/stock/backend/dbment/src/dao"
	"github/cheolgyu/stock/backend/dbment/src/model"
	market_naver_chart "github/cheolgyu/stock/backend/dbment/src/utils/download/market/naver_chart"
	price_naver_chart "github/cheolgyu/stock/backend/dbment/src/utils/download/price/naver_chart"
	"github/cheolgyu/stock/backend/dbment/src/utils/file"
	"log"
)

type Each struct {
	Item, Start, End, Schema_type, Seednm string
	List                                  []model.Company
}

func (o *Each) Exec() {

	var ch_nc chan model.NaverChart = make(chan model.NaverChart)
	var ch_ncm chan model.NaverChartMarket = make(chan model.NaverChartMarket)
	var ch_res chan bool = make(chan bool)

	for _, item := range o.List {

		switch o.Item {
		case "price":

			go func(short_code string) {
				nc := price_naver_chart.Get(short_code, o.Start, o.End)
				ch_nc <- nc
			}(item.Short_code)

			_item := <-ch_nc
			fnm := _item.GetSeedFilePath()
			f := file.CreateFile(fnm)

			go func(item model.NaverChart) {
				file.Write_Init_file_price(f, o.Schema_type, item)
				ch_res <- true
			}(_item)

			<-ch_res

			defer f.Close()

			dao.SqlSeed.Run(fnm, o.Seednm)

		case "market":

			go func(short_code string) {
				nc := market_naver_chart.Get(short_code, o.Start, o.End)
				ch_ncm <- nc
			}(item.Short_code)

			_item := <-ch_ncm
			fnm := _item.GetSeedFilePath()
			f := file.CreateFile(fnm)

			go func(item model.NaverChartMarket) {
				file.Write_Init_file_market(f, o.Schema_type, item)
				ch_res <- true
			}(_item)

			<-ch_res

			defer f.Close()

			dao.SqlSeed.Run(fnm, o.Seednm)

		}
	}

	log.Println(o.Item, " init 시드파일 및 실행 완료.")

}
