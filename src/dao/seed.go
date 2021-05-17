package dao

import (
	"corplist/db"
	"log"

	"github.com/gchaincl/dotsql"
)

var SqlSeed Seed

type Seed struct {
	db.DB
}

func init() {
	SqlSeed = Seed{
		db.DB{},
	}
}

func (obj Seed) Run(fnm string, seednm string) {
	log.Println("Seed Run Start")
	log.Println(fnm, seednm)
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
	log.Println("Seed Run End")
}
