package dao

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type PriceDao struct {
}

func (o *PriceDao) Find(code string, x1 int) []model.Price {
	var res []model.Price
	ctx, client := db.Conn()
	defer client.Disconnect(*ctx)

	findOptions := options.Find()
	findOptions.SetSort(bson.D{{"_id", 1}})
	cur, currErr := client.Database(c.DB_PRICE).Collection(code).Find(*ctx, bson.M{"_id": bson.M{"$gte": x1}}, findOptions)

	if currErr != nil {
		panic(currErr)
	}
	defer cur.Close(*ctx)

	if err := cur.All(*ctx, &res); err != nil {
		panic(err)
	}

	return res
}
