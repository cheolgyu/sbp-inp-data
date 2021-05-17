package dao

import (
	"corplist/db"
	"corplist/src"
	"corplist/src/model"

	"github.com/gchaincl/dotsql"
)

var SqlMarket Market

type Market struct {
	db.DB
}

func init() {
	SqlMarket = Market{
		db.DB{},
	}
}

func (obj Market) Create_market_Table(arr []model.NaverChartMarket) {
	var seednm = src.Info["seed"]["name"]["market-init"]

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
