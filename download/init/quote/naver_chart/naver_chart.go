package naver_chart

import (
	"fmt"
   "net/http"
   "net/http/httputil"
   "encoding/json"
	"time"
	"log"
	"corplist/model"
)

var (
	endTime string 
)
	
func Get( list []model.Corp) {
	fmt.Println("download/init/naver_chart.go")
	var t = time.Now()

	endTime = fmt.Sprintf("%d%02d%02d",t.Year(), t.Month(), t.Day())
	//fmt.Println(endTime)
	// for _, item := range list {
	// 	var aa = download(item.Short_code)
	// 	fmt.Println(aa)
	// }
	
	convert()
}


func convert(){
	str := "[[20150821, 6180, 7300, 5600, 7100, 1994022, 2.73],[20150824, 6700, 6940, 6240, 6480, 392831, 2.66]]"
    var ints [][]float64
    err := json.Unmarshal([]byte(str), &ints)
    if err != nil {
        log.Fatal(err)
    }
	fmt.Println(ints)
}


func download(short_code string) model.Day{
	var down_url string = "https://api.finance.naver.com/siseJson.naver?symbol="+short_code+"&requestType=1&startTime=19900101&endTime="+endTime+"&timeframe=day"
	 var day model.Day

	 req, err := http.NewRequest("GET", down_url, nil)
	if err != nil {
		log.Fatalln(err)
	}

	req.Header.Set("Accept", "application/json")

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		log.Fatalln(err)
	}

	defer resp.Body.Close()

	bytes, err := httputil.DumpResponse(resp, true)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Println(string(bytes))


	// resp, err := http.Get(down_url)
    // if err != nil {
    //     panic(err)
    // }
 
    // defer resp.Body.Close()
 
	//  err = json.NewDecoder(resp.Body).Decode(&day)
    // if err != nil {
    //     panic(err)
    // }

	 return day

}

