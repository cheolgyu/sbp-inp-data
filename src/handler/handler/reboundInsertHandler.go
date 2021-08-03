package handler

import (
	"fmt"
	"log"
	"sort"
	"sync"

	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
)

var ch_price_insert chan ReboundInsert //= make(chan ReboundInsert)
var wg_price_insert sync.WaitGroup

type ReboundInsert struct {
	model.Code
	list []rebound_price_type
}

func ChannelReboundInsert(ch chan ReboundInsert) {
	log.Println("run  ChannelReboundInsert")
	// loop over the data from the channel
	for v := range ch {

		txt := fmt.Sprintf("ch_price_insert <   %+v", v.Code)
		log.Println(txt)

		v.exec()
	}
}

func (o *ReboundInsert) exec() {

	defer wg_price_insert.Done()

	for i := range o.list {
		o.list[i].insert_hist_rebound()

		// txt := fmt.Sprintf("\ncode <   %+v \n", o.Code)
		// txt += fmt.Sprintf("PointList <   %+v", o.list[i].price_type)
		// log.Println(txt)

	}
	o.insert_public_rebound()

}

// GTYPE별 BOUND 저장.
func (o *rebound_price_type) insert_hist_rebound() {

	err := dao.InsertHistReBound(o.Code.Id, o.price_type.Id, o.PointList, upsert_bound)
	ChkErr(err)
}

func (o *ReboundInsert) insert_public_rebound() {
	b := model.TbReBound{}
	b.Code_id = o.Code.Id

	for i := range o.list {
		if len(o.list[i].PointList) > 0 {
			list := o.list[i].PointList
			sort.Slice(list, func(i, j int) bool {
				return list[i].X1 > list[j].X1
			})
			switch o.list[i].price_type.Id {
			case price_type_config["close"]:
				b.Cp_X1 = list[0].X1
				b.Cp_Y1 = list[0].Y1
				b.Cp_X2 = list[0].X2
				b.Cp_Y2 = list[0].Y2
				b.Cp_X_tick = list[0].X_tick
				b.Cp_Y_minus = list[0].Y_minus
				b.Cp_Y_Percent = list[0].Y_Percent
			case price_type_config["open"]:
				b.Op_X1 = list[0].X1
				b.Op_Y1 = list[0].Y1
				b.Op_X2 = list[0].X2
				b.Op_Y2 = list[0].Y2
				b.Op_X_tick = list[0].X_tick
				b.Op_Y_minus = list[0].Y_minus
				b.Op_Y_Percent = list[0].Y_Percent
			case price_type_config["low"]:
				b.Lp_X1 = list[0].X1
				b.Lp_Y1 = list[0].Y1
				b.Lp_X2 = list[0].X2
				b.Lp_Y2 = list[0].Y2
				b.Lp_X_tick = list[0].X_tick
				b.Lp_Y_minus = list[0].Y_minus
				b.Lp_Y_Percent = list[0].Y_Percent
			case price_type_config["high"]:
				b.Hp_X1 = list[0].X1
				b.Hp_Y1 = list[0].Y1
				b.Hp_X2 = list[0].X2
				b.Hp_Y2 = list[0].Y2
				b.Hp_X_tick = list[0].X_tick
				b.Hp_Y_minus = list[0].Y_minus
				b.Hp_Y_Percent = list[0].Y_Percent
			}

		}
	}

	err := dao.InsertPublicReBound(b, upsert_bound)
	ChkErr(err)
}
