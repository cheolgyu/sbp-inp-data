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
	// projection := bson.M{
	// 	"data.$": 1,
	// 	"_id":    0,
	// }
	projection := bson.D{
		//{"data.$", 1},
		{"_id", 0},
	}
	findOptions.SetProjection(projection)
	type AA struct {
		Data []model.Price `bson:"data"`
	}
	//coll := client.Database(c.DB_PRICE).Collection(c.COLL_PRICE)
	coll := client.Database("remove").Collection("delete_me")
	cursor, err := coll.Find(context.Background(), bson.D{
		{"abc", "4"},
		//{"data.p_date", 20210317},
		{"data.p_date", bson.D{
			{"$gte", 20210318},
		}},

		// {"data.p_date", bson.D{
		// 	{"$gte", 20210617},
		// }},
		// cursor, currErr := coll.Find(context.Background(), bson.M{
		// 	"_id": code,
		// 	"data.p_date": bson.M{
		// 		"$gte": x1,
		// 	},
	}, findOptions)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	defer cursor.Close(context.Background())
	i := 0

	var res2 []interface{}

	for cursor.Next(context.Background()) {
		var result = model.Price{}
		var result2 = bson.M{}
		err := cursor.Decode(&result2)
		if err != nil {
			log.Fatal(err)
			panic(err)
		}
		res2 = append(res2, result2)
		i++
		if result.Date != 0 {
			res = append(res, result)
		}
	}

	log.Println("<=====", code, x1, "cnt:=", i)
	if err := cursor.Err(); err != nil {
		panic(err)
	}
	log.Println("<=====", code, x1, "cnt:=", res2)
	return res
}

type PriceDaoInsert struct {
	Coll        string
	Filter      []interface{}
	Data        interface{}
	RemoveStart model.Price
}

func (o *PriceDaoInsert) Run(code string) error {
	opt := options.Update()
	opt.SetUpsert(true)

	coll := client.Database(c.DB_PRICE).Collection(o.Coll)
	if o.RemoveStart.Date != 0 {
		result, err := coll.UpdateOne(context.Background(), bson.M{"_id": code}, bson.M{"$pull": bson.M{"data": o.RemoveStart}})
		ChkErr(err)
		log.Println(result)
	}
	_, err := coll.UpdateOne(context.Background(), bson.M{"_id": code}, o.Data, opt)
	return err

}
