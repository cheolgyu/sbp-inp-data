package naver_chart

import (
	"net/http"

	"io/ioutil"
	"log"
	"strconv"
	"strings"

	"corplist/src/model"
)

func Get(short_code string, startDate string, endDate string) model.NaverChartMarket {
	var down_url string = "https://api.finance.naver.com/siseJson.naver?symbol=" + short_code + "&requestType=1&startTime=" + startDate + "&endTime=" + endDate + "&timeframe=day"
	var str = download(down_url)

	return model.NaverChartMarket{
		Code: short_code,
		List: parse(str),
	}
}

func parse(str string) []model.MarketDay {

	var day_list []model.MarketDay
	var re_str = strings.Replace(str, "[", "", -1)
	re_str = strings.Replace(re_str, "]", "", -1)
	re_str = strings.Replace(re_str, "\"", "", -1)

	re_str = strings.TrimSpace(re_str)

	slice := strings.Split(re_str, "\n")
	for _, str_slice := range slice[1:] {
		var day model.MarketDay
		if strings.Contains(str_slice, ",") {
			var i = strings.Split(str_slice, ", ")
			day.Date = i[0]
			var ii, _ = strconv.ParseFloat(i[1], 64)
			day.OpenPrice = ii
			ii, _ = strconv.ParseFloat(i[2], 64)
			day.HighPrice = ii
			ii, _ = strconv.ParseFloat(i[3], 64)
			day.LowPrice = ii
			ii, _ = strconv.ParseFloat(i[4], 64)
			day.ClosePrice = ii
			var iii, _ = strconv.Atoi(i[5])
			day.Volume = iii
			var iif, _ = strconv.ParseFloat(i[6], 64)
			day.ForeignerBurnoutRate = iif
			day_list = append(day_list, day)
		}

	}
	return day_list

}

func download(down_url string) string {
	req, err := http.NewRequest("GET", down_url, nil)
	if err != nil {
		log.Fatalln(err)
	}

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}

	defer resp.Body.Close()

	bytes, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	return string(bytes)

}
