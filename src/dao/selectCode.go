package dao

import (
	"context"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type SelectCode struct {
}

func (o *SelectCode) All() []model.CompanyCode {
	var res []model.CompanyCode

	findOptions := options.Find()
	// Sort by `price` field descending
	findOptions.SetSort(bson.M{"_id": -1})
	cur, currErr := client.Database(c.DB).Collection(c.COLL_CODE).Find(context.Background(), bson.D{}, findOptions)

	if currErr != nil {
		panic(currErr)
	}
	defer cur.Close(context.Background())

	if err := cur.All(context.Background(), &res); err != nil {
		panic(err)
	}
	return res
}
