package dao

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type SelectCode struct {
}

func (o *SelectCode) All() []model.CompanyCode {
	var res []model.CompanyCode
	ctx, client := db.Conn()
	defer client.Disconnect(*ctx)

	findOptions := options.Find()
	// Sort by `price` field descending
	findOptions.SetSort(bson.D{{"_id", 1}})
	cur, currErr := client.Database(c.DB).Collection(c.COLL_CODE).Find(*ctx, bson.D{}, findOptions)

	if currErr != nil {
		panic(currErr)
	}
	defer cur.Close(*ctx)

	if err := cur.All(*ctx, &res); err != nil {
		panic(err)
	}
	return res
}
