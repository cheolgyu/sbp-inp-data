package mk

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock/backend/dbment/src2/c"
	"github.com/cheolgyu/stock/backend/dbment/src2/model"
	"github.com/cheolgyu/stock/backend/dbment/src2/utils"
	"github.com/cheolgyu/stock/backend/dbment/src2/utils/download"
	xlsx "github.com/tealeg/xlsx/v3"
)

var CodeArr []string

type MakeCompany struct {
	Object    string
	downFile  string
	writeFile string
}

func (o *MakeCompany) init() {
	if c.DownloadCompany {
		// 엑셀다운 (상세,상태)
		company := download.Data_krx{
			Object: o.Object,
		}
		company.Run()
	}
	if o.Object == c.COMPANY_DETAIL {
		o.downFile = c.DOWNLOAD_DIR_COMPANY_DETAIL + c.DOWNLOAD_FILENAME_COMPANY_DETAIL
		o.writeFile = c.DIR_COMPANY_DETAIL + c.DIR_FILENAME_COMPANY_DETAIL
	} else if o.Object == c.COMPANY_STATE {
		o.downFile = c.DOWNLOAD_DIR_COMPANY_STATE + c.DOWNLOAD_FILENAME_COMPANY_STATE
		o.writeFile = c.DIR_COMPANY_STATE + c.DIR_FILENAME_COMPANY_STATE
	}
}

func (o *MakeCompany) Processing() {
	o.init()
	o.SetArray()
}

func (o *MakeCompany) SetArray() {

	xlFile, err := xlsx.OpenFile(o.downFile)
	if err != nil {
		panic(err)
	}

	f := utils.File{}
	wf := f.CreateFile(o.writeFile)
	defer wf.Close()

	sheet := xlFile.Sheets[0]

	fmt.Println("Max row is", sheet.MaxRow)

	for i := 0; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		code, content := model.RowGet(row)
		if o.Object == c.COMPANY_DETAIL {
			CodeArr = append(CodeArr, code)
		}
		f.Write(wf, content)
	}
}

type MakePrice struct {
	StartDate string
	EndDate   string
	Object    string
	downDir   string
	writeDir  string
}

func (o *MakePrice) init() {
	if o.Object == c.PRICE {
		o.downDir = c.DOWNLOAD_DIR_PRICE
		o.writeDir = c.DIR_PRICE
	} else if o.Object == c.MARKET {
		o.downDir = c.DOWNLOAD_DIR_MARKET
		o.writeDir = c.DIR_MARKET
	}
}
func (o *MakePrice) Processing() {
	o.init()
	o.SetArray()
}
func (o *MakePrice) SetArray() {
	list := CodeArr[1:2]

	for _, code := range list {
		nc := download.NaverChart{
			StartDate: o.StartDate,
			EndDate:   o.EndDate,
			ChartData: download.ChartData{
				Object: o.Object,
				Code:   code,
			},
		}

		nc.Run()

		cd := nc.ChartData
		f := utils.File{}
		wf := f.CreateFile(o.writeDir + code)
		wf.Close()

		file, err := os.OpenFile(o.writeDir+code, os.O_RDWR|os.O_APPEND, 0644)
		check(err)

		for _, item := range cd.List[:3] {
			f.Write(file, CSV(item))
		}

		wf.Close()
	}
}

func CSV(p model.Price) string {
	return fmt.Sprintf("%v,%v,%v,%v,%v,%v,%v",
		p.Date,
		p.OpenPrice,
		p.HighPrice,
		p.LowPrice,
		p.ClosePrice,
		p.Volume,
		p.ForeignerBurnoutRate,
	)
}

type MakeHihgPoint struct {
	Object   string
	writeDir string
}

func (o *MakeHihgPoint) init() {
	if o.Object == c.PRICE {
		o.writeDir = c.DIR_PRICE
	} else if o.Object == c.MARKET {
		o.writeDir = c.DIR_MARKET
	}
}

func (o *MakeHihgPoint) Processing() {
	o.init()
	o.Loop()
}

