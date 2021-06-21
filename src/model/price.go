package model

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
	"go.mongodb.org/mongo-driver/bson"
)

type Price struct {
	Date                 uint32  `bson:"p_date"`
	OpenPrice            float32 `bson:"op"`
	HighPrice            float32 `bson:"hp"`
	LowPrice             float32 `bson:"lp"`
	ClosePrice           float32 `bson:"cp"`
	Volume               uint32  `bson:"vol"`
	ForeignerBurnoutRate float32 `bson:"f_rate"`
}

func (o *Price) BsonA() bson.A {
	return bson.A{
		o.Date, o.OpenPrice, o.HighPrice, o.LowPrice, o.ClosePrice, o.Volume, int(o.ForeignerBurnoutRate*100) / 100}
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

	item.OpenPrice = parse_float(arr[1])
	item.HighPrice = parse_float(arr[2])
	item.LowPrice = parse_float(arr[3])
	item.ClosePrice = parse_float(arr[4])

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
	item.ForeignerBurnoutRate = parse_float(str_fr)
	return item
}

func parse_float(s string) float32 {
	f_p, err := strconv.ParseFloat(s, 32)
	if err != nil {
		panic(err)
	}
	return float32(int(f_p*100)) / 100
}
