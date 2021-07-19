package model

import (
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

var LinkMarket = "네버링크"
var LinkPrice = "네버링크"

type Company struct {
	Code_id     int    `db:"code_id"`
	Code        string `db:"code"`
	Name        string `db:"name"`
	Code_type   int    `db:"code_type"`
	Market_type int    `db:"market_type"`
	Stop        bool   `db:"stop"`
	//Name string
}
type CompanyDetail struct {
	Company `db:"company"`

	Full_code                 string `db:"full_code"`
	Full_name_kr              string `db:"full_name_kr"`
	Full_name_eng             string `db:"full_name_eng"`
	Listing_date              string `db:"listing_date"`
	Market                    string `db:"market"`
	Securities_classification string `db:"securities_classification"`
	Department                string `db:"department"`
	Stock_type                string `db:"stock_type"`
	Face_value                string `db:"face_value"`
	Listed_stocks             string `db:"listed_stocks"`
}

func StringToCompanyDetail(str string) CompanyDetail {
	arr := strings.Split(str, c.XLSX_SPLIT)
	item := CompanyDetail{}
	item.Full_code = arr[0]
	item.Code = arr[1]
	item.Full_name_kr = arr[2]
	item.Name = arr[3]
	item.Full_name_eng = arr[4]

	item.Listing_date = arr[5]
	item.Market = arr[6]
	item.Securities_classification = arr[7]
	item.Department = arr[8]
	item.Stock_type = arr[9]

	item.Face_value = arr[10]
	item.Listed_stocks = arr[11]
	return item
}

type CompanyState struct {
	Company `db:"company"`

	Clear         bool `db:"clear"`
	Managed       bool `db:"managed"`
	Ventilation   bool `db:"ventilation"`
	Unfaithful    bool `db:"unfaithful"`
	Low_liquidity bool `db:"low_liquidity"`
	Lack_listed   bool `db:"lack_listed"`
	Overheated    bool `db:"overheated"`
	Caution       bool `db:"caution"`
	Warning       bool `db:"warning"`
	Risk          bool `db:"risk"`
}

func StringToCompanyState(str string) CompanyState {
	o := CompanyState{}
	arr := strings.Split(str, c.XLSX_SPLIT)

	txt_replace := strings.NewReplacer("'", " ")

	o.Code = txt_replace.Replace(arr[0])
	o.Name = txt_replace.Replace(arr[1])
	o.Stop = ox(arr[2])
	o.Clear = ox(arr[3])
	o.Managed = ox(arr[4])

	o.Ventilation = ox(arr[5])
	o.Unfaithful = ox(arr[6])
	o.Lack_listed = ox(arr[7])
	o.Overheated = ox(arr[8])

	o.Caution = ox(arr[9])
	o.Warning = ox(arr[10])
	o.Risk = ox(arr[11])
	return o
}

func ox(ox string) bool {

	if ox == "X" {
		return false
	} else {
		return true
	}

}
