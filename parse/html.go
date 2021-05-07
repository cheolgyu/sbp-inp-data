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

func GoGet(market_type string) []model.Company {
	marketType = market_type
	return html_query()
}

func html_query() []model.Company { 
	var corp_list []model.Company

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
	r_br := strings.NewReplacer("\n", " ")

	// Find each table
	doc.Find("table").Each(func(index int, tablehtml *goquery.Selection) {
		tablehtml.Find("tr").Each(func(indextr int, rowhtml *goquery.Selection) {
			var t model.Company
			rowhtml.Find("td").Each(func(indexth int, tablecell *goquery.Selection) {
				td_txt :=  r.Replace(tablecell.Text()) 
				td_txt2 :=  r_br.Replace(td_txt) 
				if indexth == 0 {
					t.Name = td_txt2
				} else if indexth == 1 {
					b, _ := strconv.Atoi(td_txt2)
					t.Code = b
				}else if indexth == 2 {
					t.Industry = td_txt2
				}else if indexth == 3 {
					t.Desc = td_txt2
				}else if indexth == 4 {
					t.PublicDay = td_txt2
				}else if indexth == 5 {
					t.SettlementMonth = td_txt2
				}else if indexth == 6 {
					t.RprsnName = td_txt2
				}else if indexth == 7 {
					t.Homepage = strings.TrimSpace(td_txt2)
				}else if indexth == 8 {
					t.Location = td_txt2
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
