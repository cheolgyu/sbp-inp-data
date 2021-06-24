package model

import (
	"strconv"
	"strings"
)

// x1,y1 좌표가 bound_point
//x2,y2 는 현재 계산일
type Point struct {
	X1        uint
	Y1        float32
	X2        uint
	Y2        float32
	X_tick    uint
	Y_minus   float32
	Y_Percent float32
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
