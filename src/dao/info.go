package dao

import (
	"log"

	"github.com/cheolgyu/stock-write/db"
)

var SqlInfo Info

type Info struct {
	db.DB
}

func init() {
	SqlInfo = Info{
		db.DB{},
	}
}

func (obj Info) Update_Info(name string) {
	var db = obj.DB.Conn()
	defer db.Close()

	log.Println(name)

	query := ` UPDATE "info" SET
	 "updated_date" = now()
	 WHERE "name" = $1;
	  `
	result, err := db.Exec(query, name)
	if err != nil {
		panic(err)
	}

	n, err := result.RowsAffected()
	if n != 1 {
		panic(err)
	}
}

func (obj Info) SelectGetDate(name string) (string, string, string) {
	var updateDate, startDate, endDate string

	var db = obj.DB.Conn()
	defer db.Close()

	query := ` 
   SELECT 
	TO_CHAR(updated_date,'YYYYMMDD') AS updateDate,
	TO_CHAR(updated_date - interval '3' day,'YYYYMMDD') AS startDate,
	TO_CHAR(now(),'YYYYMMDD') AS endDate	
   FROM "info"
   WHERE "name" = $1
   ;
   `

	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	err = db.QueryRow(query, name).Scan(&updateDate, &startDate, &endDate)
	if err != nil {
		panic(err)
	}

	return updateDate, startDate, endDate

}
