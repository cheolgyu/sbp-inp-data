package download

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"

	"log"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock/backend/dbment/src2/c"
	"github.com/cheolgyu/stock/backend/dbment/src2/model"
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
			re_str = strings.TrimSpace(re_str)

			var row model.Price
			if strings.Contains(re_str, ",") {
				arr := strings.Split(re_str, ", ")

				d, _ := strconv.ParseUint(arr[0], 0, 32)
				row.Date = uint32(d)

				op, _ := strconv.ParseFloat(arr[1], 32)
				row.OpenPrice = float32(op)

				hp, _ := strconv.ParseFloat(arr[2], 32)
				row.HighPrice = float32(hp)

				lp, _ := strconv.ParseFloat(arr[3], 32)
				row.LowPrice = float32(lp)

				cp, _ := strconv.ParseFloat(arr[4], 32)
				row.ClosePrice = float32(cp)

				v, _ := strconv.ParseUint(arr[5], 0, 32)
				row.Volume = uint32(v)

				str_fr := strings.Replace(arr[6], ",", "", -1)
				fr, _ := strconv.ParseFloat(str_fr, 32)
				row.ForeignerBurnoutRate = float32(fr)

				list = append(list, row)
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
