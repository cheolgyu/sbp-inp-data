package xlsx

import (
    "fmt"

    "github.com/tealeg/xlsx"
	"corplist/model"
	"strings"
)


func Run() []model.Company {
	var corp_list []model.Company
    fmt.Println("== xlsx package tutorial ==")

	excelFileName := "listed_company.xlsx"
    xlFile, err := xlsx.OpenFile(excelFileName)
    if err != nil {
		panic(err)
    }
    for _, sheet := range xlFile.Sheets {
		
		for index, row := range sheet.Rows {
			if index != 0 {
				var item  model.Company
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
				corp_list = append(corp_list, item)
			}
		} 
        
		
    }
	
	return corp_list
}