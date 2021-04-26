package model

type Corp struct {
    Id     int
    Name   string
    Code     int
	Industry string
	//주요제품
	Desc string
	//상장일
	PublicDay string
	//결산월
	SettlementMonth string
	//대표자명
	RprsnName string
	//홈페이지
	Homepage string
	//지역
	Location string
}