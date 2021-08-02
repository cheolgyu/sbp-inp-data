package handler

import (
	"errors"
	"fmt"
	"log"
	"sort"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
)

var upsert_bound bool
var price_type_arr []model.Config
var price_type_config map[string]int

var wg sync.WaitGroup = sync.WaitGroup{}
var wg_db sync.WaitGroup = sync.WaitGroup{}
var done chan bool = make(chan bool)

func init() {

	upsert_bound = true

	_price_type_arr, err := dao.GetConfig_Upper_Code(c.UPPER_CODE_PRICE_TYPE)
	ChkErr(err)
	price_type_arr = _price_type_arr

	price_type_config = make(map[string]int)
	for i := range price_type_arr {
		price_type_config[price_type_arr[i].Code] = price_type_arr[i].Id
	}
}

func ReBoundHandler() {

	code_stock, err := dao.GetCode(c.Config["stock"])
	ChkErr(err)

	code_market, err := dao.GetCode(c.Config["market"])
	ChkErr(err)

	log.Println(" BoundHandler  start")
	bp := ReBound{}
	bp.Save(code_stock)

	bm := ReBound{}
	bm.Save(code_market)
	log.Println(" BoundHandler  end")
}

type ReBound struct {
}

// BOUND_POINT 저장.
func (o *ReBound) Save(list []model.Code) {

	for i := range list {
		cc := list[i]
		//가격목록 가져왔다.
		bc := code_rebound{Code: cc}
		wg.Add(1)
		go bc.get_price()
		<-done
		wg_db.Add(1)
		bc.insert()
		if i%10 == 0 {
			wg.Wait()
			wg_db.Wait()
		}
	}
	wg_db.Wait()
	wg.Wait()

}

type code_rebound struct {
	model.Code
	arr_rebound_price_type []rebound_price_type
}

func (o *code_rebound) insert() {
	defer wg_db.Done()
	o.insert_hist_rebound()
	o.insert_public_rebound()
}

func (o *code_rebound) insert_hist_rebound() {
	for i := range o.arr_rebound_price_type {
		o.arr_rebound_price_type[i].get_rebound_point()
		o.arr_rebound_price_type[i].insert_hist_rebound()
	}
}

func (o *code_rebound) insert_public_rebound() {
	b := model.TbReBound{}
	b.Code_id = o.Code.Id

	for i := range o.arr_rebound_price_type {
		if len(o.arr_rebound_price_type[i].PointList) > 0 {
			list := o.arr_rebound_price_type[i].PointList
			sort.Slice(list, func(i, j int) bool {
				return list[i].X1 > list[j].X1
			})
			switch o.arr_rebound_price_type[i].price_type.Id {
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

// CODE에 해당하는 가격목록 조회.
func (o *code_rebound) get_price() {
	defer wg.Done()
	for i := range price_type_arr {
		gcg := rebound_price_type{
			Code:       o.Code,
			price_type: price_type_arr[i],
		}
		gcg.get_price()
		o.arr_rebound_price_type = append(o.arr_rebound_price_type, gcg)
		// txt := fmt.Sprintf("len= %+v  ,Code.Id: %+v  ,price_type:  %+v", len(gcg.PriceList), o.Code.Id, price_type_arr[i])
		// log.Println(txt)
	}
	done <- true
}

type rebound_price_type struct {
	model.Code
	price_type model.Config
	PriceList  []model.PriceMarket
	PointList  []model.Point
}

// price_type별 각각의 가격 목록 조회.
func (o *rebound_price_type) get_price() {

	pmlist, err := dao.GetPriceByLastReBound(o.Code.Id, o.price_type.Id)

	if err != nil {
		log.Println("오류:GetPriceByLastReBound :", o.Code.Id, o.price_type.Id)
	}
	o.PriceList = pmlist
}

// price_type별 각각의 RE_BOUND_POINT 구하기
func (o *rebound_price_type) get_rebound_point() {
	/*
		변화 구분 0: eq 1 증가 -1 감소
		변화시작점 변화종료점
		변화 기간

	*/

	count := len(o.PriceList)
	if count < 2 {
		return
	}

	chg_value := change_graph_direction(o.get_price_value(0), o.get_price_value(0+1))
	chg_start_x := uint(o.PriceList[0].Dt)
	chg_start_y := o.get_price_value(0)

	chg_tick := 0

	for i := 0; i < count; i++ {
		//		log.Println("chg_start_x, chg_start_y,chg_tick", chg_start_x, chg_start_y, chg_tick)

		chg_tick++
		n := i + 1
		if n == count {
			n = i
		}

		x1 := uint(o.PriceList[i].Dt)
		y1 := o.get_price_value(i)

		y2 := o.get_price_value(n)

		g_way := change_graph_direction(y1, y2)
		chg := is_rebound(chg_value, g_way)

		if chg {
			var bp = model.Point{}
			var err = bp.Set(chg_start_x, chg_start_y, x1, y1, uint(chg_tick))
			if err != nil {
				txt := fmt.Sprintf("o.PointList= %+v \n", o.PointList)
				log.Println(txt)
				panic(err)
			}

			o.PointList = append(o.PointList, bp)

			chg_tick = 0
			chg_value = g_way
			chg_start_x = x1
			chg_start_y = y1

		}

	}

}

func (o *rebound_price_type) get_price_value(i int) float32 {
	switch o.price_type.Id {
	case price_type_config["low"]:
		return float32(o.PriceList[i].LowPrice)
	case price_type_config["high"]:
		return float32(o.PriceList[i].HighPrice)
	case price_type_config["close"]:
		return float32(o.PriceList[i].ClosePrice)
	case price_type_config["open"]:
		return float32(o.PriceList[i].OpenPrice)
	default:
		panic(errors.New("머머머머ㅓ머지?"))
	}
}

// GTYPE별 BOUND 저장.
func (o *rebound_price_type) insert_hist_rebound() {
	err := dao.InsertHistReBound(o.Code.Id, o.price_type.Id, o.PointList, upsert_bound)
	ChkErr(err)
}

func is_rebound(ago_g_way int, cur_g_way int) bool {

	if ago_g_way == cur_g_way {
		return false
	} else {
		return true
	}

}

func change_graph_direction(y1 float32, y2 float32) int {
	g_way := 0
	if y1 < y2 {
		g_way = 1
	} else if y1 > y2 {
		g_way = -1
	} else if y1 == y2 {
		g_way = 0
	} else {
		panic("머냐")
	}
	return g_way
}