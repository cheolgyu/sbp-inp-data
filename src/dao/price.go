package dao

import (
	"corplist/db"
	"corplist/src"
	"corplist/src/model"

	"github.com/gchaincl/dotsql"
)

var SqlPrice Price

type Price struct {
	db.DB
}

func init() {
	SqlPrice = Price{
		db.DB{},
	}
}

func (obj Price) Create_price_Table(arr []model.NaverChart) {

	var seednm = src.Info["seed"]["name"]["price-init"]

	var db = obj.DB.Conn()
	defer db.Close()

	for _, item := range arr {
		dot, err := dotsql.LoadFromFile(item.GetSeedFilePath())

		if err != nil {
			panic(err)
		}
		// Run queries
		_, err = dot.Exec(db, seednm)
		if err != nil {
			panic(err)
		}
	}

}

func (obj Price) Daily_price_Table() {

	var fnm = src.Info["seed"]["path"]["price-daily"]
	var seednm = src.Info["seed"]["name"]["price-daily"]

	var db = obj.DB.Conn()
	defer db.Close()

	dot, err := dotsql.LoadFromFile(fnm)

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, seednm)
	if err != nil {
		panic(err)
	}
}
