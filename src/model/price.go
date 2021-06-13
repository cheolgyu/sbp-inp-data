package model

type Price struct {
	Date       uint32
	OpenPrice  float32
	HighPrice  float32
	LowPrice   float32
	ClosePrice float32

	Volume               uint32
	ForeignerBurnoutRate float32
}
