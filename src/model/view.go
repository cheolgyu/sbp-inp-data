package model

import (
	"bufio"
	"fmt"
	"os"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

var CodeArr CodeInfo = CodeInfo{
	List: []string{},
}

type CodeInfo struct {
	List []string
}

/*
Load File c.DIR_COMPANY_DETAIL + c.DIR_FILENAME_COMPANY_DETAIL
*/
func (o *CodeInfo) Load() {
	fnm := c.DIR_COMPANY_DETAIL + c.DIR_FILENAME_COMPANY_DETAIL
	f, err := os.Open(fnm)
	if err != nil {
		panic(err)
	}
	reader := bufio.NewReader(f)
	for {
		line, isPrefix, err := reader.ReadLine()
		if isPrefix || err != nil {
			break
		}
		arr := strings.Split(string(line), ",")
		code := arr[1]
		o.List = append(o.List, code)

	}
	//제목 제외
	o.List = o.List[1:]
}

var ViewInfo DataView

func init() {
	ViewInfo.List = make(map[string]ViewPrice)
}

type DataView struct {
	List    map[string]ViewPrice
	Updated string
}

func Set_point(code string, inp Point) {
	map_v_p := ViewInfo.List[code]
	map_v_p.Point = inp
	ViewInfo.List[code] = map_v_p
}

func (o *DataView) Set_state(code string, inp CompanyState) {
	vp := o.List[code]
	vp.Code = inp.Code
	vp.Name = inp.Name
	vp.State = inp
	o.List[code] = vp
}

func (o *DataView) Write(code string, inp CompanyState) {
	vp := o.List[code]
	vp.Code = inp.Code
	vp.Name = inp.Name
	vp.State = inp
	o.List[code] = vp
}

type ViewPrice struct {
	Code  string
	Name  string
	State CompanyState
	Point Point
}

var Convert_csv_title = "코드,이름,--bound,x1,y1,x2,y2,y-minus,y-percnet,x_tick,--state,매매거래정지,정리매매 종목,관리종목,투자주의환기종목,불성실공시,단일가매매대상 초저유동성종목,상장주식수 부족 우선주,단기과열종목,투자주의종목,투자경고종목"

func (o *ViewPrice) Convert_csv() string {

	str := fmt.Sprintf("%s,%s",
		o.Code,
		o.Name,
	)

	str += fmt.Sprintf(",--bound,%v,%v,%v,%v,%v,%v,%v",
		o.Point.X1,
		o.Point.Y1,
		o.Point.X2,
		o.Point.Y2,
		o.Point.Y_minus,
		o.Point.Y_Percent,
		o.Point.X_tick,
	)

	str += fmt.Sprintf(",--state,%v,%v,%v,%v,%v,%v,%v,%v,%v,%v,%v",
		Btoi(o.State.Stop),
		Btoi(o.State.Clear),
		Btoi(o.State.Managed),
		Btoi(o.State.Ventilation),
		Btoi(o.State.Unfaithful),
		Btoi(o.State.Low_liquidity),
		Btoi(o.State.Lack_listed),
		Btoi(o.State.Overheated),
		Btoi(o.State.Caution),
		Btoi(o.State.Warning),
		Btoi(o.State.Risk),
	)

	return str

}

// true : 1 , flase :0
func Btoi(b bool) int {
	if b {
		return 1
	}
	return 0
}
