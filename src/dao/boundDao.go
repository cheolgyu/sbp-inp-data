package dao

import (
	"context"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type BoundDao struct {
}

func (o *BoundDao) SelectLast(code string) model.Point {
	res := model.Point{}
	findOptions := options.FindOne()
	findOptions.SetSort(bson.D{{"_id", -1}})

	err := client.Database(c.DB_BOUND).Collection(code).FindOne(context.Background(), bson.D{}, findOptions).Decode(&res)

	if err != nil {
		if err == mongo.ErrNoDocuments {
			return res
		}
		panic(err)
	}

	return res
}
