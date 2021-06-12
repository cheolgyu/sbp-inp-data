package model

import "fmt"

var LinkMarket = "네버링크"
var LinkPrice = "네버링크"

type Company struct {
	Code      string
	Name      string
	NaverLink string
}

func (o *Company) GetLink() {

	isMarket := false

	for _, v := range MarketList {
		if v == o.Code {
			isMarket = true
		}
	}

	if isMarket {
		o.NaverLink = fmt.Sprintf(LinkMarket, o.Code)
	} else {
		o.NaverLink = fmt.Sprintf(LinkPrice, o.Code)
	}

}

type CompanyDetail struct {
	Full_code     string
	Short_code    string
	Full_name_kr  string
	Short_name_kr string
	Full_name_eng string

	Listing_date              string
	Market                    string
	Securities_classification string
	Department                string
	Stock_type                string

	Face_value    string
	Listed_stocks string
}

type CompanyState struct {
	Code    string
	Name    string
	Stop    bool
	Clear   bool
	Managed bool

	Ventilation   bool
	Unfaithful    bool
	Low_liquidity bool
	Lack_listed   bool
	Overheated    bool

	Caution bool
	Warning bool
	Risk    bool
}
