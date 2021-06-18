package model

import (
	"strings"

	"go.mongodb.org/mongo-driver/bson"
)

var LinkMarket = "네버링크"
var LinkPrice = "네버링크"

func ToDoc(v interface{}) (data []byte, err error) {
	data, err = bson.Marshal(v)
	if err != nil {
		return
	}

	return data, err
}

type CompanyCode struct {
	Code string `bson:"_id"`
	Name string `bson:"name"`
}
type CompanyDetail struct {
	Code string `bson:"_id"`
	Name string `bson:"name"`

	Full_code     string `bson:"full_code"`
	Short_code    string `bson:"short_code"`
	Full_name_kr  string `bson:"full_name_kr"`
	Short_name_kr string `bson:"short_name_kr"`

	Full_name_eng             string `bson:"full_name_eng"`
	Listing_date              string `bson:"listing_date"`
	Market                    string `bson:"market"`
	Securities_classification string `bson:"securities_classification"`
	Department                string `bson:"department"`

	Stock_type    string `bson:"stock_type"`
	Face_value    string `bson:"face_value"`
	Listed_stocks string `bson:"listed_stocks"`
}

func StringToCompanyDetail(str string) CompanyDetail {
	arr := strings.Split(str, ",")
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
	Code    string `bson:"_id"`
	Name    string `bson:"name"`
	Stop    bool   `bson:"stop"`
	Clear   bool   `bson:"clear"`
	Managed bool   `bson:"managed"`

	Ventilation   bool `bson:"ventilation"`
	Unfaithful    bool `bson:"unfaithful"`
	Low_liquidity bool `bson:"low_liquidity"`
	Lack_listed   bool `bson:"lack_listed"`
	Overheated    bool `bson:"overheated"`

	Caution bool `bson:"caution"`
	Warning bool `bson:"warning"`
	Risk    bool `bson:"risk"`
}

func StringToCompanyState(str string) CompanyState {
	o := CompanyState{}
	arr := strings.Split(str, ",")

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
