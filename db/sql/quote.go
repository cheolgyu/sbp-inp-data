

package sql

import (
	"github.com/gchaincl/dotsql"
	"corplist/db/conn"
)


func Create_Quote_Table(){
	var db = conn.Conn()
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/quote/seed.sql")

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "create-quote-table-seed")
	if err != nil {
		panic(err)
	}
}

