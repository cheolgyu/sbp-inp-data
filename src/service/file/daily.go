package file

import (
	"fmt"
	"log"

	"corplist/src/model"
	"os"
)



func Daily_file_price(schema_type string, arr []model.NaverChart){
	
    f, err := os.Create("migrations/price/daily.sql")
	if err != nil {
		log.Fatal(err)
	}

    if err != nil {
        log.Fatal(err)
    }

    defer f.Close()

    
	

	var str = `-- name: daily-price-table-seed`
	str += "\n"


	for _, item := range arr {

		str +=  `INSERT INTO "price_`+schema_type+`"."tb_`+item.Short_code+`" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES`
		
		for j_index, j := range item.DayList {
			str +=  fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ",j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate)
			if j_index+1 == len(item.DayList){
				str += " \n"
			}else{
				str += ", \n"
			}
		}

		str +=  ` ON CONFLICT ("Date") `
		str +=  ` DO NOTHING ; `
		str += " \n\n"
	
	}	
	
	_, err2 := f.WriteString(str)

	if err2 != nil {
		log.Fatal(err2)
	}

}