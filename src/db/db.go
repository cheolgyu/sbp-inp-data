package db

import (
	"database/sql"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	_ "github.com/lib/pq"
)

var Conn *sql.DB

func init() {
	pg := PQ{}
	Conn = pg.conn()
	Conn.SetMaxIdleConns(c.DB_MAX_CONN)
	Conn.SetMaxOpenConns(c.DB_MAX_CONN)
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
