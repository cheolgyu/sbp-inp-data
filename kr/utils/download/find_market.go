package download

import (
	"errors"
	"log"
	"net/http"
	"strings"
	"time"

	"github.com/PuerkitoBio/goquery"
	"github.com/cheolgyu/write/kr/c"
)

/*
meta.code 구성시 detail.xlsx에만 없고 state.xlsx 에만 있는경우 market 가져오기
*/

func Find_market(code string) (string, error) {
	market_name := ""

	req, err := http.NewRequest("GET", c.DOWNLOAD_URL_FIND_MARKET+code, nil)
	if err != nil {
		log.Println("Download NewRequest 에러")
		log.Fatal(err)
		return market_name, err
	}

	client := &http.Client{
		Timeout: 3 * time.Minute,
	}
	res, err := client.Do(req)
	if err != nil {
		log.Println("Download:Find_market: Do 에러")
		log.Fatal(err)
		return market_name, err
	}
	defer res.Body.Close()
	if res.StatusCode != 200 {
		log.Println("err:", res.StatusCode)
		log.Fatalf("status code error: %d %s", res.StatusCode, res.Status)
		log.Panic(err)
	}

	// Load the HTML document
	doc, err := goquery.NewDocumentFromReader(res.Body)
	if err != nil {
		log.Println("err:", err)
		log.Fatal(err)
		log.Panic(err)
	}
	// Find the review items

	aTag := doc.Find("img.kospi")
	img_src, ok := aTag.Attr("src")
	if ok {
		if strings.Contains(img_src, "kospi") {
			market_name = "KOSPI"
		} else if strings.Contains(img_src, "konex") {
			market_name = "KONEX"
		}
	}

	doc.Find("img.kosdaq").Each(func(i int, s *goquery.Selection) {
		market_name = "KOSDAQ"
	})

	if market_name == "" {
		err = errors.New("res market_nm is '' download.Find_market ")
	}

	return market_name, err
}
