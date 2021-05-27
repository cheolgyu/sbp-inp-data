package db

import (
	"database/sql"
	"log"
	"os"

	_ "github.com/lib/pq"
)

type DB struct {
	Info string
}

func (db DB) Conn() *sql.DB {

	log.Println("DB_URL::::", os.Getenv("DB_URL"))

	conn_db, err := sql.Open("postgres", os.Getenv("DB_URL"))
	if err != nil {
		panic(err)
	}

	return conn_db
}
