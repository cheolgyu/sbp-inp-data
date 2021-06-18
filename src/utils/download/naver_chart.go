package download

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"

	"log"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
)

type NaverChart struct {
	StartDate string
	EndDate   string
	ChartData ChartData

	url string
	fnm string
}

type ChartData struct {
	Object string
	Code   string
	List   []model.Price
}

func (o *NaverChart) init() {
	if o.ChartData.Object == c.PRICE {
		o.fnm = c.DOWNLOAD_DIR_PRICE + o.ChartData.Code
	} else {
		o.fnm = c.DOWNLOAD_DIR_MARKET + o.ChartData.Code
	}
	o.url = fmt.Sprintf(c.DOWNLOAD_URL_PRICE, o.ChartData.Code, o.StartDate, o.EndDate)

}

func (o *NaverChart) Run() {
	o.init()
	if c.DownloadPrice {
		o.Download()
	}
	o.Parse()
}

func (o *NaverChart) Parse() {
	var list []model.Price
	file, err := os.Open(o.fnm)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	defer file.Close()

	reader := bufio.NewReader(file)
	idx := 0
	for {
		idx++
		line, isPrefix, err := reader.ReadLine()
		if isPrefix || err != nil {
			break
		}
		str := string(line)
		if idx != 2 {
			var re_str = strings.Replace(str, "[", "", -1)
			re_str = strings.Replace(re_str, "]", "", -1)
			re_str = strings.Replace(re_str, "\"", "", -1)
			re_str = strings.Replace(re_str, " ", "", -1)

			if strings.Contains(re_str, ",") {
				list = append(list, model.StringToPrice(re_str))
			}

		}

	}
	o.ChartData.List = list
}

func (o *NaverChart) Download() {
	req, err := http.NewRequest("GET", o.url, nil)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	defer resp.Body.Close()
	out, err := os.Create(o.fnm)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	defer out.Close()
	io.Copy(out, resp.Body)

}