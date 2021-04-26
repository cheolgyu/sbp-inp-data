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


	// Loads queries from file
	dot1, err := dotsql.LoadFromFile("migrations/corp/down.sql")
	if err != nil {
		panic(err)
	}
	dot2, err := dotsql.LoadFromFile("migrations/corp/up.sql")
	if err != nil {
		panic(err)
	}
	dot3, err := dotsql.LoadFromFile("migrations/corp/seed.sql")
	if err != nil {
		panic(err)
	}
	dot33 := dotsql.Merge(dot1, dot2)
	dot := dotsql.Merge(dot33, dot3)

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "drop-corps-table")
	if err != nil {
		panic(err)
	}
	_, err = dot.Exec(db, "drop-corps-table-id")
	if err != nil {
		panic(err)
	}
	_, err = dot.Exec(db, "create-corps-table-id")
	if err != nil {
		panic(err)
	}
	_, err = dot.Exec(db, "create-corps-table")
	if err != nil {
		panic(err)
	}
	_, err = dot.Exec(db, "create-corps-table-seed")
	if err != nil {
		panic(err)
	}
}
