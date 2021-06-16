package db

import (
	"database/sql"
	"log"
	"os"

	_ "github.com/lib/pq"
)

type PQ struct {
}

func Conn() *sql.DB {
	pq := PQ{}
	return pq.conn()
}

func Begin() (*sql.DB, *sql.Tx) {
	pq := PQ{}
	return pq.begin()
}

func RollBack(tx *sql.Tx) {
	log.Fatalf("롤백 시작.")
	if rollbackErr := tx.Rollback(); rollbackErr != nil {
		log.Fatalf("롤백오류 발생.: %v", rollbackErr)
		log.Fatalf("update drivers: unable to rollback: %v", rollbackErr)
	}
}
func (o *PQ) conn() *sql.DB {

	db, err := sql.Open("postgres", os.Getenv("DB_URL"))
	if err != nil {
		log.Println("커넥션 오류:")
		panic(err)
	}
	return db
}

func (o *PQ) begin() (*sql.DB, *sql.Tx) {

	db, err := sql.Open("postgres", os.Getenv("DB_URL"))
	db.SetMaxOpenConns(99)
	if err != nil {
		log.Println("커넥션:begin-Open 오류:")
		panic(err)
	}
	tx, err := db.Begin()
	if err != nil {
		log.Println("커넥션:begin-tx 오류:")
		log.Fatal(err)
		panic(err)
	}
	return db, tx
}
