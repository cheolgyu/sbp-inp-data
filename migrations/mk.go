package migrations

import (
	"fmt"
	"log"

	"corplist/model"
	"os"
)

func Mk_seed_file(seed []model.Corp){
	
    f, err := os.Create("migrations/corp/seed.sql")

    if err != nil {
        log.Fatal(err)
    }

    defer f.Close()

    
	_, err2 := f.WriteString("-- name: create-corps-table-seed"+"\n")
	
	if err2 != nil {
		log.Fatal(err2)
	}

	for _, item := range seed {
		_, err2 := f.WriteString(`SELECT "corps_basic_insert" ('`+item.Full_code+`', '` + item.Short_code+`', '`+item.Full_name_kr+`', '`+item.Short_name_kr+`', '`+item.Full_name_eng+`', '`+item.Listing_date+`', '`+item.Market+`', '`+item.Securities_classification+`', '`+item.Department+`', '`+item.Stock_type+`', '`+item.Face_value+`', '`+item.Listed_stocks+`');`+"\n")
		if err2 != nil {
			log.Fatal(err2)
		}
	}	

    if err2 != nil {
        log.Fatal(err2)
    }

    fmt.Println("done")

}