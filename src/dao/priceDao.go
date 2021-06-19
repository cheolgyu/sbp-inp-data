package dao

import (
	"context"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type PriceDao struct {
}

func (o *PriceDao) Find(code string, x1 int) []model.Price {
	var res []model.Price

	findOptions := options.Find()
	findOptions.SetSort(bson.D{{"_id", 1}})
	cur, currErr := client.Database(c.DB_PRICE).Collection(code).Find(context.Background(), bson.M{"_id": bson.M{"$gte": x1}}, findOptions)

	if currErr != nil {
		log.Println("3333333333")
		panic(currErr)
	}
	defer cur.Close(context.Background())

	if err := cur.All(context.Background(), &res); err != nil {
		log.Println("444444444")
		panic(err)
	}

	return res
}
