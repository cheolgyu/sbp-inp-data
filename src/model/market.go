package model

import (
	"strconv"
	"strings"
)

var MarketList = []string{"KOSPI", "KOSDAQ", "FUT", "KPI200"}
var MarketListName = []string{"코스피", "코스닥", "선물", "코스피200"}

type PriceMarket struct {
	Date                 int
	OpenPrice            float32
	HighPrice            float32
	LowPrice             float32
	ClosePrice           float32
	Volume               int
	ForeignerBurnoutRate string
}

func (o *PriceMarket) ToPriceStock() PriceStock {
	return PriceStock{
		Date:                 o.Date,
		OpenPrice:            int(o.OpenPrice),
		HighPrice:            int(o.HighPrice),
		LowPrice:             int(o.LowPrice),
		ClosePrice:           int(o.ClosePrice),
		Volume:               o.Volume,
		ForeignerBurnoutRate: o.ForeignerBurnoutRate,
	}

}

func (o *PriceMarket) StringToPrice(str string) {
	arr := strings.Split(str, ",")
	d, err := strconv.ParseUint(arr[0], 0, 32)
	if err != nil {
		panic(err)
	}
	o.Date = int(d)

	op, err := strconv.ParseFloat(arr[1], 32)
	if err != nil {
		panic(err)
	}
	o.OpenPrice = float32(op)

	hp, err := strconv.ParseFloat(arr[2], 32)
	if err != nil {
		panic(err)
	}
	o.HighPrice = float32(hp)

	lp, err := strconv.ParseFloat(arr[3], 32)
	if err != nil {
		panic(err)
	}
	o.LowPrice = float32(lp)

	cp, err := strconv.ParseFloat(arr[4], 32)
	if err != nil {
		panic(err)
	}
	o.ClosePrice = float32(cp)

	v, err := strconv.ParseUint(arr[5], 0, 32)
	if err != nil {
		panic(err)
	}
	o.Volume = int(v)

	str_fr := strings.Replace(arr[6], ",", "", -1)
	o.ForeignerBurnoutRate = str_fr
}
