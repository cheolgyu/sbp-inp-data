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

	for _, item := range seed {
		_, err2 := f.WriteString(`SELECT "corp_insert" ('`+item.Name+`', '` + strconv.Itoa(item.Code)+`', '`+item.Industry+`', '`+item.Desc+`', '`+item.PublicDay+`', '`+item.SettlementMonth+`', '`+item.RprsnName+`', '`+item.Homepage+`', '`+item.Location+`');`+"\n")
		if err2 != nil {
			log.Fatal(err2)
		}
	}	

    if err2 != nil {
        log.Fatal(err2)
    }

    fmt.Println("done")

}