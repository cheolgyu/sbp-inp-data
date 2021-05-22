package xlsx

import (
	"strings"

	"github.com/cheolgyu/stock/backend/dbment/src/model"

	"github.com/tealeg/xlsx"
)

func ReadCompany(row *xlsx.Row) model.Company {

	var item model.Company
	txt_replace := strings.NewReplacer("'", " ")

	item.Full_code = txt_replace.Replace(row.Cells[0].String())
	item.Short_code = txt_replace.Replace(row.Cells[1].String())
	item.Full_name_kr = txt_replace.Replace(row.Cells[2].String())
	item.Short_name_kr = txt_replace.Replace(row.Cells[3].String())
	item.Full_name_eng = txt_replace.Replace(row.Cells[4].String())
	item.Listing_date = txt_replace.Replace(row.Cells[5].String())
	item.Market = txt_replace.Replace(row.Cells[6].String())
	item.Securities_classification = txt_replace.Replace(row.Cells[7].String())
	item.Department = txt_replace.Replace(row.Cells[8].String())
	item.Stock_type = txt_replace.Replace(row.Cells[9].String())
	item.Face_value = txt_replace.Replace(row.Cells[10].String())
	item.Listed_stocks = txt_replace.Replace(row.Cells[11].String())

	return item
}

func ReadCompanyState(row *xlsx.Row) model.CompanyState {

	var item model.CompanyState
	txt_replace := strings.NewReplacer("'", " ")

	item.Code = txt_replace.Replace(row.Cells[0].String())
	item.Name = txt_replace.Replace(row.Cells[1].String())
	item.Stop = ox(row.Cells[2].String())
	item.Clear = ox(row.Cells[3].String())
	item.Managed = ox(row.Cells[4].String())

	item.Ventilation = ox(row.Cells[5].String())
	item.Unfaithful = ox(row.Cells[6].String())
	item.Lack_listed = ox(row.Cells[7].String())
	item.Overheated = ox(row.Cells[8].String())

	item.Caution = ox(row.Cells[9].String())
	item.Warning = ox(row.Cells[10].String())
	item.Risk = ox(row.Cells[11].String())

	return item
}

func ox(ox string) bool {

	if ox == "X" {
		return false
	} else {
		return true
	}

}
