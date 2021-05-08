package kind_krx

import (
	"fmt"
	"io"
	"net/http"
	"net/url"
	"os"
	//"strings"
)

var (
	fileName    string
	marketType    string
)
	
const fullUrlFile string = "https://kind.krx.co.kr/corpgeneral/corpList.do"

func Save(market_type string) {

	marketType = market_type
	// 파일명
	fileName = market_type+".txt"
	file := createFile()

	// Put content on file
	putFile(file, httpClient())

}


func putFile(file *os.File, client *http.Client) {
	v := url.Values{}
	v.Set("method", "download")
	v.Set("marketType", marketType)

	resp, err := client.PostForm(fullUrlFile, v)

	checkError(err)

	defer resp.Body.Close()

	size, err := io.Copy(file, resp.Body)

	defer file.Close()

	checkError(err)

	fmt.Println("Just Downloaded a file %s with size %d", fileName, size)
}

func httpClient() *http.Client {
	client := http.Client{
		CheckRedirect: func(r *http.Request, via []*http.Request) error {
			r.URL.Opaque = r.URL.Path
			return nil
		},
	}

	return &client
}

func createFile() *os.File {
	file, err := os.Create(fileName)
	checkError(err)
	return file
}

func checkError(err error) {
	if err != nil {
		panic(err)
	}
}
