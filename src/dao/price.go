

 package dao

import (
	"github.com/gchaincl/dotsql"
	"corplist/db"
)

var SqlPrice Price

type Price struct{
	db.DB  
}

func init()  {
	SqlPrice = Price{
		db.DB{},
	}
}


func (obj Price) Create_price_Table(){
	var db = obj.DB.Conn()
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