func (o *MakeHihgPoint) Loop() {
	list := CodeArr[1:2]

	for _, code := range list {

		fnm := o.writeDir + code
		f, e := os.Open(fnm)
		//defer f.Close()
		fmt.Printf("FNM: ./%s\n", fnm)
		check(e)
		p := 1
		r := 10

		res := read_csv(p, r, f)

		println("=========res=============", res)

		// b1 := make([]byte, 39)
		// n1, err := f.Read(b1)
		// check(err)
		// fmt.Printf("%d bytes: %s<--\n", n1, string(b1))
		// fmt.Printf("b1 %v<--\n", b1)

		// println("=========ReadAtLeast=============")
		// o3, err := f.Seek(0, 1)
		// check(err)
		// b3 := make([]byte, 10)
		// n3, err := io.ReadAtLeast(f, b3, 2)
		// check(err)
		// fmt.Printf("%d bytes @ %d: %s\n", n3, o3, string(b3))

	}
}

func read_csv(page int, row int, f *os.File) []string {
	res := []string{}

	fi, err := f.Stat()
	if err != nil {
		fmt.Printf("The file is %d bytes long", fi.Size())
		panic(err)
	}
	bs := 100
	rs := (page - 1) * bs

	println("=========Seek=============")
	o2, err := f.Seek(int64(rs*-1), 2)
	check(err)
	b2 := make([]byte, rs)
	n2, err := f.Read(b2)
	check(err)
	fmt.Printf("%d bytes @ %d: %s<--\n", n2, o2, string(b2))
	fmt.Printf(" #%s<--", b2)

	arr := b2
	idx := 0
	for {
		in := new(bytes.Buffer)
		in.WriteString(string(arr))
		out := new(bytes.Buffer)
		x, err := in.ReadBytes('\n')

		out.Write(x)
		str_out := out.String()

		fmt.Printf(" =============%v===============<--\n", idx)
		println("str_out=", str_out)

		// if strings.Split() {

		// }

		arr = arr[len(x):]

		if err != nil || len(arr) <= 0 {
			//println("=========오류=============", err)
			break
		}
		idx++
		if idx > 10 {
			break
		}
	}

	return res
}

func read(f *os.File, list []model.Point) {
	idx := 0
	for {
		idx++
		reader := bufio.NewReader(f)
		line, isPrefix, err := reader.ReadLine()
		if isPrefix || err != nil || idx > 100 {
			break
		}

		str := string(line)
		arr := strings.Split(str, ",")
		p := model.Point{}

		d, _ := strconv.ParseUint(arr[0], 0, 32)
		p.X1 = uint(d)

		op, _ := strconv.ParseFloat(arr[1], 32)
		p.Y1 = float32(op)

		hp, _ := strconv.ParseUint(arr[2], 0, 32)
		p.X2 = uint(hp)

		lp, _ := strconv.ParseFloat(arr[3], 32)
		p.Y2 = float32(lp)

		cp, _ := strconv.ParseFloat(arr[4], 32)
		p.Y_minus = float32(cp)

		v, _ := strconv.ParseFloat(arr[5], 32)
		p.Y_Percent = float32(v)

		fr, _ := strconv.ParseUint(arr[6], 0, 32)
		p.X_tick = uint(fr)

		list = append(list, p)
	}
}

func check(e error) {
	if e != nil {
		panic(e)
	}
}
func (o *MakeHihgPoint) FindHighPoint() {
	// price/code 파일 열어서
	// 100줄씩 읽기.
	//     파일내용  배열로 만들고
	//     배열 목록을 loop 돌려
	//     high_point  찾기
}

type MakeView struct {
}

func (o *MakeView) SetArray() {
	// GetCodeList((가격,마켓))
	// loop 돌려면 high_point 찾고 state 찾고
}

func (o *MakeView) Loop() {
	// sql 파일 만들고
	// loop 돌려면
	// 		high_point 찾고 state 찾고
	// 		MakeSql()
	// 		NewWriting()

}

func (o *MakeView) MakeSql() {
	// 파일에 한줄씩 쓰고
}

func (o *MakeView) Insert() {
	// 디비 연결해서 파일 실행
}
