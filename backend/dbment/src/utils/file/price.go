package file

import (
	"fmt"
	"os"

	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/model/naver"
)

func WritePriceQuery(f *os.File, object string, item naver.ChartData) {

	sqlfunc := "insert_or_update_price"

	if src.RunType == "init" {
		_, seednm := src.SeedInfo(object)
		Write(f, "-- name: "+seednm)
		sqlfunc = "insert_price"
	}
	schmea, table_name := item.GetName_Schema_Table()
	str := "select " + sqlfunc + fmt.Sprintf("('%s','%s',", schmea, table_name) + "ARRAY["
	for i, row := range item.List {
		str += row.GetPGArray()
		if i < len(item.List)-1 {
			str += ","
		}
	}
	Write(f, str+"]);")

}
