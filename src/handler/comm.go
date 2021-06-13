package handler

import "github.com/cheolgyu/stock-write/src/model"

func init() {
	data_view.ViewPrice = make(map[string]model.ViewPrice)
}

var CodeArr []string

type DataView struct {
	ViewPrice map[string]model.ViewPrice
}

func set_point(code string, inp model.Point) {
	map_v_p := data_view.ViewPrice[code]
	map_v_p.Point = inp
	data_view.ViewPrice[code] = map_v_p
}

func (o *DataView) set_state(code string, inp model.CompanyState) {
	vp := o.ViewPrice[code]
	vp.State = inp
}

var data_view DataView
