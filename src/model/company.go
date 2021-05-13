package model

type Company struct {
	Id            int
	Full_code     string
	Short_code    string
	Full_name_kr  string
	Short_name_kr string

	Full_name_eng             string
	Listing_date              string
	Market                    string
	Securities_classification string
	Department                string

	Stock_type    string
	Face_value    string
	Listed_stocks string
	Created_date  string
	Updated_date  string
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

	Caution      bool
	Warning      bool
	Risk         bool
	Created_date bool
	Updated_date bool
}
