package migrations

import (
	"fmt"
	"log"

	"corplist/model"
	"os"
	"strconv"
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

	_, err2 = f.WriteString(`INSERT INTO "corps" ("name", "code", "industry", "desc", "public_day", "settlement_month", "rprsn_name", "homepage", "location") VALUES `+"\n")

	for index, item := range seed {
		_, err2 := f.WriteString(`('`+item.Name+`', `+strconv.Itoa(item.Code)+`, '`+item.Industry+`', '`+item.Desc+`', '`+item.PublicDay+`', '`+item.SettlementMonth+`', '`+item.RprsnName+`', '`+item.Homepage+`', '`+item.Location+`')`)
		
		if index+1 != len(seed){
			_, err2 := f.WriteString(`,`+"\n")
			if err2 != nil {
				log.Fatal(err2)
			}
		}else {
			_, err2 := f.WriteString("\n"+`;`+"\n")
			if err2 != nil {
				log.Fatal(err2)
			}
		}
		if err2 != nil {
			log.Fatal(err2)
		}
	
	}	



    if err2 != nil {
        log.Fatal(err2)
    }

    fmt.Println("done")

}