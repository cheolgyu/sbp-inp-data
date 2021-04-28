package naver_chart

import (
	"fmt"
	"bytes"
    "io/ioutil"
    "net/http"
	"io"
	"os"
)

var (
	short_code    string
)
	
const down_url string = "https://kind.krx.co.kr/corpgeneral/corpList.do"

func Get(short_code string) {
	fmt.Println("download/init/naver_chart.go")
	short_code = short_code

}

