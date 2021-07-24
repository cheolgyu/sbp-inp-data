package download

import (
	"fmt"
	"log"
	"net/http"

	"github.com/PuerkitoBio/goquery"
)

var naver_url = "https://finance.naver.com/item/main.nhn?code="

func Find_market(code string) error {
	res, err := http.Get(naver_url + code)
	if err != nil {
		log.Fatal(err)
	}
	defer res.Body.Close()
	if res.StatusCode != 200 {
		log.Fatalf("status code error: %d %s", res.StatusCode, res.Status)
	}

	// Load the HTML document
	doc, err := goquery.NewDocumentFromReader(res.Body)
	if err != nil {
		log.Fatal(err)
	}

	// Find the review items
	doc.Find(".description img").Each(func(i int, s *goquery.Selection) {
		// For each item found, get the title
		name, exist := s.Find("img").Attr("alt")
		fmt.Printf("Review %s: %s\n", name, exist)
	})
}
