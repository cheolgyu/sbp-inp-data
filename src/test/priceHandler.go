package test

import (
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
)

type PriceHandler struct {
	StartDate string
	EndDate   string
	Object    string
	downDir   string
	writeDir  string
}

func (o *PriceHandler) init() {
	if o.Object == c.PRICE {
		o.downDir = c.DOWNLOAD_DIR_PRICE
		o.writeDir = c.DIR_PRICE
	} else if o.Object == c.MARKET {
		o.downDir = c.DOWNLOAD_DIR_MARKET
		o.writeDir = c.DIR_MARKET
	}
}
func (o *PriceHandler) Processing() {

	o.init()
	o.MakeCSV()
}
func (o *PriceHandler) MakeCSV() {
	list := model.CodeArr.List

	wg := sync.WaitGroup{}
	for _, code := range list {
		wg.Add(1)
		if code == "단축코드" {
			panic("단축코드 발견")
		}
		go func(code string) {
			defer wg.Done()
			// nc := download.NaverChart{
			// 	StartDate: o.StartDate,
			// 	EndDate:   o.EndDate,
			// 	ChartData: download.ChartData{
			// 		Object: o.Object,
			// 		Code:   code,
			// 	},
			// }

			// nc.Run()

			// uf := utils.File{}
			// //file := uf.CreateFile(o.writeDir + code)
			// file := uf.AppendFile(o.writeDir + code)

			// for _, item := range nc.ChartData.List {
			// 	uf.Write(file, item.CSV(o.Object))
			// }

			// file.Close()
		}(code)

	}
	wg.Wait()
}
