package db

import (
	"database/sql"
	"github.com/gchaincl/dotsql"
	_ "github.com/lib/pq"
)

const (
    // Initialize connection constants.
    CONN_URL     = "postgres://postgres:example@localhost:5432/dev?sslmode=disable"
)


func Exec(){

	psqlInfo := "host=localhost port=5432 user=postgres password=example dbname=dev sslmode=disable"

	db, err := sql.Open("postgres", psqlInfo)
	if err != nil {
	panic(err)
	}
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/corp/seed.sql")

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "create-corps-table-seed")
	if err != nil {
		panic(err)
	}
}
