package dao

import (
	"context"
	"log"

	"github.com/cheolgyu/stock-write/src/db"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

var client *mongo.Client

func init() {
	log.Println("db- conn()")
	client = db.Conn()

	res, err := client.ListDatabaseNames(context.Background(), bson.M{})
	if err != nil {
		panic(err)
	}

	for i := 0; i < len(res); i++ {
		log.Println(res[i])
	}
}

func ChkErr(err error) {

	log.Fatalln("dao-오류발생:", err)
	panic(err)
}

func RunBulkWrite(Collection *mongo.Collection, operations []mongo.WriteModel) error {
	bulkOption := options.BulkWriteOptions{}
	bulkOption.SetOrdered(true)

	_, err := Collection.BulkWrite(context.Background(), operations, &bulkOption)
	if err != nil {
		log.Println("RunBulkWrite err::::")
		log.Fatal(err)
		panic(err)
	}

	return err
}
