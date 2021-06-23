package db

import (
	"database/sql"
	"log"

	_ "github.com/lib/pq"
)

var Conn *sql.DB

func init() {
	pg := PQ{}
	Conn = pg.conn()
}

type PQ struct {
}

func (o *PQ) conn() *sql.DB {

	db, err := sql.Open("postgres", "host=localhost port=5432 user=postgres password=example dbname=dev sslmode=disable")
	if err != nil {
		log.Println("커넥션 오류:")
		panic(err)
	}
	return db
}
