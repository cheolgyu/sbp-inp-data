package download

import (
	"bytes"
	"io"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"github.com/cheolgyu/input/src/c"
)

type Data_krx struct {
	Object string

	urlCode     string
	urlData     string
	code        string
	codeReqBody string
	saveNm      string
}

func (o *Data_krx) init() {
	if o.Object == c.COMPANY_DETAIL {
		o.saveNm = c.DOWNLOAD_DIR_COMPANY_DETAIL + c.DOWNLOAD_FILENAME_COMPANY_DETAIL
		o.urlCode = c.DOWNLOAD_URL_COMPANY_DETAIL_CODE
		o.urlData = c.DOWNLOAD_URL_COMPANY_DETAIL_DATA
		o.codeReqBody = c.DOWNLOAD_URL_COMPANY_DETAIL_PARAMS
	} else if o.Object == c.COMPANY_STATE {
		o.saveNm = c.DOWNLOAD_DIR_COMPANY_STATE + c.DOWNLOAD_FILENAME_COMPANY_STATE
		o.urlCode = c.DOWNLOAD_URL_COMPANY_STATE_CODE
		o.urlData = c.DOWNLOAD_URL_COMPANY_STATE_DATA
		o.codeReqBody = c.DOWNLOAD_URL_COMPANY_STATE_PARAMS
	}
	log.Println(o)
}

func (o *Data_krx) Run() {
	o.init()
	o.code = o.down_code()
	o.down_file()
}

func (o *Data_krx) down_file() {
	// 파일명
	file := createFile(o.saveNm)

	reqBody := bytes.NewBufferString("code=" + o.code)
	resp, err := http.Post(o.urlData, "application/x-www-form-urlencoded", reqBody)
	if err != nil {
		panic(err)
	}

	defer resp.Body.Close()

	size, err := io.Copy(file, resp.Body)

	log.Println("down_file size=", size, "filenm=", o.saveNm)

	defer file.Close()

	if err != nil {
		panic(err)
	}

}

func (o *Data_krx) down_code() string {
	reqBody := bytes.NewBufferString(o.codeReqBody)
	resp, err := http.Post(o.urlCode, "application/x-www-form-urlencoded", reqBody)
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
	var str_resp = string(respBody)

	return str_resp
}

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}

func createFile(fileName string) *os.File {
	file, err := os.Create(fileName)
	checkError(err)
	return file
}
