package test

import (
	"log"
	"math"
	"os"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils"
)

/*

기존 Bound_Poing 는 최신 데이터에서 시작에 반등 지점을 찾았다면
이제는 해당종목의 반등파일에서 마지막 반등일 찾은다음.
마지막 반등일 부터 현재 까지의 가격 을 조회후에 반등포인트를 계산하고
해당종목의 반등파일에 이어쓰기를 하고. 반등포인트를 리턴해준다.

그리고 반드포인트인 계산은 종가기준이다.
저가기준 고가 기준 도 계산이 필요하다.
그럴려면
data/dataset/bound_point/<code>/저가
data/dataset/bound_point/<code>/고가
data/dataset/bound_point/<code>/종가
로 구분하고 없으면 만들고 있으면 이어 쓰기로 가서 마지막 줄을 가져온후 첫번째 쉼표까지의 바이트를 스트링으로
변환하여 마지막 반등일을 얻고 반등일 이후의 가격 데이터를 가격파일에서 조회 후에 반등포인트를 계산후
반등파일을 갱신하고 반등일을 반환한다.

문제1. 가격조회 파일에서 특정부분을 찾는 방법
	1페이지씩 조회후에 비교해야지머
변경1. 반등지점 찾아도 계속 찾아야한다. 데이터가 없을때까지.





*/
type BoundHandler struct {
	Object string
	// 종가, 저가,고가 low,high,close,open
	G_type   string
	readDir  string
	boundDir string
}

func (o *BoundHandler) init() {
	if o.Object == c.PRICE {
		o.readDir = c.DIR_PRICE
		o.boundDir = c.DIR_BOUND_PRICE
	} else if o.Object == c.MARKET {
		o.readDir = c.DIR_MARKET
		o.boundDir = c.DIR_BOUND_MARKET
	}

}

func (o *BoundHandler) Processing() {
	o.init()
	o.Loop()
}

type GTYPE struct {
	f         *os.File
	fnm       string
	code      string
	price_dir string
	G_TYPE    string
	StartDate int
}

/*
	1. bound_point 마지막 줄 읽기.

	2. 읽어서 있으면 마지막 일자 가져와 가격시작일자로 셋팅 없으면 가격 시작일자는 처음이지.

	3. 가격 처음 부터 페이징으로 데이터 읽어와 bound_point 찾으면 저장 후 이어서.

	4. 못찾으면 다음페이징 호출 읽어와 bound_point 찾으면 저장 후 이어서. 가격줄이 마지막 줄이 될때까지.

	5. 다되면  price 닫고 bound_point 닫고

	6. 가격 데이터 읽어와 저장하기 메모리에. 고가,저가,종가 기준으로 한종목당 3개의 bound_point 돌리기.

	7. 하나의 가격 데이터를 3군데의 bound_point에서 호출하고 가격 데이터의 추가 데이터를 요구함.

	8. 가격정보 시작일자는 저가,고가,종가 bound_point 함수별로 다름.

	9. 그러므로 저가,고가,종가의 마지막줄 시작일이 가장 작은것으로 선정해야됨.

	10. 한군데라도 없으면 0부터 시작.


*/
func (o *BoundHandler) Loop() {
	list := model.CodeArr.List
	//	wg := sync.WaitGroup{}
	for _, code := range list {
		//wg.Add(1)
		func(code string) {
			//defer wg.Done()

			// code에 해당하는 bound_point파일의 마지막 줄에서  일자 뽑기
			// 고가, 저가, 종가 별 일자중 제일 작은 일자를 선택해

			f_bound_gtype_arr := []GTYPE{}
			for k := range c.G_TYPE {
				g := GTYPE{}
				g.code = code
				g.price_dir = o.readDir + code
				uf := utils.File{}
				g.fnm = o.boundDir + code + "/" + k
				g.f = uf.AppendFile(g.fnm)
				g.G_TYPE = k
				f_bound_gtype_arr = append(f_bound_gtype_arr, g)
			}
			// 가격 시작일자 찾기
			for i := range f_bound_gtype_arr {
				item := &f_bound_gtype_arr[i]
				rf := model.ReadFile{
					Object: c.BOUND,
					InFile: item.f,
				}
				arr := rf.GetLastLine()
				//log.Println("마지막줄: ", arr)
				if len(arr) > 0 {
					p := model.StringToPoint(arr[0])
					item.StartDate = int(p.X1)
					//log.Println("시작일: ", item.StartDate)
				}
			}

			MakeCSV(f_bound_gtype_arr)

		}(code)

	}
	//wg.Wait()
}

func string_to_price(list []string) []model.Price {
	res := []model.Price{}

	// for i := len(list) - 1; i >= 0; i-- {
	// 	res = append(res, model.StringToPrice(list[i]))
	// }

	for _, p := range list {
		res = append(res, model.StringToPrice(p))
	}
	return res
}

func check(e error) {
	if e != nil {
		log.Fatalln(e)
		panic(e)
	}
}

