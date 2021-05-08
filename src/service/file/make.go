package file

import (
	"fmt"
	"log"

	"corplist/src/model"
	"os"
)

func Make_file_listed_company(seed []model.Company){
	
    f, err := os.Create("migrations/company/seed.sql")

    if err != nil {
        log.Fatal(err)
    }

    defer f.Close()

    
	_, err2 := f.WriteString("-- name: create-company-table-seed"+"\n")
	
	if err2 != nil {
		log.Fatal(err2)
	}

	for _, item := range seed {
		_, err2 := f.WriteString(`SELECT "insert_listed_company" ('`+item.Full_code+`', '` + item.Short_code+`', '`+item.Full_name_kr+`', '`+item.Short_name_kr+`', '`+item.Full_name_eng+`', '`+item.Listing_date+`', '`+item.Market+`', '`+item.Securities_classification+`', '`+item.Department+`', '`+item.Stock_type+`', '`+item.Face_value+`', '`+item.Listed_stocks+`');`+"\n")
		if err2 != nil {
			log.Fatal(err2)
		}
	}	

    if err2 != nil {
        log.Fatal(err2)
    }

    fmt.Println("done")

}

func Make_file_price(schema_type string, short_code string , list []model.Day){
	
    f, err := os.Create("migrations/price/seed.sql")

    if err != nil {
        log.Fatal(err)
    }

    defer f.Close()

    
	

	var str = `
-- name: create-price-table-seed
DROP TABLE IF EXISTS "price_`+schema_type+`"."tb_`+short_code+`";
CREATE TABLE "price_`+schema_type+`"."tb_`+short_code+`" (
	"Date" integer,
	"OpenPrice" integer,
	"HighPrice" integer,
	"LowPrice" integer,
	"ClosePrice" integer,
	"Volume" integer,
	"ForeignerBurnoutRate" double precision
);

INSERT INTO "price_`+schema_type+`"."tb_`+short_code+`" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate")
VALUES 

	`



	for index, item := range list {
		str +=  fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ",item.Date, item.OpenPrice, item.HighPrice, item.LowPrice, item.ClosePrice, item.Volume, item.ForeignerBurnoutRate)
		if index+1 == len(list){
			str += "; \n"
		}else{
			str += ", \n"
		}
	}	
	
	_, err2 := f.WriteString(str)

	if err2 != nil {
		log.Fatal(err2)
	}

    //fmt.Println("done Make_file_price "+short_code)

}