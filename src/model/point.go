package model

import (
	"strconv"
	"strings"

	"go.mongodb.org/mongo-driver/bson"
)

// type HighPoint struct {
// 	Code  string
// 	Point Point
// }

// x1,y1 좌표가 bound_point
//x2,y2 는 현재 계산일
type Point struct {
	X1        uint    `bson:"_id"`
	Y1        float32 `bson:"y1"`
	X2        uint    `bson:"x2"`
	Y2        float32 `bson:"y2"`
	X_tick    uint    `bson:"x_tick"`
	Y_minus   float32 `bson:"y_minus"`
	Y_Percent float32 `bson:"y_percent"`
}

func (o *Point) BsonA() bson.A {
	return bson.A{
		o.X1, o.Y1, o.X2, o.Y2, o.X_tick, o.Y_minus, o.Y_Percent}
}

func StringToPoint(str string) Point {
	item := Point{}

	arr := strings.Split(str, ",")
	x1, _ := strconv.ParseUint(arr[0], 0, 32)
	item.X1 = uint(x1)

	y1, _ := strconv.ParseFloat(arr[1], 32)
	item.Y1 = float32(y1)

	x2, _ := strconv.ParseUint(arr[2], 0, 32)
	item.X2 = uint(x2)

	y2, _ := strconv.ParseFloat(arr[3], 32)
	item.Y2 = float32(y2)

	y_min, _ := strconv.ParseFloat(arr[4], 32)
	item.Y_minus = float32(y_min)

	y_per, _ := strconv.ParseFloat(arr[5], 32)
	item.Y_Percent = float32(y_per)

	x_tick, _ := strconv.ParseUint(arr[6], 0, 32)
	item.X_tick = uint(x_tick)

	return item
}
