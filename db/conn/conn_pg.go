package conn

import (
	"database/sql"
	_ "github.com/lib/pq"
)

//var db *sql.DB

const (
    // Initialize connection constants.
    CONN_URL     = "postgres://postgres:example@localhost:5432/dev?sslmode=disable"
)

func Conn()  *sql.DB {
	psqlInfo := "host=localhost port=5432 user=postgres password=example dbname=dev sslmode=disable"

	db, err := sql.Open("postgres", psqlInfo)
	if err != nil {
		panic(err)
	}
	
	return db
}

