package naver_chart

import (
	"bufio"
	"io"
	"net/http"
	"os"

	"log"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock/backend/dbment/src/model/naver"
)

type Download struct {
	StartDate string
	EndDate   string
	Url       string
	ChartData naver.ChartData
}

func (o *Download) SetURL() {
	o.Url = "https://api.finance.naver.com/siseJson.naver?symbol="
	o.Url += o.ChartData.Code + "&requestType=1&startTime="
	o.Url += o.StartDate + "&endTime="
	o.Url += o.EndDate + "&timeframe=day"
}

func (o *Download) Exec() {
	o.SetURL()
	o.Download()
	o.Parse()
}

func (o *Download) Parse() {
	var list []naver.Row
	fnm := o.ChartData.GetDownloadFilePath()
	file, err := os.Open(fnm)
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

			var row naver.Row
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

func (o *Download) Download() {
	req, err := http.NewRequest("GET", o.Url, nil)
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
	fnm := o.ChartData.GetDownloadFilePath()
	out, err := os.Create(fnm)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	defer out.Close()
	io.Copy(out, resp.Body)

}
