package model

import (
	"fmt"
	"log"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

type Price struct {
	Date                 uint32  `bson:"_id"`
	OpenPrice            float32 `bson:"op"`
	HighPrice            float32 `bson:"hp"`
	LowPrice             float32 `bson:"lp"`
	ClosePrice           float32 `bson:"cp"`
	Volume               uint32  `bson:"vol"`
	ForeignerBurnoutRate float32 `bson:"f_rate"`
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

	if len(v) < c.REPEAT_CNT_PRICE {
		v += strings.Repeat(c.REPEAT_STR_PRICE, c.REPEAT_CNT_PRICE-len(v))
	}

	return v
}

func StringToPrice(str string) Price {
	item := Price{}
	arr := strings.Split(str, ",")
	d, err := strconv.ParseUint(arr[0], 0, 32)
	if err != nil {
		panic(err)
	}
	item.Date = uint32(d)

	op, err := strconv.ParseFloat(arr[1], 32)
	if err != nil {
		panic(err)
	}
	item.OpenPrice = float32(op)

	hp, err := strconv.ParseFloat(arr[2], 32)
	if err != nil {
		panic(err)
	}
	item.HighPrice = float32(hp)

	lp, err := strconv.ParseFloat(arr[3], 32)
	if err != nil {
		panic(err)
	}
	item.LowPrice = float32(lp)

	cp, err := strconv.ParseFloat(arr[4], 32)
	if err != nil {
		panic(err)
	}
	item.ClosePrice = float32(cp)

	v, err := strconv.ParseUint(arr[5], 0, 32)
	if err != nil {
		panic(err)
	}
	item.Volume = uint32(v)

	str_fr := strings.Replace(arr[6], ",", "", -1)
	if str_fr == "" {
		//대박. 오래된 주식데이터는 외국인 보유가 없음. 없음.
		str_fr = "0"
	}
	fr, err := strconv.ParseFloat(str_fr, 32)
	if err != nil {
		log.Println("len=", len(arr))
		log.Println("arr=", arr)
		log.Println("str=", str)
		log.Println("str_fr=", str_fr)
		panic(err)
	}
	item.ForeignerBurnoutRate = float32(fr)
	return item
}
