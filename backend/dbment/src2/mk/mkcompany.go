package mk

import (
	"bufio"
	"bytes"
	"fmt"
	"math"
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

		for _, item := range cd.List[:15] {
			f.Write(file, CSV(item))
		}

		wf.Close()
	}
}

func CSV(p model.Price) string {
	v := fmt.Sprintf("%v,%v,%v,%v,%v,%v,%v",
		p.Date,
		p.OpenPrice,
		p.HighPrice,
		p.LowPrice,
		p.ClosePrice,
		p.Volume,
		p.ForeignerBurnoutRate,
	)

	if len(v) < c.REPEAT_CNT {
		v += strings.Repeat(c.REPEAT_STR, c.REPEAT_CNT-len(v))
	}

	return v
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
		r := 20

		rf := ReadFile{
			InPage: p,
			InRows: r,
			InFile: f,
		}
		res := rf.GetRead()

		println("=========res=============\n", len(res))
		fmt.Printf("%v<--\n", res)
	}
}

type ReadBuffer struct {
	start       int
	end         int
	size        int
	seek_offset int64
}

type ReadFile struct {
	InPage     int
	InRows     int
	InFile     *os.File
	readBuffer ReadBuffer

	total_buffer int
	total_page   int
	total_rows   int

	row_buffer int
}

func (o *ReadFile) GetRead() []string {
	res := []string{}
	o.SetFileInfo()
	if o.SetReadBuffer() {
		res = o.Loop()
	}
	return res
}

func (o *ReadFile) Loop() []string {
	res := []string{}

	_, err := o.InFile.Seek(o.readBuffer.seek_offset, 2)
	if err != nil {
		println(err)
	}
	check(err)
	rb := make([]byte, o.readBuffer.size)
	_, err = o.InFile.Read(rb)
	check(err)

	arr := rb
	for {
		in := new(bytes.Buffer)
		in.WriteString(string(arr))
		out := new(bytes.Buffer)
		x, err := in.ReadBytes('\n')
		if err != nil {
			//check(err)
			break
		}
		out.Write(x)
		str_out := out.String()
		fmt.Printf("str_out:%s \n", str_out)
		if !strings.Contains(str_out, c.REPEAT_STR) {

			fmt.Printf("처리할 문자열에 %s 가 없음.\n", c.REPEAT_STR)
			fmt.Printf("처리할 문자열:%s \n", str_out)
			fmt.Printf("파일명:%s \n", o.InFile.Name())
			panic(o.InFile.Name())
		} else {
			str_out = strings.Replace(str_out, c.REPEAT_STR, "", -1)
			res = append(res, str_out)
		}

		arr = arr[len(x):]

	}

	return res
}

func (o *ReadFile) SetReadBuffer() bool {

	req_buffer_size := o.InRows * o.row_buffer
	req_buffer_start_point := (o.InPage - 1) * req_buffer_size
	req_buffer_end_point := req_buffer_start_point + req_buffer_size
	seek_offset := int64(req_buffer_end_point) * -1
	if req_buffer_start_point > o.total_buffer {
		return false
	} else if req_buffer_end_point > o.total_buffer {
		req_buffer_size = o.total_buffer - req_buffer_start_point
		req_buffer_end_point = o.total_buffer
		seek_offset = int64(o.total_buffer) * -1
	}

	o.readBuffer = ReadBuffer{
		start:       req_buffer_start_point,
		end:         req_buffer_end_point,
		size:        req_buffer_size,
		seek_offset: seek_offset,
	}
	return true
}

func (o *ReadFile) SetFileInfo() {
	o.row_buffer = c.REPEAT_CNT + 1

	fi, err := o.InFile.Stat()
	if err != nil {
		fmt.Printf("The file is %d bytes long", fi.Size())
		panic(err)
	}
	o.total_buffer = int(fi.Size())
	o.total_rows = o.total_buffer / o.row_buffer
	if o.total_buffer%o.row_buffer != 0 {
		panic("파일 내용 확인필요.")
	}
	o.total_page = int(math.Ceil(float64(o.total_rows) / float64(o.InRows)))
}

// func read_csv(page int, rowCnt int, f *os.File) []string {
// 	res := []string{}

// 	fi, err := f.Stat()
// 	if err != nil {
// 		fmt.Printf("The file is %d bytes long", fi.Size())
// 		panic(err)
// 	}
// 	row_buffer := c.REPEAT_CNT + 1
// 	total_buffer := int(fi.Size())
// 	total_rows := total_buffer / row_buffer
// 	if total_buffer%row_buffer != 0 {
// 		panic("파일 내용 확인필요.")
// 	}
// 	total_page := math.Ceil(float64(total_rows) / float64(rowCnt))

// 	fmt.Printf("file-total_page		: %v \n", total_page)
// 	fmt.Printf("file-total_rows		: %d \n", total_rows)

// 	rb := ReadBuffer{
// 		Start: (page - 1) * row_buffer * rowCnt,
// 		End:   (page-1)*row_buffer*rowCnt + row_buffer*rowCnt,
// 		Size:  (page-1)*row_buffer*rowCnt + row_buffer*rowCnt,
// 	}

// 	seek_offset := int64(rb.Size) * -1

// 	fmt.Printf("total_buffer		: %d \n", total_buffer)
// 	fmt.Printf("total_rows		: %d \n", total_rows)
// 	fmt.Printf("read_buffer_start: %d \n", rb.Start)
// 	fmt.Printf("read_buffer_end: %d \n", rb.End)

// 	if int(total_page) < page {
// 		return res
// 	} else if int(total_page) == page {

// 		rb.End = total_buffer //read_buffer_start + (total_buffer-read_buffer_start)/row_buffer
// 		rb.Size = total_buffer - rb.Start
// 		seek_offset = int64(rb.End) * -1
// 		rowCnt = (total_buffer - rb.Start) / row_buffer
// 	} else {

// 	}
// 	fmt.Printf("========= \n")
// 	fmt.Printf("row     : %d \n", rowCnt)
// 	fmt.Printf("read_buffer_size: %d \n", rb.Size)
// 	fmt.Printf("read_buffer_end: %d \n", rb.End)
// 	fmt.Printf("seek_offset: %d \n", seek_offset)

// 	_, err = f.Seek(seek_offset, 2)
// 	if err != nil {
// 		println(err)
// 	}
// 	check(err)
// 	b2 := make([]byte, rb.Size)
// 	_, err = f.Read(b2)
// 	check(err)

// 	arr := b2
// 	idx := 0
// 	for {
// 		in := new(bytes.Buffer)
// 		in.WriteString(string(arr))
// 		out := new(bytes.Buffer)
// 		x, err := in.ReadBytes('\n')

// 		out.Write(x)
// 		str_out := out.String()
// 		fmt.Printf("str_out:%s \n", str_out)
// 		if !strings.Contains(str_out, c.REPEAT_STR) {

// 			fmt.Printf("처리할 문자열에 %s 가 없음.\n", c.REPEAT_STR)
// 			fmt.Printf("처리할 문자열:%s \n", str_out)
// 			fmt.Printf("파일명:%s \n", fi.Name())
// 			panic(fi.Name())
// 		} else {
// 			str_out = strings.Replace(str_out, c.REPEAT_STR, "", -1)
// 			res = append(res, str_out)
// 		}

// 		arr = arr[len(x):]

// 		if err != nil {
// 			check(err)
// 			break
// 		}
// 		idx++
// 		if idx >= rowCnt {
// 			break
// 		}
// 	}

// 	return res
// }

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
