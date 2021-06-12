package naver

import (
	"fmt"

	"github.com/cheolgyu/stock/backend/dbment/src"
)

type Row struct {
	Date                 uint32
	OpenPrice            float32
	HighPrice            float32
	LowPrice             float32
	ClosePrice           float32
	Volume               uint32
	ForeignerBurnoutRate float32
}

func (o *Row) GetPGArray() string {
	str := fmt.Sprintf("ARRAY[%v,%v,%v,%v,%v,%v,%v]", o.Date, o.OpenPrice, o.HighPrice, o.LowPrice, o.ClosePrice, o.Volume, o.ForeignerBurnoutRate)
	return str
}

type ChartData struct {
	Object string
	Code   string
	List   []Row
}

func (o *ChartData) GetDownloadFilePath() string {
	path := src.Info["download"]["path"][o.Object+"-"+src.RunType]
	return path + "/" + o.Code
}

func (o *ChartData) GetName_Schema_Table() (string, string) {

	return o.Object, "tb_" + o.Code
}
