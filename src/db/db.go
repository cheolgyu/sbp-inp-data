package db

import (
	"database/sql"
	"os"

	_ "github.com/lib/pq"
)

func Conn() *sql.DB {

	conn_db, err := sql.Open("postgres", os.Getenv("DB_URL"))
	if err != nil {
		panic(err)
	}
	return conn_db
}
