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

type BoundDao struct {
}

func (o *BoundDao) LastGtypePoint(code string, g_type string) model.Point {
	res := model.Point{}
	findOptions := options.FindOne()
	projection := bson.M{
		g_type + ".$": 1,
		// c.G_TYPE_LOW:         0,
		// c.G_TYPE_LOW:         0,
		// c.G_TYPE_LOW:         0,
		"_id": 0,
	}
	findOptions.SetProjection(projection)
	filter := bson.M{"_id": code, g_type: code}

	err := client.Database(c.DB_BOUND).Collection(code).FindOne(context.Background(), filter, findOptions).Decode(&res)

	if err != nil {
		if err == mongo.ErrNoDocuments {
			return res
		}
		panic(err)
	}

	return res
}

type BoundDaoInsert struct {
	Code        string
	Data        interface{}
	RemoveStart model.Point
}

func (o *BoundDaoInsert) Run() error {
	opt := options.Update()
	opt.SetUpsert(true)

	coll := client.Database(c.DB_PRICE).Collection(o.Code)
	if o.RemoveStart.X1 != 0 {
		result, err := coll.UpdateOne(context.Background(), bson.M{"_id": o.Code}, bson.M{"$pull": bson.M{"data": o.RemoveStart}})
		ChkErr(err)
		log.Println(result)
	}
	_, err := coll.UpdateOne(context.Background(), bson.M{"_id": o.Code}, o.Data, opt)
	return err
}
