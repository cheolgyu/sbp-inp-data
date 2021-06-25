package model

import (
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

var LinkMarket = "네버링크"
var LinkPrice = "네버링크"

type CompanyCode struct {
	Code string
	Name string
}
type CompanyDetail struct {
	Name string

	Code          string
	Full_code     string
	Full_name_kr  string
	Full_name_eng string
	Listing_date  string

	Market                    string
	Securities_classification string
	Department                string
	Stock_type                string
	Face_value                string

	Listed_stocks string
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
	Name string

	Code        string
	Stop        bool
	Clear       bool
	Managed     bool
	Ventilation bool

	Unfaithful    bool
	Low_liquidity bool
	Lack_listed   bool
	Overheated    bool
	Caution       bool

	Warning bool
	Risk    bool
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
