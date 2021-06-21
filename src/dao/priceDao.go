package dao

import (
	"context"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type PriceDao struct {
}

type PriceDoc struct {
	Data []model.Price `bson:"data"`
}

func (o *PriceDao) Find(code string, x1 int) []model.Price {
	var res []model.Price

	//findOptions.SetReturnKey(false)
	//err := client.Database(c.DB_PRICE).Collection(code).FindOne(context.Background(), bson.M{"_id": code, "data.$._id": bson.M{"$gte": x1}}, findOptions).Decode(&res)
	//filter := bson.M{"_id": code, "data.$[]._id": bson.M{"$gte": x1}}
	// return:  all the data comes out...
	//filter := bson.M{"data": bson.M{"$elemMatch": bson.M{"_id": 20210618}}}
	// panic: runtime error: index out of range [0] with length 0
	//filter := bson.M{"_id": code, "data._id": bson.M{"$gte": 20180827}}
	// return:  all the data comes out...

	//filter = bson.M{"_id": code, "data.$[]._id": bson.M{"$gte": 20180827}}
	//filter = bson.M{"data": bson.M{"$elemMatch": bson.M{"_id": 20210618}}}
	//filter = bson.M{"data": bson.M{"$elemMatch": bson.M{"op": 11750}}}

	//filter := bson.M{"data._id": 20210618}
	//filter = bson.M{"data": bson.M{"$elemMatch": bson.M{"op": 11750}}}

	findOptions := options.Find()
	projection := bson.D{
		{"data.$", 1},
		{"_id", 0},
	}
	findOptions.SetProjection(projection)

	coll := client.Database(c.DB_PRICE).Collection(c.COLL_PRICE)
	cursor, currErr := coll.Find(context.Background(), bson.D{
		{"data.op", bson.D{
			{"$gte", 11000},
		}},
	}, findOptions)
	if currErr != nil {
		panic(currErr)
	}
	log.Println("~~~~~~~~~~~~~~~~~")
	print(cursor)
	//log.Printf("%#v\n", results2[0])
	return res
}

func print(cursor *mongo.Cursor) {
	defer cursor.Close(context.Background())
	var results2 []bson.M
	for cursor.Next(context.Background()) {
		var result = bson.M{}

		err := cursor.Decode(&result)
		if err != nil {
			log.Fatal(err)
			panic(err)
		}
		log.Printf("%#v\n", result)
		results2 = append(results2, result)

	}
	if err := cursor.Err(); err != nil {
		panic(err)
	}

	log.Printf("%v\n", len(results2))
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
