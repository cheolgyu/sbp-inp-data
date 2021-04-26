package parse

import (
	"fmt"
	"log"
	"strings"

	"github.com/PuerkitoBio/goquery"
    "io/ioutil"
	"golang.org/x/text/transform"
	"bytes"
	"golang.org/x/text/encoding/korean"
	"strconv"

	"corplist/model"
)

var (
	marketType    string
)

func GoGet(market_type string) []model.Corp {
	marketType = market_type
	return html_query()
}

func html_query() []model.Corp { 
	var corp_list []model.Corp

	content, err := ioutil.ReadFile(marketType+".txt")
    if err != nil {
        log.Fatal(err)
    }
    text,_ := decodeToEUCKR(string(content))

	doc, err := goquery.NewDocumentFromReader(strings.NewReader(text))
	if err != nil {
		fmt.Println("No url found")
		log.Fatal(err)
	}

	r := strings.NewReplacer("'", "\"")

	// Find each table
	doc.Find("table").Each(func(index int, tablehtml *goquery.Selection) {
		tablehtml.Find("tr").Each(func(indextr int, rowhtml *goquery.Selection) {
			var t model.Corp
			rowhtml.Find("td").Each(func(indexth int, tablecell *goquery.Selection) {
				td_txt :=  r.Replace(tablecell.Text()) 
				if indexth == 0 {
					t.Name = td_txt
				} else if indexth == 1 {
					b, _ := strconv.Atoi(td_txt)
					t.Code = b
				}else if indexth == 2 {
					t.Industry = td_txt
				}else if indexth == 3 {
					t.Desc = td_txt
				}else if indexth == 4 {
					t.PublicDay = td_txt
				}else if indexth == 5 {
					t.SettlementMonth = td_txt
				}else if indexth == 6 {
					t.RprsnName = td_txt
				}else if indexth == 7 {
					t.Homepage = strings.TrimSpace(td_txt)
				}else if indexth == 8 {
					t.Location = td_txt
				}
			})
			if t.Name != ""{
				corp_list = append(corp_list, t)
			}
			
		})
	})
	fmt.Println("####### 마켓 = ",marketType,",len=", len(corp_list))

	return corp_list
}

func decodeToEUCKR(s string) (string, error) {
	var buf bytes.Buffer
	wr := transform.NewWriter(&buf, korean.EUCKR.NewDecoder())
	_, err := wr.Write([]byte(s))
	if err != nil {
		return "", err
	}
	defer wr.Close()
	return buf.String(), nil
}
