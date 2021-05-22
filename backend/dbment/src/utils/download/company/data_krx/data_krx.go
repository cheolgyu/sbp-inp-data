package data_krx

import (
	"bytes"
	"io"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"github.com/cheolgyu/stock/backend/dbment/src"
)

type Data_krx interface {
	downCode()
	downData()
	Save()
}

type ListedCompanyBaisc struct {
	urlCode     string
	urlData     string
	code        string
	codeReqBody string
	saveNm      string
}

func (o *ListedCompanyBaisc) downCode() Data_krx {
	o.code = down_code(o.urlCode, o.codeReqBody)

	return nil
}

func (o *ListedCompanyBaisc) downData() Data_krx {

	down_file(o.saveNm, o.urlData, o.code)
	return nil
}

func (o ListedCompanyBaisc) Save() Data_krx {
	o.saveNm = src.Info["download"]["path"]["company"]
	o.urlCode = src.Info["download"]["url"]["krx-company-code"]
	o.urlData = src.Info["download"]["url"]["krx-company-data"]
	o.codeReqBody = "mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms/MDC/STAT/standard/MDCSTAT01901"

	o.downCode()
	o.downData()
	return nil
}

type ListedCompanyState struct {
	urlCode     string
	urlData     string
	code        string
	codeReqBody string
	saveNm      string
}

func (o *ListedCompanyState) downCode() Data_krx {
	o.code = down_code(o.urlCode, o.codeReqBody)

	return nil
}

func (o *ListedCompanyState) downData() Data_krx {

	down_file(o.saveNm, o.urlData, o.code)
	return nil
}

func (o ListedCompanyState) Save() Data_krx {
	o.saveNm = src.Info["download"]["path"]["company_state"]
	o.urlCode = src.Info["download"]["url"]["krx-company_state-code"]
	o.urlData = src.Info["download"]["url"]["krx-company_state-data"]
	o.codeReqBody = "mktId=ALL&share=1&csvxls_isNo=false&name=fileDown&url=dbms/MDC/STAT/standard/MDCSTAT02001"

	o.downCode()
	o.downData()
	return nil
}

func down_file(fnm string, url string, down_code string) {
	// 파일명
	file := createFile(fnm)

	reqBody := bytes.NewBufferString("code=" + down_code)
	resp, err := http.Post(url, "application/x-www-form-urlencoded", reqBody)
	if err != nil {
		panic(err)
	}

	defer resp.Body.Close()

	size, err := io.Copy(file, resp.Body)

	log.Println("down_file size=", size, "filenm=", fnm)

	defer file.Close()

	if err != nil {
		panic(err)
	}

}

func down_code(url, reqbody string) string {
	reqBody := bytes.NewBufferString(reqbody)
	resp, err := http.Post(url, "application/x-www-form-urlencoded", reqBody)
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
