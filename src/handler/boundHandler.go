package handler

import (
	"errors"
	"log"
	"sort"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
)

var upsert_bound bool
var Arr_price_type []model.Config
var Map_price_type map[string]int

func init() {
	upsert_bound = true
}

func BoundHandler() {
	Map_price_type = make(map[string]int)
	arr_price_type, err := dao.GetConfig_Upper_Code(c.UPPER_CODE_PRICE_TYPE)
	ChkErr(err)
	Arr_price_type = arr_price_type
	for i := range Arr_price_type {
		Map_price_type[Arr_price_type[i].Code] = Arr_price_type[i].Id
	}

	arr_MetaCode_Stock, err := dao.GetCode(c.Config["stock"])
	ChkErr(err)

	arr_MetaCode_Market, err := dao.GetCode(c.Config["market"])
	ChkErr(err)

	log.Println(" BoundHandler  start")
	bp := Bound{}
	bp.Save(arr_MetaCode_Stock)

	bm := Bound{}
	bm.Save(arr_MetaCode_Market)
	log.Println(" BoundHandler  end")
}

type Bound struct {
}

// BOUND_POINT 저장.
func (o *Bound) Save(list []model.Code) {

	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	done := make(chan bool)

	for i := range list {
		cc := list[i]
		//가격목록 가져왔다.
		bc := BoundCode{
			Code: cc}
		wg.Add(1)
		bc.GetPrice(&wg, done)
		//<-done
		wg_db.Add(1)
		bc.SaveBound(&wg_db)
		if i%10 == 0 {
			wg.Wait()
			wg_db.Wait()
		}
	}
	wg_db.Wait()
	wg.Wait()

}

type BoundCode struct {
	model.Code
	BoundCodeGtype []BoundCodeGtype
}

// BOUND_POINT구하기.
func (o *BoundCode) SaveBound(wg_db *sync.WaitGroup) {
	defer wg_db.Done()
	o.SaveHistBound()
	o.SavePublicBound()
}

func (o *BoundCode) SaveHistBound() {
	for i := range o.BoundCodeGtype {
		o.BoundCodeGtype[i].GetBoundGType()
		o.BoundCodeGtype[i].SaveBoundGType()
		//log.Println(o.BoundCodeGtype[i].PointList)
		//log.Println("save-hist-bound:", o.Code, " g-type:", o.BoundCodeGtype[i].Gtype, ",price-len:", len(o.BoundCodeGtype[i].PriceList), ",bound-len:", len(o.BoundCodeGtype[i].PointList))
	}
}

