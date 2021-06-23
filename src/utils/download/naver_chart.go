package download

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"
	"strconv"

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
	Object          string
	Code            string
	PriceList       []model.Price
	PriceMarketList []model.PriceMarket
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
	var list_m []model.PriceMarket

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
				arr := strings.Split(re_str, ",")
				arr[0] = strings.Replace(arr[0], " ", "", -1)
				dd, e := strconv.ParseInt(arr[0], 0, 64)
				if e != nil {
					log.Printf("??....%v..", arr[0])
					panic(e)
				}
				ddd, e := strconv.ParseInt(c.PRICE_DEFAULT_START_DATE, 0, 64)
				if e != nil {
					panic(e)
				}

				if dd > ddd {
					if o.ChartData.Object == c.PRICE {
						p := model.Price{}
						p.StringToPrice(re_str)
						list = append(list, p)
					} else {
						p := model.PriceMarket{}
						p.StringToPrice(re_str)
						list_m = append(list_m, p)
					}

				}
			}

		}

	}
	if o.ChartData.Object == c.PRICE {
		o.ChartData.PriceList = list
	} else {
		o.ChartData.PriceMarketList = list_m
	}

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
