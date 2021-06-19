package handler

import (
	"fmt"
	"log"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
)

func BoundHandler() {
	b := Bound{}
	b.Save()
}

type Bound struct {
}

// BOUND_POINT 저장.
func (o *Bound) Save() {

	//코드목록 조회
	selectCode := dao.SelectCode{}
	obj_list := selectCode.All()

	for i := range obj_list {
		cc := obj_list[i]
		log.Println("시작:", i, "==>", cc.Code)
		//가격목록 가져왔다.
		bc := BoundCode{Code: cc.Code}
		bc.LoadPrice()
		bc.GetPoint()

	}

}

type BoundCode struct {
	Code           string
	BoundCodeGtype []BoundCodeGtype
}

// BOUND_POINT구하기.
func (o *BoundCode) GetPoint() {
	for i := range o.BoundCodeGtype {
		//log.Println("마지막 포인트 찾기:", o.Code)
		bcg := o.BoundCodeGtype[i]
		//log.Println("마지막 포인트 찾기:", o.Code, "price목록수:", len(bcg.PriceList))
		bcg.GetPointGTYPE()
		//log.Println("마지막 포인트 찾기:", o.Code, "bound목록수:", len(bcg.PointList))
		bcg.Save(o.Code)
	}
}

// CODE에 해당하는 가격목록 조회.
func (o *BoundCode) LoadPrice() {
	for i := range c.G_TYPE {
		g := c.G_TYPE[i]
		//log.Println("Load===========,", o.Code, ",G_TYPE:", g)
		gcg := BoundCodeGtype{
			Gtype: g,
		}
		gcg.Load(o.Code)
		o.BoundCodeGtype = append(o.BoundCodeGtype, gcg)
		log.Println("Load===========,", o.Code, ",G_TYPE:", g, "==>가격목록수:", len(gcg.PriceList))
	}
}

type BoundCodeGtype struct {
	Gtype     string
	PriceList []model.Price
	PointList []model.Point
}

// GTYPE별 각각의 가격 목록 조회.
func (o *BoundCodeGtype) Load(code string) {

	bound_dao := dao.BoundDao{}
	last_point := bound_dao.SelectLast(code + "_" + o.Gtype)
	start_price_date := 0
	if last_point.X1 != 0 {
		start_price_date = int(last_point.X1)
	}

	log.Println("가격조회 시작일:", start_price_date, last_point)

	price_dao := dao.PriceDao{}
	o.PriceList = price_dao.Find(code, start_price_date)

}

// GTYPE별 각각의 BOUND_POINT 구하기
func (o *BoundCodeGtype) GetPointGTYPE() {

	loop_cnt := len(o.PriceList)
	log.Println("GetPointGTYPE 시작, price목록수:", loop_cnt)
	if loop_cnt <= 1 {
		return
	}

	keep_cnt := 0
	start_X1 := uint(o.PriceList[0].Date)
	start_Y1 := o.SwitchPrice(0)

	cur_p := o.SwitchPrice(0)
	ago_p := o.SwitchPrice(1)
	cur_g_way := GetPointGTYPE_Get_Gway(cur_p, ago_p)

	write_cnt := 0
	for i := 0; i < loop_cnt-1; i++ {

		p_cur := o.SwitchPrice(i)
		p_age := o.SwitchPrice(i + 1)
		res := GetPointGTYPE_Swith_Gway(p_cur, p_age, cur_g_way)
		if !res {
			keep_cnt++
		} else {

			//bound 포인트 찾음.
			var bp = model.Point{}
			bp.X1 = start_X1
			bp.Y1 = start_Y1

			bp.X2 = uint(o.PriceList[i].Date)
			bp.Y2 = o.SwitchPrice(i)
			bp.X_tick = uint(keep_cnt)
			bp.Y_minus = bp.Y2 - bp.Y1
			bp.Y_Percent = float32(float64(bp.Y_minus / bp.Y2 * 100))
			test := fmt.Sprintf("%v", bp.Y_Percent)
			if strings.Contains(test, "Inf") {
				bp.Y_Percent = 0
			}

			// 파일쓰기.
			o.PointList = append(o.PointList, bp)

			// 이어쓰기 위해 갱신
			start_X1 = uint(o.PriceList[i].Date)
			start_Y1 = o.SwitchPrice(i)
			keep_cnt = 0
			cur_p = o.SwitchPrice(i)
			ago_p = o.SwitchPrice(i + 1)
			cur_g_way = GetPointGTYPE_Get_Gway(cur_p, ago_p)

			write_cnt++
		}
	}
}

func GetPointGTYPE_Swith_Gway(p_cur float32, p_age float32, cur_g_way string) bool {
	switch cur_g_way {
	case "eq":
		if p_cur > p_age {
			cur_g_way = "down"
		} else if p_cur < p_age {
			cur_g_way = "up"
		}

	}
	exit1 := cur_g_way == "down" && p_cur > p_age
	exit2 := cur_g_way == "up" && p_cur < p_age

	if exit1 || exit2 {
		return true
	}
	return false
}

func GetPointGTYPE_Get_Gway(cur_price float32, ago_price float32) string {
	g_way := ""
	if cur_price > ago_price {
		g_way = "up"
	} else if cur_price < ago_price {
		g_way = "down"
	} else if cur_price == ago_price {
		g_way = "eq"
	} else {
		panic("머냐")
	}
	return g_way
}

func (o *BoundCodeGtype) SwitchPrice(i int) float32 {
	switch o.Gtype {
	case c.G_TYPE_LOW:
		return o.PriceList[i].LowPrice
	case c.G_TYPE_HIGH:
		return o.PriceList[i].HighPrice
	case c.G_TYPE_CLOSE:
		return o.PriceList[i].ClosePrice
	default:
		//c.G_TYPE_OPEN
		return o.PriceList[i].OpenPrice

	}
}

// GTYPE별 BOUND 저장.
func (o *BoundCodeGtype) Save(code string) {

	docName := code + "_" + o.Gtype
	relpace_dao := dao.Relpace{}
	relpace_dao.SetColl(c.DB_BOUND, docName)
	var filter []interface{}
	var data []interface{}
	for i := range o.PointList {
		filter = append(filter, bson.M{"_id": o.PointList[i].X1})
		data = append(data, o.PointList[i])
	}
	relpace_dao.Data = data
	relpace_dao.Filter = filter
	if len(relpace_dao.Data) > 1 {
		if err := relpace_dao.Run(); err != nil {
			panic(err)
		}
	}

}
func (o *BoundCodeGtype) SQLFormat(idx int) [7]string {
	i := o.PointList[idx]

	arr := [7]string{}
	arr[0] = fmt.Sprintf("%d", i.X1)
	arr[1] = fmt.Sprintf("%.3f", i.Y1)
	arr[2] = fmt.Sprintf("%d", i.X2)
	arr[3] = fmt.Sprintf("%.3f", i.Y2)
	arr[4] = fmt.Sprintf("%.3f", i.Y_minus)
	arr[5] = fmt.Sprintf("%.3f", i.Y_Percent)
	arr[6] = fmt.Sprintf("%d", i.X_tick)

	return arr
	//fmt.Sprintf(format,		i.Date, i.OpenPrice, i.HighPrice, i.LowPrice, i.ClosePrice,		i.Volume, i.ForeignerBurnoutRate)
}
