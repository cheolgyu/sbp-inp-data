package model

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

type Price struct {
	Date       uint32
	OpenPrice  float32
	HighPrice  float32
	LowPrice   float32
	ClosePrice float32

	Volume               uint32
	ForeignerBurnoutRate float32
}

func format(object string) string {
	if object == c.PRICE {
		return "%.0f"
	} else {
		return "%.3f"
	}
}

func (o *Price) CSV(object string) string {

	v := fmt.Sprintf("%v,%v,%v,%v,%v,%v,%v",
		o.Date,
		fmt.Sprintf(format(object), o.OpenPrice),
		fmt.Sprintf(format(object), o.HighPrice),
		fmt.Sprintf(format(object), o.LowPrice),
		fmt.Sprintf(format(object), o.ClosePrice),
		o.Volume,
		o.ForeignerBurnoutRate,
	)

	if len(v) < c.REPEAT_CNT {
		v += strings.Repeat(c.REPEAT_STR, c.REPEAT_CNT-len(v))
	}

	return v
}

func StringToPrice(str string) Price {
	item := Price{}
	arr := strings.Split(str, ",")
	d, _ := strconv.ParseUint(arr[0], 0, 32)
	item.Date = uint32(d)

	op, _ := strconv.ParseFloat(arr[1], 32)
	item.OpenPrice = float32(op)

	hp, _ := strconv.ParseFloat(arr[2], 32)
	item.HighPrice = float32(hp)

	lp, _ := strconv.ParseFloat(arr[3], 32)
	item.LowPrice = float32(lp)

	cp, _ := strconv.ParseFloat(arr[4], 32)
	item.ClosePrice = float32(cp)

	v, _ := strconv.ParseUint(arr[5], 0, 32)
	item.Volume = uint32(v)

	str_fr := strings.Replace(arr[6], ",", "", -1)
	fr, _ := strconv.ParseFloat(str_fr, 32)
	item.ForeignerBurnoutRate = float32(fr)
	return item
}