func (o *BoundCode) SavePublicBound() {
	b := model.TbReBound{}
	b.Code_id = o.Code.Id

	for i := range o.BoundCodeGtype {
		if len(o.BoundCodeGtype[i].PointList) > 0 {
			list := o.BoundCodeGtype[i].PointList
			sort.Slice(list, func(i, j int) bool {
				return list[i].X1 > list[j].X1
			})
			switch o.BoundCodeGtype[i].price_type.Id {
			case Map_price_type["close"]:
				b.Cp_X1 = list[0].X1
				b.Cp_Y1 = list[0].Y1
				b.Cp_X2 = list[0].X2
				b.Cp_Y2 = list[0].Y2
				b.Cp_X_tick = list[0].X_tick
				b.Cp_Y_minus = list[0].Y_minus
				b.Cp_Y_Percent = list[0].Y_Percent
			case Map_price_type["open"]:
				b.Op_X1 = list[0].X1
				b.Op_Y1 = list[0].Y1
				b.Op_X2 = list[0].X2
				b.Op_Y2 = list[0].Y2
				b.Op_X_tick = list[0].X_tick
				b.Op_Y_minus = list[0].Y_minus
				b.Op_Y_Percent = list[0].Y_Percent
			case Map_price_type["low"]:
				b.Lp_X1 = list[0].X1
				b.Lp_Y1 = list[0].Y1
				b.Lp_X2 = list[0].X2
				b.Lp_Y2 = list[0].Y2
				b.Lp_X_tick = list[0].X_tick
				b.Lp_Y_minus = list[0].Y_minus
				b.Lp_Y_Percent = list[0].Y_Percent
			default:
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

	err := dao.InsertPublicBound(b, upsert_bound)
	ChkErr(err)
}

// CODE에 해당하는 가격목록 조회.
func (o *BoundCode) GetPrice(wg *sync.WaitGroup, done chan bool) {
	defer wg.Done()
	for i := range Arr_price_type {
		gcg := BoundCodeGtype{
			Code:       o.Code,
			price_type: Arr_price_type[i],
		}
		gcg.GetPrice()
		o.BoundCodeGtype = append(o.BoundCodeGtype, gcg)
		//log.Println("get-price,", o.Code, ",G_TYPE:", g, ",len=:", len(gcg.PriceList))
	}
	//done <- true
}

type BoundCodeGtype struct {
	model.Code
	price_type model.Config
	PriceList  []model.PriceMarket
	PointList  []model.Point
}

// GTYPE별 각각의 가격 목록 조회.
func (o *BoundCodeGtype) GetPrice() {

	pmlist, err := dao.GetPriceByLastBound(o.Code.Id, o.price_type.Id)
	if err != nil {
		log.Println("오류:GetPriceByLastBound :", o.Code.Id, o.price_type.Id)
	}
	o.PriceList = pmlist
}

// GTYPE별 각각의 BOUND_POINT 구하기
func (o *BoundCodeGtype) GetBoundGType() {
	/*
		변화 구분 0: eq 1 증가 -1 감소
		변화시작점 변화종료점
		변화 기간

	*/

	count := len(o.PriceList)
	//last_x1 := uint(o.PriceList[count-1].Date)
	if count < 2 {
		return
	}

	chg_value := GetChageValue(o.SwitchPrice(0), o.SwitchPrice(0+1))
	chg_start_x := uint(o.PriceList[0].Dt)
	chg_start_y := o.SwitchPrice(0)

	// chg_end_x := uint(o.PriceList[1].Date)
	// chg_end_y := o.SwitchPrice(1)

	chg_tick := 0

	for i := 0; i < count; i++ {

		//log.Println("===============================================================", i, count)
		chg_tick++
		n := i + 1
		if n == count {
			n = i
		}

		x1 := uint(o.PriceList[i].Dt)
		y1 := o.SwitchPrice(i)

		//x2 := uint(o.PriceList[n].Date)
		y2 := o.SwitchPrice(n)

		//log.Println("i=", i, ",n=", n, "len=", count)
		g_way := GetChageValue(y1, y2)
		chg := CheckChange(chg_value, g_way)
		// log.Println("x1, y1,", x1, y1,
		// 	",x2,y2=", x2, y2, " ,chage=", chg, " ,chg_value", chg_value, " cur g way =", g_way)

		if chg {
			// log.Println("____________________________")
			// log.Println("______________chage_save____")
			// log.Println("____________________________")

			var bp = model.Point{}
			bp.Set(chg_start_x, chg_start_y, x1, y1, uint(chg_tick))
			o.PointList = append(o.PointList, bp)
			//log.Println("____________________________", chg_start_x, chg_start_y, x1, y1)
			// init
			chg_tick = 0
			chg_value = g_way
			chg_start_x = x1
			chg_start_y = y1

		}
		// chg_end_x = x2
		// chg_end_y = y2

		//log.Println(" end i_____  ,", chg_start_x, chg_start_y, chg_end_x, chg_end_y)

	}

	// log.Println("____________________________")
	// log.Println("______________end loop _____")
	// log.Println("____________________________")
	// log.Println("____________________________", chg_start_x, chg_start_y, chg_end_x, chg_end_y)

}

func GetBoundGType_Swith_Gway(y1 float32, y2 float32, ago_g_way string) bool {
	if ago_g_way == "" || ago_g_way == "eq" {
		if y1 < y2 {
			ago_g_way = "up"
		} else if y1 > y2 {
			ago_g_way = "down"
		}
	}
	//log.Println("ago_g_way = ", ago_g_way)
	exit1 := ago_g_way == "down" && y1 < y2
	exit2 := ago_g_way == "up" && y1 > y2

	if exit1 || exit2 {
		return true
	}
	return false
}

func CheckChange(ago_g_way int, cur_g_way int) bool {

	if ago_g_way == cur_g_way {
		return false
	} else {
		return true
	}

}

func GetChageValue(y1 float32, y2 float32) int {
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

func (o *BoundCodeGtype) SwitchPrice(i int) float32 {
	switch o.price_type.Id {
	case Map_price_type["low"]:
		return float32(o.PriceList[i].LowPrice)
	case Map_price_type["high"]:
		return float32(o.PriceList[i].HighPrice)
	case Map_price_type["close"]:
		return float32(o.PriceList[i].ClosePrice)
	case Map_price_type["open"]:
		return float32(o.PriceList[i].OpenPrice)
	default:
		panic(errors.New("머머머머ㅓ머지?"))
	}
}

// GTYPE별 BOUND 저장.
func (o *BoundCodeGtype) SaveBoundGType() {
	err := dao.InsertHistBound(o.Code.Id, o.price_type.Id, o.PointList, upsert_bound)
	ChkErr(err)
}
