package dao

import (
	"database/sql"
	"log"

	"github.com/cheolgyu/stock-write/src/db"
)

func UpdateDayTrading() {
	query := `
	select 1 from update_day_trading();
	`
	db.Conn.Exec(query)

	_, err := db.Conn.Query(query)
	if err != nil {
		if err == sql.ErrNoRows {
			// there were no rows, but otherwise no error occurred
		} else {
			log.Fatalln("쿼리 UpdateDayTrading udpate:", err)

			panic(err)
		}
	}
}
