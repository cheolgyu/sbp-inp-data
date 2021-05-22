package naver_chart

import (
	"net/http"

	"io/ioutil"
	"log"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock/backend/dbment/src/model"
)

func Get(short_code string, startDate string, endDate string) model.NaverChart {
	var down_url string = "https://api.finance.naver.com/siseJson.naver?symbol=" + short_code + "&requestType=1&startTime=" + startDate + "&endTime=" + endDate + "&timeframe=day"
	var str = download(down_url)

	return model.NaverChart{
		Short_code: short_code,
		DayList:    parse(str),
	}
}

func parse(str string) []model.Day {

	var day_list []model.Day
	var re_str = strings.Replace(str, "[", "", -1)
	re_str = strings.Replace(re_str, "]", "", -1)
	re_str = strings.Replace(re_str, "\"", "", -1)

	re_str = strings.TrimSpace(re_str)

	slice := strings.Split(re_str, "\n")
	for _, str_slice := range slice[1:] {
		var day model.Day
		if strings.Contains(str_slice, ",") {
			var i = strings.Split(str_slice, ", ")
			day.Date = i[0]
			var ii, _ = strconv.Atoi(i[1])
			day.OpenPrice = ii
			ii, _ = strconv.Atoi(i[2])
			day.HighPrice = ii
			ii, _ = strconv.Atoi(i[3])
			day.LowPrice = ii
			ii, _ = strconv.Atoi(i[4])
			day.ClosePrice = ii
			ii, _ = strconv.Atoi(i[5])
			day.Volume = ii
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

	bytes, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	return string(bytes)

}
