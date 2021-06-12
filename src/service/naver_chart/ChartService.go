package naver_chart

import (
	"log"

	"github.com/cheolgyu/stock-write/src"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/model/naver"
	"github.com/cheolgyu/stock-write/src/utils/download/price/naver_chart"
	"github.com/cheolgyu/stock-write/src/utils/file"
)

type ChartService struct {
	Params Params
	List   []model.Company
}

func (o *ChartService) OneFileRun() {

	var list []naver.ChartData

	var ch chan naver.ChartData = make(chan naver.ChartData)
	var ch_res chan bool = make(chan bool)

	fnm, seednm := src.SeedInfo(o.Params.Object)

	f := file.CreateFile(fnm)

	file.Write(f, "-- name: "+seednm)

	for _, item := range o.List {

		go func(short_code string) {

			get := naver_chart.Download{
				StartDate: o.Params.StartDate,
				EndDate:   o.Params.EndDate,
				ChartData: naver.ChartData{
					Object: o.Params.Object,
					Code:   short_code},
			}
			get.Exec()
			ch <- get.ChartData
		}(item.Short_code)

		_item := <-ch
		list = append(list, _item)

		go func(item naver.ChartData) {
			file.WritePriceQuery(f, o.Params.Object, item)
			ch_res <- true
		}(_item)

		<-ch_res

	}

	log.Println(o.Params.Object, "-daily 시드파일 완성.")

	defer f.Close()

	dao.SqlSeed.Run(fnm, seednm)

}

func (o *ChartService) EachFileExec() {

	var list []naver.ChartData

	var ch chan naver.ChartData = make(chan naver.ChartData)
	var ch_res chan bool = make(chan bool)

	for _, item := range o.List {

		go func(short_code string) {
			get := naver_chart.Download{
				StartDate: o.Params.StartDate,
				EndDate:   o.Params.EndDate,
				ChartData: naver.ChartData{
					Object: o.Params.Object,
					Code:   short_code},
			}

			get.Exec()
			ch <- get.ChartData

		}(item.Short_code)

		_item := <-ch
		list = append(list, _item)

		go func(item naver.ChartData) {

			fnm, seednm := src.SeedInfo(o.Params.Object)
			f := file.CreateFile(fnm)

			file.WritePriceQuery(f, o.Params.Object, item)
			defer f.Close()

			dao.SqlSeed.Run(fnm, seednm)

			ch_res <- true
		}(_item)

		<-ch_res

	}

	log.Println(o.Params.Object, " init 시드파일 및 실행 완료.")

}
