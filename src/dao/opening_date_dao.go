package dao

import (
	"database/sql"
	"log"

	"github.com/cheolgyu/stock-write/src/db"
)

func InsertOpeningDate() {
	query := `
	insert into hist.opening_date (dt)
   	select max(p_date)
    from  HIST.PRICE_STOCK HPS 
	ON CONFLICT do nothing
    ;
	`
	db.Conn.Exec(query)

	_, err := db.Conn.Query(query)
	if err != nil {
		if err == sql.ErrNoRows {
			// there were no rows, but otherwise no error occurred
		} else {
			log.Fatalln("쿼리 InsertOpeningDate insert:", err)

			panic(err)
		}
	}
}
