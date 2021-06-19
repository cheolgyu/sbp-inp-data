package dao

import (
	"context"
	"log"

	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

func ChkErr(err error) {

	log.Fatalln("dao-오류발생:", err)
	panic(err)
}

func RunBulkWrite(ctx *context.Context, Collection *mongo.Collection, operations []mongo.WriteModel) error {
	bulkOption := options.BulkWriteOptions{}
	bulkOption.SetOrdered(true)

	_, err := Collection.BulkWrite(*ctx, operations, &bulkOption)
	if err != nil {
		log.Println("RunBulkWrite err::::")
		log.Fatal(err)
		panic(err)
	}

	return err
}
