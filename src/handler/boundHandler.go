package handler

import (
	"fmt"
	"log"
	"strings"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
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
		log.Println("Load===========,", o.Code, ",G_TYPE:", g)
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
	PriceList []model.Price
	PointList []model.Point
}

// GTYPE별 각각의 가격 목록 조회.
func (o *BoundCodeGtype) Load(code string) {

	bound_schema_nm := c.SCHEMA_NAME_BOUND
	bound_tb_nm := code + "_" + o.Gtype
	price_schema_nm := c.SCHEMA_NAME_PRICE
	price_tb_nm := c.PREFIX_TB_PRICE + code

	conn := db.Conn

	// 없으면 table 생성
	if _, err := conn.Exec("select bound.create_table( $1 ,$2 )", bound_schema_nm, bound_tb_nm); err != nil {
		log.Println("테이블 생성 오류: ", bound_schema_nm, bound_tb_nm)
		log.Println("테이블 생성 오류: ", err)
		panic(err)
	}
	//코드에 해당하는 bound 테이블의 마지막 라인의 x1 조회.
	// 없으면 가격 전체조회. 있으면 x1부터 조회.
	query := fmt.Sprintf(`SELECT * FROM "%s"."%s" WHERE p_date >= 
	( SELECT COALESCE(t.x1, 0) AS x1 FROM ( SELECT 1 tmp, ( SELECT x1 FROM "%s"."%s" ORDER BY x1 DESC LIMIT 1 ) ) t ) `,
		price_schema_nm, price_tb_nm, bound_schema_nm, bound_tb_nm)
	//log.Println(query)
	rows, err := conn.Query(query)
	ChkErr(err)
	defer rows.Close()

	for rows.Next() {
		i := model.Price{}
		if err := rows.Scan(&i.Date, &i.OpenPrice, &i.HighPrice, &i.LowPrice, &i.ClosePrice, &i.Volume, &i.ForeignerBurnoutRate); err != nil {
			log.Fatal(err)
			log.Fatal(err)
			panic(err)
		}
		o.PriceList = append(o.PriceList, i)
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
	}
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

	schema_nm := c.SCHEMA_NAME_BOUND
	tb_nm := code + "_" + o.Gtype

	client := db.Conn
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s" (x1, y1, x2, y2, y_minus, y_percent, x_tick ) VALUES( $1, $2, $3, $4, $5, $6, $7 )`, schema_nm, tb_nm)
	q_insert += fmt.Sprintf(`ON CONFLICT ("x1") DO UPDATE SET y1=$2 ,x2=$3 ,y2=$4 ,y_minus=$5 ,y_percent=$6 ,x_tick=$7`)

	stmt, err := client.Prepare(q_insert)
	if err != nil {

		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	txt := fmt.Sprintf(" %v.%v %v개 저장중.", schema_nm, tb_nm, len(o.PointList))
	log.Println(txt)
	for i := range o.PointList {
		arr := o.SQLFormat(i)
		_, err := stmt.Exec(arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6])
		if err != nil {

			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", o.PointList[i])
			log.Fatal(err)
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
