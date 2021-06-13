package model

import (
	"bytes"
	"fmt"
	"log"
	"math"
	"os"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

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

	_, err := o.InFile.Seek(o.readBuffer.seek_offset, os.SEEK_END)
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
		//fmt.Printf("str_out:%s \n", str_out)
		if !strings.Contains(str_out, c.REPEAT_STR) {

			fmt.Printf("처리할 문자열에 %s 가 없음.\n", c.REPEAT_STR)
			fmt.Printf("처리할 문자열:%s \n", str_out)
			fmt.Printf("파일명:%s \n", o.InFile.Name())
			panic(o.InFile.Name())
		} else {
			str_out = strings.Replace(str_out, c.REPEAT_STR, "", -1)
			str_out = strings.Replace(str_out, "\n", "", -1)
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
		log.Fatalln("실패 파일명:", fi.Name())
		panic("파일 내용 확인필요.")
	}
	o.total_page = int(math.Ceil(float64(o.total_rows) / float64(o.InRows)))
}
func check(e error) {
	if e != nil {
		log.Fatalln(e)
		panic(e)
	}
}
