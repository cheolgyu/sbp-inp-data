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
		panic(currErr)
	}
	defer cur.Close(context.Background())

	if err := cur.All(context.Background(), &res); err != nil {
		panic(err)
	}

	return res
}

type PriceDaoInsert struct {
	Coll        string
	Filter      []interface{}
	Data        interface{}
	RemoveStart model.Price
}

func (o *PriceDaoInsert) Run(code string) {
	opt := options.Update()
	opt.SetUpsert(true)

	coll := client.Database(c.DB_PRICE).Collection(o.Coll)
	if o.RemoveStart.Date != 0 {
		result, err := coll.UpdateOne(context.Background(), bson.M{"_id": code}, bson.M{"$pull": bson.M{"data": o.RemoveStart.BsonA()}})
		ChkErr(err)
		log.Println(result)
	}
	_, err := coll.UpdateOne(context.Background(), bson.M{"_id": code}, o.Data, opt)
	ChkErr(err)

}
