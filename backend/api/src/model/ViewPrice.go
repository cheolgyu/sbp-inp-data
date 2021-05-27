package model

type ViewPriceParms struct {
	Limit  int
	Offset int
	Sort   string
	Desc   string
	Market string
	State  string
	Search string
}

type ViewPrice struct {
	Code       string
	Name       string
	Market     string
	High_date  string
	High_price float64

	Last_close_price float64
	Contrast_price   float64
	Fmt_high_date    string
	Fmt_high_price   string
	Fmt_last_date    string

	Fmt_last_close_price    string
	Fmt_contrast_price      string
	Fluctuation_rate        float64
	Day_count               int
	Updated_date_high_point string

	Naver_link  string
	Stop        bool
	Clear       bool
	Managed     bool
	Ventilation bool

	Unfaithful    bool
	Low_liquidity bool
	Lack_listed   bool
	Overheated    bool
	Caution       bool

	Warning                    bool
	Risk                       bool
	Updated_date_company_state string
}
