package db

import (
	"database/sql"
	"log"
	"os"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/joho/godotenv"
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
	err := godotenv.Load(".env.local")
	if err != nil {
		log.Panic("Error loading .env file")
	}

	DB_URL := os.Getenv("DB_URL")
	db, err := sql.Open("postgres", DB_URL)
	if err != nil {
		log.Println("커넥션 오류:", err)
		panic(err)
	}
	return db
}
