package model

import (
	"bytes"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

type ReadBuffer struct {
	start_point       int
	end_point         int
	read_size         int
	seek_offset_point int64
}

func (o *ReadBuffer) set(start_point int, end_point int, read_size int, seek_offset_point int64) {
	o.start_point = start_point
	o.end_point = end_point
	o.read_size = read_size
	o.seek_offset_point = seek_offset_point
}

type ReadFile struct {
	Object     string
	Whence     int
	InPage     int
	InRows     int
	InFile     *os.File
	readBuffer ReadBuffer

	total_buffer int
	total_page   int
	total_rows   int

	row_buffer int

	repeat_cnt int
	repeat_str string
}

func (o *ReadFile) init() {
	if o.Object == c.PRICE {
		o.repeat_cnt = c.REPEAT_CNT_PRICE
		o.repeat_str = c.REPEAT_STR_PRICE
	} else if o.Object == c.BOUND {
		o.repeat_cnt = c.REPEAT_CNT_BOUND
		o.repeat_str = c.REPEAT_STR_BOUND
	}
	if o.InRows == 0 {
		o.InRows = 1
	}
}

/*
	startDat 부터 마지막 까지 조회.
*/
func (o *ReadFile) GetList(startDate int) []string {
	res := []string{}
	o.loadFileInfo()
	o.SetSeekOffset_List(startDate)
	//log.Println(fmt.Sprintf("SetSeekOffset_List: %#v \n", o))
	res = o.readLineLoop()
	return res
}

/*
	마지막줄 조회
*/
func (o *ReadFile) GetLastLine() []string {
	o.Whence = os.SEEK_END
	res := []string{}
	o.loadFileInfo()
	if o.SetBufferLastLine() {
		res = o.readLineLoop()
	}
	return res
}

/*
	페이징 조회
*/
func (o *ReadFile) GetPaging() []string {
	res := []string{}
	o.loadFileInfo()
	if o.SetBufferPaging() {
		res = o.readLineLoop()
	}
	return res
}

/*
	파일에 offset 만큼 읽어서 반환
*/
func (o *ReadFile) setSeekOffset() []byte {
	if _, err := o.InFile.Seek(o.readBuffer.seek_offset_point, o.Whence); err != nil {
		log.Println("파일 읽기 실패: setSeekOffset: seek 설정 실패")
		check(err)
	}
	arr := make([]byte, o.readBuffer.read_size)
	if _, err := o.InFile.Read(arr); err != nil {
		log.Println("파일 읽기 실패: setSeekOffset: seek ")
		fmt.Printf("ReadFile : %#v \n", o)
		check(err)
	}

	return arr
}

/*
	한줄 읽기
*/
func (o *ReadFile) readLine(rbuf []byte) string {
	res := ""

	in := new(bytes.Buffer)
	out := new(bytes.Buffer)

	in.WriteString(string(rbuf))
	readBytes, err := in.ReadBytes('\n')
	if err != nil {
		return res
	}

	out.Write(readBytes)
	str_out := out.String()

	if !strings.Contains(str_out, o.repeat_str) {

		fmt.Printf("처리할 문자열에 %s 가 없음.\n", o.repeat_str)
		fmt.Printf("처리할 문자열:%s \n", str_out)
		fmt.Printf("파일명:%s \n", o.InFile.Name())
		panic(o.InFile.Name())
	} else {
		str_out = strings.Replace(str_out, o.repeat_str, "", -1)
		str_out = strings.Replace(str_out, "\n", "", -1)
		res = str_out
	}

	return res
}

/*
	한줄 읽기 반복문
*/
func (o *ReadFile) readLineLoop() []string {
	res := []string{}
	arr := o.setSeekOffset()

	for {
		str := o.readLine(arr)
		if str == "" {
			break
		}
		res = append(res, str)
		arr = arr[o.row_buffer:]
	}

	return res
}

/*
	특정일 이후 목록 반환하기 위해 사용하는 부분함수
*/
func (o *ReadFile) SetSeekOffset_List_Get() int {

	arr := o.setSeekOffset()
	str := o.readLine(arr)
	arr_str := strings.Split(str, ",")
	line0, _ := strconv.ParseInt(arr_str[0], 0, 32)

	return int(line0)

}

/*
	시작점 설정: 특정일 이후 조회
*/
func (o *ReadFile) SetSeekOffset_List(start_date int) {

	if start_date != 0 {
		p_start := 0
		p_end := o.total_buffer
		size := o.row_buffer
		seek_offset := &o.readBuffer.seek_offset_point
		offset := *seek_offset
		offset = int64(o.total_rows * o.row_buffer * -1 / 2)
		o.Whence = os.SEEK_END

		//log.Println("??:", offset)
		//log.Println(start_date, "가 어디에 있을까?")
		idx := 0
		for {
			idx++
			if o.total_buffer < idx {
				log.Println("너무 많이 반복함.")
				break
			}
			if offset%int64(o.row_buffer) != 0 {
				log.Println("offset이 한줄이 안됨.")
				break
			}

			o.readBuffer.set(
				0,
				0,
				size,
				offset,
			)
			line0 := o.SetSeekOffset_List_Get()
			//log.Println("찾는값:", start_date, ",찾은값", line0)
			next_lines := offset / int64(o.row_buffer)
			select_line := next_lines / 2

			if p_end < p_start {
				select_line = next_lines / 3
			}
			select_buffer := select_line * int64(o.row_buffer)

			if line0 < start_date {
				p_start = int(offset * -1)
				offset = int64(offset - select_buffer)

			} else if line0 > start_date {
				p_end = int(offset * -1)
				offset = int64(offset + select_buffer)

			}

			if start_date == line0 {
				o.readBuffer.read_size = o.total_buffer + int(offset)
				break
			}
		}
	} else {
		o.Whence = os.SEEK_SET
		o.readBuffer.set(
			0,
			o.total_buffer,
			o.total_buffer,
			0,
		)

		//log.Println("전부조회네", o.readBuffer)
	}

}

/*
	시작점 설정: 마지막줄 조회
*/
func (o *ReadFile) SetBufferLastLine() bool {

	if o.total_buffer-o.row_buffer < o.row_buffer {
		return false
	}

	o.readBuffer.set(
		0,
		0,
		o.row_buffer,
		int64(o.row_buffer)*-1,
	)

	return true
}

/*
	시작점 설정: 페이징 조회
*/
func (o *ReadFile) SetBufferPaging() bool {

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
	o.readBuffer.set(
		req_buffer_start_point,
		req_buffer_end_point,
		req_buffer_size,
		seek_offset,
	)

	return true
}

/*
	파일 기본 정보 불러오기
*/
func (o *ReadFile) loadFileInfo() {
	o.init()
	o.row_buffer = o.repeat_cnt + 1

	fi, err := o.InFile.Stat()
	if err != nil {
		fmt.Printf("The file is %d bytes long", fi.Size())
		panic(err)
	}
	o.total_buffer = int(fi.Size())
	o.total_rows = o.total_buffer / o.row_buffer
	if o.total_buffer%o.row_buffer != 0 {
		log.Fatalln("repeat_cnt 불일치 실패 파일명:", fi.Name())
		panic("파일 내용 확인필요.")
	}
	o.total_page = int(math.Ceil(float64(o.total_rows) / float64(o.InRows)))
	//log.Println(fi.Name())
	//log.Println(fmt.Sprintf("파일 기본정보: %#v \n", o))
}

func check(e error) {
	if e != nil {
		log.Fatalln(e)
		panic(e)
	}
}
