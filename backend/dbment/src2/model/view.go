package model

type ViewPrice struct {
	Company Company
	State   CompanyState
	Point   Point
	Updated string
}

type ViewMarket struct {
	Company Company
	Point   Point
	Updated string
}