func MakeCSV(g_arr []GTYPE) {
	for i := 0; i < len(g_arr); i++ {
		FindHighPoint_out(g_arr[i])
	}
}
func FindHighPoint(arr []model.Price) model.Point {
	var bp = model.Point{}

	loop_cnt := len(arr)
	if loop_cnt <= 1 {
		return bp
	}
	keep_cnt := 0

	bp.X2 = uint(arr[0].Date)
	bp.Y2 = arr[0].ClosePrice

	cur_p := arr[0].ClosePrice
	ago_p := arr[0+1].ClosePrice
	cur_g_way := graph_way(cur_p, ago_p)

	for i := 0; i < loop_cnt-1; i++ {

		bp.X1 = uint(arr[i].Date)
		bp.Y1 = arr[i].ClosePrice
		bp.X_tick = uint(keep_cnt)

		cur_p := arr[i].ClosePrice
		ago_p := arr[i+1].ClosePrice
		switch cur_g_way {
		case "eq":
			if cur_p > ago_p {
				cur_g_way = "down"
				keep_cnt = 0
			} else if cur_p < ago_p {
				cur_g_way = "up"
				keep_cnt = 0
			}

		}

		exit1 := cur_g_way == "down" && cur_p > ago_p
		exit2 := cur_g_way == "up" && cur_p < ago_p
		exit3 := i > loop_cnt

		if exit1 || exit2 || exit3 {
			// log.Println("exit1=", exit1)
			// log.Println("exit2=", exit2)
			// log.Println("exit3=", exit3)
			break
		}
		keep_cnt = keep_cnt + 1
	}

	bp.Y_minus = bp.Y2 - bp.Y1
	bp.Y_Percent = float32(math.Round(float64(bp.Y2/bp.Y1*100*100)) / 100)

	return bp
}

func SwitchPrice(g_type string, p model.Price) float32 {

	switch g_type {
	case c.G_TYPE_LOW:
		return p.LowPrice
	case c.G_TYPE_HIGH:
		return p.HighPrice
	case c.G_TYPE_CLOSE:
		return p.ClosePrice
	default:
		//c.G_TYPE_OPEN
		return p.OpenPrice

	}
}

func FindHighPoint_out(item GTYPE) {
	fs, _ := item.f.Stat()
	fsize := fs.Size()
	uf := utils.File{}
	f_price := uf.Open(item.price_dir)
	//log.Println(item.price_dir)
	rf := model.ReadFile{
		Object: c.PRICE,
		InFile: f_price,
	}

	res := rf.GetList(item.StartDate)
	arr := string_to_price(res)
	//log.Println("가격 시작일:", item.StartDate, "가격목록수=", len(arr))
	//log.Println(arr)

	g_type := item.G_TYPE

	//log.Println("FindHighPoint_out 시작", g_type)
	loop_cnt := len(arr)
	if loop_cnt <= 1 {
		return
	}

	keep_cnt := 0
	start_X1 := uint(arr[0].Date)
	start_Y1 := SwitchPrice(g_type, arr[0])

	cur_p := SwitchPrice(g_type, arr[0])
	ago_p := SwitchPrice(g_type, arr[0+1])
	cur_g_way := graph_way(cur_p, ago_p)

	write_cnt := 0
	for i := 0; i < loop_cnt-1; i++ {

		p_cur := SwitchPrice(g_type, arr[i])
		p_age := SwitchPrice(g_type, arr[i+1])
		res := FindHighPoint_in(p_cur, p_age, cur_g_way)
		if res == false {
			keep_cnt++
		} else {

			//bound 포인트 찾음.
			var bp = model.Point{}
			bp.X1 = start_X1
			bp.Y1 = start_Y1

			bp.X2 = uint(arr[i].Date)
			bp.Y2 = SwitchPrice(g_type, arr[i])
			bp.X_tick = uint(keep_cnt)
			bp.Y_minus = bp.Y2 - bp.Y1
			bp.Y_Percent = float32(math.Round(float64(bp.Y1/bp.Y2*100)) / 100)

			// 파일쓰기.
			uf := utils.File{}
			str := bp.CSV()
			if fsize != 0 && write_cnt == 0 {
				uf.LastLineWrite(item.fnm, c.REPEAT_CNT_BOUND, str+"\n")
			} else {
				uf.Write(item.f, str)
			}

			// 이어쓰기 위해 갱신
			start_X1 = uint(arr[i].Date)
			start_Y1 = SwitchPrice(g_type, arr[i])
			keep_cnt = 0
			cur_p = SwitchPrice(g_type, arr[i])
			ago_p = SwitchPrice(g_type, arr[i+1])
			cur_g_way = graph_way(cur_p, ago_p)

			write_cnt++
		}
	}
}

func FindHighPoint_in(p_cur float32, p_age float32, cur_g_way string) bool {
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
		// log.Println("exit1=", exit1)
		// log.Println("exit2=", exit2)
		// log.Println("exit3=", exit3)
		return true
	}
	return false
}

func graph_way(cur_price float32, ago_price float32) string {
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