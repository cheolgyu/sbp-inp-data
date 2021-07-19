package model

// import (
// 	"strconv"
// 	"strings"
// )

// type PriceStock struct {
// 	Date                 int
// 	OpenPrice            int
// 	HighPrice            int
// 	LowPrice             int
// 	ClosePrice           int
// 	Volume               int
// 	ForeignerBurnoutRate string
// }

// func (o *PriceStock) StringToPrice(str string) {
// 	arr := strings.Split(str, ",")
// 	d, err := strconv.ParseInt(arr[0], 0, 64)
// 	if err != nil {
// 		panic(err)
// 	}
// 	o.Date = int(d)

// 	op, err := strconv.ParseInt(arr[1], 0, 64)
// 	if err != nil {
// 		panic(err)
// 	}
// 	o.OpenPrice = int(op)

// 	hp, err := strconv.ParseInt(arr[2], 0, 64)
// 	if err != nil {
// 		panic(err)
// 	}
// 	o.HighPrice = int(hp)

// 	lp, err := strconv.ParseInt(arr[3], 0, 64)
// 	if err != nil {
// 		panic(err)
// 	}
// 	o.LowPrice = int(lp)

// 	cp, err := strconv.ParseInt(arr[4], 0, 64)
// 	if err != nil {
// 		panic(err)
// 	}
// 	o.ClosePrice = int(cp)

// 	v, err := strconv.ParseInt(arr[5], 0, 32)
// 	if err != nil {
// 		panic(err)
// 	}
// 	o.Volume = int(v)

// 	str_fr := strings.Replace(arr[6], ",", "", -1)
// 	o.ForeignerBurnoutRate = str_fr
// }
