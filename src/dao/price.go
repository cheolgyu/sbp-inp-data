

 package dao

import (
	"github.com/gchaincl/dotsql"
	"corplist/db"
	"corplist/src/model"
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


func (obj Price) Create_price_Table(arr []model.NaverChart){
	var db = obj.DB.Conn()
	defer db.Close()

	for _, item := range arr {
		dot,err := dotsql.LoadFromFile(item.GetSeedFilePath())

		if err != nil {
			panic(err)
		}
		// Run queries
		_, err = dot.Exec(db, "create-price-table-seed")
		if err != nil {
			panic(err)
		}
	}

}

func (obj Price) Daily_price_Table(){
	var db = obj.DB.Conn()
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/price/daily.sql")

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "daily-price-table-seed")
	if err != nil {
		panic(err)
	}
}

