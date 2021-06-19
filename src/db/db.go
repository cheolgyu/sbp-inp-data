package db

import (
	"context"
	"log"

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
}
