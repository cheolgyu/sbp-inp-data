package db

import (
	"context"
	"log"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
	"go.mongodb.org/mongo-driver/mongo/readpref"
)

func Conn() (*context.Context, *mongo.Client) {
	credential := options.Credential{
		Username: "root",
		Password: "example",
	}
	//mongodb://root:example@localhost:27017/
	clientOpts := options.Client().ApplyURI("mongodb://localhost:27017").SetAuth(credential)

	ctx := context.Background()

	//defer cancel()
	client, err := mongo.Connect(ctx, clientOpts)
	if err != nil {
		log.Panicln(err)
	}
	err = client.Ping(ctx, readpref.Primary())
	if err != nil {
		log.Panicln(err)
	}
	return &ctx, client
}
