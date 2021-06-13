package handler

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils"
)

type ViewHandler struct {
	Object    string
	writeFile string
}

func (o *ViewHandler) Processing() {
	o.init()
	o.Loop()
}

/*
view용 데이터 변환.
일반 변수(소트용), 포맷 적용 변수 나누기.
*/
func (o *ViewHandler) init() {
	if o.Object == c.PRICE {
		o.writeFile = c.DIR_BOUND + c.DIR_BOUND_FILENAME_PRICE
	} else if o.Object == c.MARKET {
		o.writeFile = c.DIR_BOUND + c.DIR_BOUND_FILENAME_MARKET
	}
}

// func (o *ViewHandler) SetArray() {
// 	for _, m := range model.MarketList {
// 		vp := model.ViewInfo.List
// 		view_price := vp[m]
// 		view_price.Code = m
// 		view_price.Name = m
// 		str := view_price.Convert_csv()
// 		o.v_market = append(o.v_market, str)
// 		delete(model.ViewInfo.List, m)
// 	}

// 	for _, vp := range model.ViewInfo.List {
// 		str := vp.Convert_csv()
// 		o.v_price = append(o.v_price, str)
// 	}
// }

/*
변환된 view용 변수를 db에 저장or update 시키기 위한 sql파일생성하기.
*/
func (o *ViewHandler) Loop() {

	f := utils.File{}
	wf := f.CreateFile(o.writeFile)
	defer wf.Close()

	for _, vp := range model.ViewInfo.List {
		f.Write(wf, vp.Convert_csv())
	}

}
