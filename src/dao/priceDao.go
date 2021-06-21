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

type PriceDoc struct {
	Data []model.Price `bson:"data"`
}

func (o *PriceDao) Find(code string, x1 int) []model.Price {
	var res []model.Price

	findOptions := options.Find()
	projection := bson.M{
		"data.$": 1,
		"_id":    0,
	}
	findOptions.SetProjection(projection)

	coll := client.Database(c.DB_PRICE).Collection(c.COLL_PRICE)
	cursor, currErr := coll.Find(context.Background(), bson.M{
		"_id": code,
		"data.op": bson.M{
			"$gte": x1,
		},
	}, findOptions)
	if currErr != nil {
		panic(currErr)
	}

	defer cursor.Close(context.Background())
	for cursor.Next(context.Background()) {
		var result = model.Price{}
		err := cursor.Decode(&result)
		if err != nil {
			log.Fatal(err)
			panic(err)
		}
		res = append(res, result)
	}
	if err := cursor.Err(); err != nil {
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
		result, err := coll.UpdateOne(context.Background(), bson.M{"_id": code}, bson.M{"$pull": bson.M{"data": o.RemoveStart}})
		ChkErr(err)
		log.Println(result)
	}
	_, err := coll.UpdateOne(context.Background(), bson.M{"_id": code}, o.Data, opt)
	ChkErr(err)

}
