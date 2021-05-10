package model

type Day struct {
	Date 			string
    OpenPrice     	int
    HighPrice     	int
	LowPrice 		int
	ClosePrice   	int
    Volume 			int
	ForeignerBurnoutRate float64
}

type NaverChart struct {
	Short_code 			string
    DayList				[]Day
}