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
	findOptions.SetSort(bson.M{"_id": -1})

	err := client.Database(c.DB_BOUND).Collection(code).FindOne(context.Background(), bson.D{}, findOptions).Decode(&res)

	if err != nil {
		if err == mongo.ErrNoDocuments {
			return res
		}
		panic(err)
	}

	return res
}

type BoundDaoInsert struct {
	Coll   string
	Filter []interface{}
	Data   []interface{}
}

func (o *BoundDaoInsert) Run() error {
	var operations []mongo.WriteModel

	coll := client.Database(c.DB_PRICE).Collection(o.Coll)

	for i := range o.Data {
		operationA := mongo.NewUpdateOneModel()
		operationA.SetFilter(o.Filter[i])
		operationA.SetUpdate(o.Data[i])
		operationA.SetUpsert(true)
		operations = append(operations, operationA)
	}

	err := RunBulkWrite(coll, operations)
	return err
}
