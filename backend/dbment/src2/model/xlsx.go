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

// func (o *CompanyState) Set(row *xlsx.Row) {
// 	txt_replace := strings.NewReplacer("'", " ")

// 	o.Code = txt_replace.Replace(row.GetCell(0).String())
// 	o.Name = txt_replace.Replace(row.GetCell(1).String())
// 	o.Stop = ox(row.GetCell(2).String())
// 	o.Clear = ox(row.GetCell(3).String())
// 	o.Managed = ox(row.GetCell(4).String())

// 	o.Ventilation = ox(row.GetCell(5).String())
// 	o.Unfaithful = ox(row.GetCell(6).String())
// 	o.Lack_listed = ox(row.GetCell(7).String())
// 	o.Overheated = ox(row.GetCell(8).String())

// 	o.Caution = ox(row.GetCell(9).String())
// 	o.Warning = ox(row.GetCell(10).String())
// 	o.Risk = ox(row.GetCell(11).String())

// }

// func ox(ox string) bool {

// 	if ox == "X" {
// 		return false
// 	} else {
// 		return true
// 	}

// }
