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
	log.Println(" sql-시드 실행 시작 :", fnm, ", 시드 이름:", seednm)
	var db = obj.DB.Conn()
	defer db.Close()

	dot, err := dotsql.LoadFromFile(fnm)

	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, seednm)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	log.Println(" sql-시드 실행 종료 ", fnm, ", 시드 이름:", seednm)
}
