package handler

import (
	"encoding/json"
	"fmt"

	"github.com/cheolgyu/stock-write/src/model"
)

type ViewHandler struct {
	Object   string
	v_market []interface{}
	v_price  []interface{}
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
	for _, m := range model.MarketList {
		vp := data_view.ViewPrice
		view_price := vp[m]
		view_price.Code = m
		view_price.Name = m
		//data, _ := json.MarshalIndent(view_price, "", "  ")
		data, _ := json.Marshal(view_price)
		o.v_market = append(o.v_market, string(data))
		delete(data_view.ViewPrice, m)
	}

	for _, vp := range data_view.ViewPrice {
		//fmt.Println(vp)

		data, _ := json.MarshalIndent(vp, "", "  ")
		//data, _ := json.Marshal(vp)
		println(string(data))
		o.v_price = append(o.v_price, string(data))
	}

}
func (o *ViewHandler) SetArray() {

}

/*
변환된 view용 변수를 db에 저장or update 시키기 위한 sql파일생성하기.
*/
func (o *ViewHandler) Loop() {
	fmt.Println("==========ViewHandler===========")
	fmt.Println((o.v_market))
	fmt.Println("==========ViewHandler===========")
	fmt.Println((o.v_price))

}

func (o *ViewHandler) MakeSql() {

}

/*
생성된 sql파일 실행시키기.
*/
func (o *ViewHandler) Insert() {

}
