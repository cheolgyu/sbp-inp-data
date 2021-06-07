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

func String_to_company_state(str string) CompanyState {
	o := CompanyState{}
	arr := strings.Split(str, ",")

	txt_replace := strings.NewReplacer("'", " ")

	o.Code = txt_replace.Replace(arr[0])
	o.Name = txt_replace.Replace(arr[1])
	o.Stop = ox(arr[2])
	o.Clear = ox(arr[3])
	o.Managed = ox(arr[4])

	o.Ventilation = ox(arr[5])
	o.Unfaithful = ox(arr[6])
	o.Lack_listed = ox(arr[7])
	o.Overheated = ox(arr[8])

	o.Caution = ox(arr[9])
	o.Warning = ox(arr[10])
	o.Risk = ox(arr[11])
	return o
}

func ox(ox string) bool {

	if ox == "X" {
		return false
	} else {
		return true
	}

}
