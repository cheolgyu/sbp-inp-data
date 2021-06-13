package handler

import (
	"log"
	"math"
	"os"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
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
	Object  string
	readDir string
}

func (o *BoundHandler) init() {
	if o.Object == c.PRICE {
		o.readDir = c.DIR_PRICE
	} else if o.Object == c.MARKET {
		o.readDir = c.DIR_MARKET
	}
}

func (o *BoundHandler) Processing() {
	o.init()
	o.Loop()
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
			// 가격조회 시작일 선정하기

			// 가격 조회: 시작일 기준  한번에 다하자 귀찮다.
			// 시작일 부터 마지막일 까지 가격목록 생성
			// 가격 목록을 find_high_point(code,<고가,저가,종가>)에 주기.
			// find_high_point는 찾는경우 한줄씩 파일에 내용 추가하고.
			// 종료.
			// 결국 이 핸들러는 bound_point csv 만드는 함수.
			// 이 데이터를 어떻게 쓸지는 고민해 봐야겠네.

			// bound_point
			f, e := os.Open(o.readDir + code)
			check(e)
			defer f.Close()
			//fmt.Printf("FNM: ./%s\n", fnm)

			p := 1
			r := 30

			rf := model.ReadFile{
				InPage: p,
				InRows: r,
				InFile: f,
			}
			res := rf.GetRead()
			arr := string_to_price(res)
			log.Println(o.readDir + code)
			model.Set_point(code, FindHighPoint(arr))
		}(code)

	}
	//wg.Wait()
}

func string_to_price(list []string) []model.Price {
	res := []model.Price{}

	for i := len(list) - 1; i >= 0; i-- {
		res = append(res, model.StringToPrice(list[i]))
	}

	return res
}

func check(e error) {
	if e != nil {
		log.Fatalln(e)
		panic(e)
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
