package db

import (
	"database/sql"

	_ "github.com/lib/pq"
)

type DB struct {
	Info string
}

const conn_info string = "host=localhost port=5432 user=postgres password=example dbname=dev2 sslmode=disable"

func (db DB) Conn() *sql.DB {

	conn_db, err := sql.Open("postgres", conn_info)
	if err != nil {
		panic(err)
	}

	return conn_db
}
