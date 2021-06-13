package model

type HighPoint struct {
	Code  string
	Point Point
}

// x1,y1 좌표가 high_point
//x2,y2 는 현재 계산일
type Point struct {
	X1        uint
	Y1        float32
	X2        uint
	Y2        float32
	Y_minus   float32
	Y_Percent float32
	X_tick    uint
}

// type HighPoint struct {
// 	Code        string  `bson:"code"`
// 	HPDate      int     `bson:"hp_date"`
// 	HPPrice     float64 `bson:"hp_price"`
// 	ClcltDate   int     `bson:"clclt_date"`
// 	ClcltPrice  float64 `bson:"clclt_price"`
// 	Rate        float64 `bson:"rate"`
// 	RatePrice   float64 `bson:"rate_price"`
// 	RateKeepCnt int     `bson:"rate_keep_cnt"`
// }

// func (hp *HighPoint) SetRate() {
// 	hp.RatePrice = hp.ClcltPrice - hp.HPPrice
// 	hp.Rate = math.Round(hp.RatePrice/hp.HPPrice*100*100) / 100
// }
