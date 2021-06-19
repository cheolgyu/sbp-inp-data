package dao

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type BoundDao struct {
}

func (o *BoundDao) SelectLast() model.Point {
	res := model.Point{}
	ctx, client := db.Conn()
	findOptions := options.FindOne()
	findOptions.SetSort(bson.D{{"_id", -1}})

	err := client.Database(c.DB).Collection(c.COLL_CODE).FindOne(*ctx, bson.D{}, findOptions).Decode(&res)

	if err != nil {
		if err == mongo.ErrNoDocuments {
			return res
		}
		//panic(err)
		return res
	}
	client.Disconnect(*ctx)
	return res
}
