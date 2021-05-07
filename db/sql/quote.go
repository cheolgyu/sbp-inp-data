

package sql

import (
	"github.com/gchaincl/dotsql"
	"corplist/db/conn"
)


func Create_price_Table(){
	var db = conn.Conn()
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/price/seed.sql")

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "create-price-table-seed")
	if err != nil {
		panic(err)
	}
}

