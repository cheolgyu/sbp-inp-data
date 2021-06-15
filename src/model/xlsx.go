package model

import (
	"fmt"
	"strings"

	xlsx "github.com/tealeg/xlsx/v3"
)

// func (row *xlsx.Row) ToCompany(data_krx Data_KRX) {
// 	data_krx.Set(row)
// }

func RowGet(row *xlsx.Row) (string, string) {
	txt_replace := strings.NewReplacer("'", " ")

	str := fmt.Sprintf("%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s",
		txt_replace.Replace(row.GetCell(0).String()),
		txt_replace.Replace(row.GetCell(1).String()),
		txt_replace.Replace(row.GetCell(2).String()),
		txt_replace.Replace(row.GetCell(3).String()),
		txt_replace.Replace(row.GetCell(4).String()),
		txt_replace.Replace(row.GetCell(5).String()),
		txt_replace.Replace(row.GetCell(6).String()),
		txt_replace.Replace(row.GetCell(7).String()),
		txt_replace.Replace(row.GetCell(8).String()),
		txt_replace.Replace(row.GetCell(9).String()),
		txt_replace.Replace(row.GetCell(10).String()),
		txt_replace.Replace(row.GetCell(11).String()),
	)

	return row.GetCell(1).String(), str
}
