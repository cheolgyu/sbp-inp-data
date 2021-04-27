package data_krx

import (
	"fmt"
	"bytes"
    "io/ioutil"
    "net/http"
	"io"
	"os"
)
// http://data.krx.co.kr/contents/MDC/MDI/mdiLoader/index.cmd?menuId=MDC0201020103
	
const getcode_url string = "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd"
var (
	fileName2    string
)

func Save() {
	// Put content on file
	down_file(down_code( ))

}

func down_file(down_code string ){
	// 파일명
	fileName2 = "corps_basic.xlsx"
	file := createFile()

	
	reqBody := bytes.NewBufferString("code="+down_code)
    resp, err := http.Post("http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd", "application/x-www-form-urlencoded", reqBody)
    if err != nil {
        panic(err)
    }
 
    defer resp.Body.Close()
 
	size, err := io.Copy(file, resp.Body)
	fmt.Println("counte=",size)
	defer file.Close()

	if err != nil {
        panic(err)
    }


}

func createFile() *os.File {


	file, err := os.Create(fileName2)

	checkError(err)
	return file
}

func down_code( ) string {
	reqBody := bytes.NewBufferString("mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms%2FMDC%2FSTAT%2Fstandard%2FMDCSTAT01901")
    resp, err := http.Post(getcode_url, "application/x-www-form-urlencoded", reqBody)
    if err != nil {
        panic(err)
    }
 
    defer resp.Body.Close()
 
    // Response 체크.
    respBody, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        str := string(respBody)
        println(str)
    }
	fmt.Println("down_code=",respBody)
	return string(respBody)
}

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}
