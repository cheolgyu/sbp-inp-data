package utils

import (
	"fmt"
	"strings"

	"github.com/cheolgyu/sbp-inp-data/src/c"
	"github.com/tealeg/xlsx"
)

func RowGet(row *xlsx.Row) (string, string) {
	txt_replace := strings.NewReplacer("'", " ")

	str := fmt.Sprintf("%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s"+c.XLSX_SPLIT+"%s",
		txt_replace.Replace(row.Cells[0].String()),
		txt_replace.Replace(row.Cells[1].String()),
		txt_replace.Replace(row.Cells[2].String()),
		txt_replace.Replace(row.Cells[3].String()),
		txt_replace.Replace(row.Cells[4].String()),
		txt_replace.Replace(row.Cells[5].String()),
		txt_replace.Replace(row.Cells[6].String()),
		txt_replace.Replace(row.Cells[7].String()),
		txt_replace.Replace(row.Cells[8].String()),
		txt_replace.Replace(row.Cells[9].String()),
		txt_replace.Replace(row.Cells[10].String()),
		txt_replace.Replace(row.Cells[11].String()),
	)

	return row.Cells[1].String(), str
}
