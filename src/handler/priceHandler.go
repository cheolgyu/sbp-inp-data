package handler

import (
	"fmt"
	"os"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils"
	"github.com/cheolgyu/stock-write/src/utils/download"
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
	o.SetArray()
}
func (o *PriceHandler) SetArray() {
	list := CodeArr[1:2]

	for _, code := range list {
		nc := download.NaverChart{
			StartDate: o.StartDate,
			EndDate:   o.EndDate,
			ChartData: download.ChartData{
				Object: o.Object,
				Code:   code,
			},
		}

		nc.Run()

		cd := nc.ChartData
		f := utils.File{}
		wf := f.CreateFile(o.writeDir + code)
		wf.Close()

		file, err := os.OpenFile(o.writeDir+code, os.O_RDWR|os.O_APPEND, 0644)
		check(err)

		for _, item := range cd.List[:15] {
			f.Write(file, CSV(item))
		}

		wf.Close()
	}
}

func CSV(p model.Price) string {
	v := fmt.Sprintf("%v,%v,%v,%v,%v,%v,%v",
		p.Date,
		p.OpenPrice,
		p.HighPrice,
		p.LowPrice,
		p.ClosePrice,
		p.Volume,
		p.ForeignerBurnoutRate,
	)

	if len(v) < c.REPEAT_CNT {
		v += strings.Repeat(c.REPEAT_STR, c.REPEAT_CNT-len(v))
	}

	return v
}
