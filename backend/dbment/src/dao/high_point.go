package dao

import (
	"github/cheolgyu/stock/backend/dbment/db"
)

var SqlHighPoint HighPoint

type HighPoint struct {
	db.DB
}

func init() {
	SqlHighPoint = HighPoint{
		db.DB{},
	}
}

func (obj HighPoint) Update(schema_type string) {
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` select loop_price_to_high_point('` + schema_type + `') `
	_, err := db.Exec(query)
	if err != nil {
		panic(err)
	}

}

func (obj HighPoint) Update_Market(schema_type string) {
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` select loop_market_to_high_point('` + schema_type + `') `
	_, err := db.Exec(query)
	if err != nil {
		panic(err)
	}

}
