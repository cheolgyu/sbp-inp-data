package handler

import (
	"fmt"
	"log"
	"strings"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
)

var upsert bool

func init() {
	upsert = false
}

func BoundHandler() {
	b := Bound{}
	b.Save()
}

type Bound struct {
}

// BOUND_POINT 저장.
func (o *Bound) Save() {

	//코드목록 조회
	cl := CodeList{}
	cl.SelectAll()

	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	done := make(chan bool)

	for i := range cl.List {
		cc := cl.List[i]
		log.Println("==", i, "==", cc.Code, "시작")
		//가격목록 가져왔다.
		bc := BoundCode{Code: cc.Code}
		wg.Add(1)
		go bc.Load(&wg, done)
		<-done
		wg_db.Add(1)
		go bc.GetPoint(&wg_db)
		if i%10 == 0 {
			wg_db.Wait()
		}
	}
	wg_db.Wait()
	wg.Wait()

}

type BoundCode struct {
	Code           string
	BoundCodeGtype []BoundCodeGtype
}

// BOUND_POINT구하기.
func (o *BoundCode) GetPoint(wg_db *sync.WaitGroup) {
	defer wg_db.Done()
	for i := range o.BoundCodeGtype {
		log.Println("===========GetPoint==", o.Code, "==시작==")
		bcg := o.BoundCodeGtype[i]
		log.Println("===========GetPoint==", o.Code, "price목록수:", len(bcg.PriceList))
		bcg.GetPointGTYPE()
		log.Println("===========GetPoint==", o.Code, "bound목록수:", len(bcg.PointList))
		bcg.Save(o.Code)
	}
}

// CODE에 해당하는 가격목록 조회.
func (o *BoundCode) Load(wg *sync.WaitGroup, done chan bool) {
	defer wg.Done()
	for i := range c.G_TYPE {
		g := c.G_TYPE[i]
		//		log.Println("Load===========,", o.Code, ",G_TYPE:", g)
		gcg := BoundCodeGtype{
			Gtype: g,
		}
		gcg.Load(o.Code)
		o.BoundCodeGtype = append(o.BoundCodeGtype, gcg)
		log.Println("Load===========,", o.Code, ",G_TYPE:", g, "==>가격목록수:", len(gcg.PriceList))
	}
	done <- true
}

type BoundCodeGtype struct {
	Gtype     string
	PriceList []model.PriceStock
	PointList []model.Point
}

// GTYPE별 각각의 가격 목록 조회.
func (o *BoundCodeGtype) Load(code string) {

	list, err := dao.GetPriceByLastBound(code, o.Gtype)
	if err != nil {
		log.Println("오류:GetPriceByLastBound ", code, o.Gtype)
	}
	o.PriceList = list
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
func (o *BoundCodeGtype) Save(code string) {
	err := dao.InsertBoundPoint(code, o.Gtype, o.PointList, upsert)
	ChkErr(err)
}
