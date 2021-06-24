package handler

import (
	"fmt"
	"log"
	"sort"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
)

var upsert_bound bool

func init() {
	upsert_bound = true
}

func BoundHandler() {
	bp := Bound{Obj: c.PRICE}
	bp.Save()

	bm := Bound{Obj: c.MARKET}
	bm.Save()
}

type Bound struct {
	Obj string
}

// BOUND_POINT 저장.
func (o *Bound) Save() {

	//코드목록 조회
<<<<<<< HEAD
	selectCode := dao.SelectCode{}
	obj_list := selectCode.All()
=======
	cl := CodeList{}
	if o.Obj == c.PRICE {
		cl.GetCompanyCode()
	} else {
		cl.GetMarketCode()
	}
>>>>>>> postgresql

	for i := range obj_list {
		cc := obj_list[i]
		log.Println("시작:", i, "==>", cc.Code)

<<<<<<< HEAD
		bc := BoundCode{Code: cc.Code}
		bc.LoadPrice()
		bc.GetPoint()

=======
	for i := range cl.List {
		cc := cl.List[i]
		log.Println("==", i, "==", cc.Code, "시작")
		//가격목록 가져왔다.
		bc := BoundCode{
			Obj:  o.Obj,
			Code: cc.Code}
		wg.Add(1)
		go bc.GetPrice(&wg, done)
		<-done
		wg_db.Add(1)
		go bc.SaveBound(&wg_db)
		if i%c.DB_MAX_CONN == 0 {
			wg_db.Wait()
		}
>>>>>>> postgresql
	}

}

type BoundCode struct {
	Obj            string
	Code           string
	BoundCodeGtype []BoundCodeGtype
}

// BOUND_POINT구하기.
<<<<<<< HEAD
func (o *BoundCode) GetPoint() {
	for i := range o.BoundCodeGtype {
		//log.Println("마지막 포인트 찾기:", o.Code)
		bcg := o.BoundCodeGtype[i]
		log.Println(o.Code, "price:", len(bcg.PriceList))
		bcg.GetPointGTYPE()
		log.Println(o.Code, "bound:", len(bcg.PointList))
		bcg.Save(o.Code)
		log.Println(o.Code, "==================================:")
=======
func (o *BoundCode) SaveBound(wg_db *sync.WaitGroup) {
	defer wg_db.Done()
	o.SaveHistBound()
	o.SavePublicBound()
}

func (o *BoundCode) SaveHistBound() {
	for i := range o.BoundCodeGtype {
		o.BoundCodeGtype[i].GetBoundGype()
		o.BoundCodeGtype[i].SaveBoundGype(o.Code)
		log.Println("save-hist-bound:", o.Code, ",price-len:", len(o.BoundCodeGtype[i].PriceList), ",bound-len:", len(o.BoundCodeGtype[i].PointList))
>>>>>>> postgresql
	}
}

func (o *BoundCode) SavePublicBound() {
	b := model.Bound{}
	b.Code = o.Code

	for i := range o.BoundCodeGtype {
		if len(o.BoundCodeGtype[i].PointList) > 0 {
			list := o.BoundCodeGtype[i].PointList
			sort.Slice(list, func(i, j int) bool {
				return list[i].X1 > list[j].X1
			})
			switch o.BoundCodeGtype[i].Gtype {
			case c.G_TYPE_CLOSE:
				b.Cp_X1 = list[0].X1
				b.Cp_Y1 = list[0].Y1
				b.Cp_X2 = list[0].X2
				b.Cp_Y2 = list[0].Y2
				b.Cp_X_tick = list[0].X_tick
				b.Cp_Y_minus = list[0].Y_minus
				b.Cp_Y_Percent = list[0].Y_Percent
			case c.G_TYPE_OPEN:
				b.Op_X1 = list[0].X1
				b.Op_Y1 = list[0].Y1
				b.Op_X2 = list[0].X2
				b.Op_Y2 = list[0].Y2
				b.Op_X_tick = list[0].X_tick
				b.Op_Y_minus = list[0].Y_minus
				b.Op_Y_Percent = list[0].Y_Percent
			case c.G_TYPE_LOW:
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

	err := dao.InsertPublicBound(o.Obj, b, upsert_bound)
	ChkErr(err)
}

// CODE에 해당하는 가격목록 조회.
<<<<<<< HEAD
func (o *BoundCode) LoadPrice() {
	for i := range c.G_TYPE {
		g := c.G_TYPE[i]
		//log.Println("Load===========,", o.Code, ",G_TYPE:", g)
=======
func (o *BoundCode) GetPrice(wg *sync.WaitGroup, done chan bool) {
	defer wg.Done()
	for i := range c.G_TYPE {
		g := c.G_TYPE[i]
		//		log.Println("Load===========,", o.Code, ",G_TYPE:", g)
>>>>>>> postgresql
		gcg := BoundCodeGtype{
			Obj:   o.Obj,
			Gtype: g,
		}
		gcg.GetPrice(o.Code)
		o.BoundCodeGtype = append(o.BoundCodeGtype, gcg)
<<<<<<< HEAD
		//log.Println("Load===========,", o.Code, ",G_TYPE:", g, "==>가격목록수:", len(gcg.PriceList))
=======
		log.Println("get-price,", o.Code, ",G_TYPE:", g, ",len=:", len(gcg.PriceList))
>>>>>>> postgresql
	}
}

type BoundCodeGtype struct {
	Obj       string
	Gtype     string
	PriceList []model.PriceMarket
	PointList []model.Point
}

// GTYPE별 각각의 가격 목록 조회.
<<<<<<< HEAD
func (o *BoundCodeGtype) Load(code string) {

	bound_dao := dao.BoundDao{}
	last_point := bound_dao.LastGtypePoint(code, o.Gtype)
	start_price_date := 0
	if last_point.X1 != 0 {
		start_price_date = int(last_point.X1)
	}

	log.Println("가격조회 시작일:", start_price_date)

	price_dao := dao.PriceDao{}
	o.PriceList = price_dao.Find(code, start_price_date)

=======
func (o *BoundCodeGtype) GetPrice(code string) {

	pmlist, err := dao.GetPriceByLastBound(o.Obj, code, o.Gtype)
	if err != nil {
		log.Println("오류:GetPriceByLastBound ", code, o.Gtype)
	}
	o.PriceList = pmlist
>>>>>>> postgresql
}

// GTYPE별 각각의 BOUND_POINT 구하기
func (o *BoundCodeGtype) GetBoundGype() {

	loop_cnt := len(o.PriceList)
<<<<<<< HEAD
	//log.Println("GetPointGTYPE 시작, price목록수:", loop_cnt)
=======
>>>>>>> postgresql
	if loop_cnt <= 1 {
		return
	}

	keep_cnt := 0
	start_X1 := uint(o.PriceList[0].Date)
	start_Y1 := o.SwitchPrice(0)

	cur_p := o.SwitchPrice(0)
	ago_p := o.SwitchPrice(1)
	cur_g_way := GetBoundGype_Get_Gway(cur_p, ago_p)

	write_cnt := 0
	for i := 0; i < loop_cnt-1; i++ {

		p_cur := o.SwitchPrice(i)
		p_age := o.SwitchPrice(i + 1)
		res := GetBoundGype_Swith_Gway(p_cur, p_age, cur_g_way)
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
			cur_g_way = GetBoundGype_Get_Gway(cur_p, ago_p)

			write_cnt++
		}
	}
}

func GetBoundGype_Swith_Gway(p_cur float32, p_age float32, cur_g_way string) bool {
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

func GetBoundGype_Get_Gway(cur_price float32, ago_price float32) string {
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
		return float32(o.PriceList[i].LowPrice)
	case c.G_TYPE_HIGH:
		return float32(o.PriceList[i].HighPrice)
	case c.G_TYPE_CLOSE:
		return float32(o.PriceList[i].ClosePrice)
	default:
		//c.G_TYPE_OPEN
		return float32(o.PriceList[i].OpenPrice)

	}
}

// GTYPE별 BOUND 저장.
<<<<<<< HEAD
func (o *BoundCodeGtype) Save(code string) {

	bound_dao_insert := dao.BoundDaoInsert{Code: code}

	var data []interface{}
	i := 0
	for i = range o.PointList {
		data = append(data, o.PointList[i])
	}
	bound_dao_insert.Data = bson.M{"$push": bson.M{o.Gtype: bson.M{"$each": data, "$sort": bson.M{"x1": 1}}}}
	if i > 1 {
		if err := bound_dao_insert.Run(); err != nil {
			panic(err)
		}
	}

=======
func (o *BoundCodeGtype) SaveBoundGype(code string) {
	err := dao.InsertHistBound(o.Obj, code, o.Gtype, o.PointList, upsert_bound)
	ChkErr(err)
>>>>>>> postgresql
}
