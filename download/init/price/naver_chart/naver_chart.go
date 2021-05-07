package naver_chart

import (
	"fmt"
   "net/http"
	"time"
	"log"
	"corplist/model"
	"strings"
	"strconv"
	"io/ioutil"
)

var (
	endTime string 
	short_code string
)
	
func Get( corp model.Company)  []model.Day {
	short_code = corp.Short_code
	var t = time.Now()
	endTime = fmt.Sprintf("%d%02d%02d",t.Year(), t.Month(), t.Day())
	
	return parse()
}


func parse() []model.Day {
	str := download()

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
			day.Volume =ii
			var iif, _ = strconv.ParseFloat(i[6],64)
			day.ForeignerBurnoutRate = iif
			day_list = append(day_list,day)
		}
		
	}
	return day_list

}

func download() string{
	var down_url string = "https://api.finance.naver.com/siseJson.naver?symbol="+short_code+"&requestType=1&startTime=19900101&endTime="+endTime+"&timeframe=day"

	 req, err := http.NewRequest("GET", down_url, nil)
	if err != nil {
		log.Fatalln(err)
	}

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		log.Fatalln(err)
	}

	defer 	resp.Body.Close()

	bytes, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		fmt.Println(err)
	}	

	 return string(bytes	)

}

