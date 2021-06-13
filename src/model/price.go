package model

import (
	"fmt"
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

func (o *Price) CSV() string {

	v := fmt.Sprintf("%v,%v,%v,%v,%v,%v,%v",
		o.Date,
		o.OpenPrice,
		o.HighPrice,
		o.LowPrice,
		o.ClosePrice,
		o.Volume,
		o.ForeignerBurnoutRate,
	)

	if len(v) < c.REPEAT_CNT {
		v += strings.Repeat(c.REPEAT_STR, c.REPEAT_CNT-len(v))
	}

	return v
}
