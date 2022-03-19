package download

import (
	"bufio"
	"fmt"
	"io"
	"net/http"
	"os"
	"time"

	"log"
	"strings"

	"github.com/cheolgyu/model"
	"github.com/cheolgyu/write/kr/c"
)

type NaverChart struct {
	StartDate string
	EndDate   string
	model.Code

	url string
	fnm string
}

func (o *NaverChart) init() {
	if o.Code.Code_type == c.Config["stock"] {
		o.fnm = c.DOWNLOAD_DIR_PRICE + o.Code.Code
	} else if o.Code.Code_type == c.Config["market"] {
		o.fnm = c.DOWNLOAD_DIR_MARKET + o.Code.Code
	}
	o.url = fmt.Sprintf(c.DOWNLOAD_URL_PRICE, o.Code.Code, o.StartDate, o.EndDate)

}

func (o *NaverChart) Run() ([]model.PriceMarket, error) {
	var err error = nil

	o.init()
	if c.DownloadPrice {
		err_down := o.Download()
		return nil, err_down
	}
	res, err := o.Parse()

	return res, err
}

func (o *NaverChart) Parse() ([]model.PriceMarket, error) {
	var res []model.PriceMarket

	file, err := os.Open(o.fnm)
	if err != nil {
		log.Println("파일열기 에러")
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
				//dd, e := strconv.ParseInt(arr[0], 0, 64)
				// if e != nil {

				// 	log.Printf("??....%v..", arr[0])
				// 	//panic(e)
				// 	return nil, e
				// }
				// ddd, e := strconv.ParseInt(c.PRICE_DEFAULT_START_DATE, 0, 64)
				// if e != nil {
				// 	return nil, e
				// }

				//if dd > ddd {
				p := model.PriceMarket{}
				p.StringToPrice(re_str)
				res = append(res, p)

				//}
			}

		}

	}
	return res, err

}

func (o *NaverChart) Download() error {
	req, err := http.NewRequest("GET", o.url, nil)
	if err != nil {
		log.Println("Download NewRequest 에러")
		log.Fatal(err)
		return err
	}

	client := &http.Client{
		Timeout: 3 * time.Minute,
	}
	resp, err := client.Do(req)
	if err != nil {
		log.Println("Download Do 에러")
		log.Fatal(err)
		return err
	}

	defer resp.Body.Close()
	out, err := os.Create(o.fnm)
	if err != nil {
		log.Println("Download os.Create 에러")
		log.Fatal(err)
		return err
	}
	defer out.Close()
	_, err = io.Copy(out, resp.Body)
	if err != nil {
		log.Println("Download io.Copy 에러")
		log.Fatal(err)
		return err
	}
	return err
}