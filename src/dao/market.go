

 package dao

import (
	"github.com/gchaincl/dotsql"
	"corplist/db"
	"corplist/src/model"
)

var SqlMarket Market

type Market struct{
	db.DB  
}

func init()  {
	SqlMarket = Market{
		db.DB{},
	}
}


func (obj Market) Create_market_Table(arr []model.NaverChartMarket){
	var db = obj.DB.Conn()
	defer db.Close()

	for _, item := range arr {
		dot,err := dotsql.LoadFromFile(item.GetSeedFilePath())

		if err != nil {
			panic(err)
		}
		// Run queries
		_, err = dot.Exec(db, "create-market-table-seed")
		if err != nil {
			panic(err)
		}
	}

}

func (obj Market) Daily_market_Table(){
	var db = obj.DB.Conn()
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/market/daily.sql")

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "daily-market-table-seed")
	if err != nil {
		panic(err)
	}
}

