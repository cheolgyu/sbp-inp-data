package db

import (
	"context"
	"log"

<<<<<<< HEAD
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
)

func Conn() *mongo.Client {
	credential := options.Credential{
		Username: "root",
		Password: "example",
	}
	//mongodb://root:example@localhost:27017/
	clientOpts := options.Client().ApplyURI("mongodb://localhost:27017").SetAuth(credential)

	client, err := mongo.Connect(context.Background(), clientOpts)
	if err != nil {
		log.Panicln(err)
		panic(err)
	}
	err = client.Ping(context.Background(), readpref.Primary())
	if err != nil {
		log.Panicln(err)
		panic(err)
	}
	return client
=======
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
>>>>>>> postgresql
}
