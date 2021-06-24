package model

import (
<<<<<<< HEAD
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
=======
	"strconv"
	"strings"
)

type PriceStock struct {
	Date                 int
	OpenPrice            int
	HighPrice            int
	LowPrice             int
	ClosePrice           int
	Volume               int
	ForeignerBurnoutRate string
>>>>>>> postgresql
}

func (o *PriceStock) StringToPrice(str string) {
	arr := strings.Split(str, ",")
	d, err := strconv.ParseInt(arr[0], 0, 64)
	if err != nil {
		panic(err)
	}
	o.Date = int(d)

<<<<<<< HEAD
	item.OpenPrice = parse_float(arr[1])
	item.HighPrice = parse_float(arr[2])
	item.LowPrice = parse_float(arr[3])
	item.ClosePrice = parse_float(arr[4])
=======
	op, err := strconv.ParseInt(arr[1], 0, 64)
	if err != nil {
		panic(err)
	}
	o.OpenPrice = int(op)

	hp, err := strconv.ParseInt(arr[2], 0, 64)
	if err != nil {
		panic(err)
	}
	o.HighPrice = int(hp)

	lp, err := strconv.ParseInt(arr[3], 0, 64)
	if err != nil {
		panic(err)
	}
	o.LowPrice = int(lp)

	cp, err := strconv.ParseInt(arr[4], 0, 64)
	if err != nil {
		panic(err)
	}
	o.ClosePrice = int(cp)
>>>>>>> postgresql

	v, err := strconv.ParseInt(arr[5], 0, 32)
	if err != nil {
		panic(err)
	}
	o.Volume = int(v)

	str_fr := strings.Replace(arr[6], ",", "", -1)
<<<<<<< HEAD
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
=======
	o.ForeignerBurnoutRate = str_fr
>>>>>>> postgresql
}
