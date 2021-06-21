package dao

import (
	"context"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type BoundDao struct {
}
type LastPointDoc struct {
	Code string      `bson:"_id"`
	Data model.Point `bson:"data"`
}

func (o *BoundDao) LastGtypePoint(code string, g_type string) model.Point {
	res := model.Point{}

	coll := client.Database(c.DB_BOUND).Collection(code)
	pipeline := `
	[{
		"$match": {
		  "_id": "` + code + `"
		}
	  },
	  {
		"$project": {
			"data": {"$arrayElemAt": [  "$` + g_type + `", -1 ] }
		}
	  }
	  ]
	`
	opts := options.Aggregate()
	cursor, err := coll.Aggregate(context.Background(), MongoPipeline(pipeline), opts)

	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	defer cursor.Close(context.Background())

	var result_doc_arr []LastPointDoc
	for cursor.Next(context.Background()) {

		var result_doc = LastPointDoc{}
		err := cursor.Decode(&result_doc)
		if err != nil {
			log.Fatal(err)
			panic(err)
		}
		if result_doc.Code != "" {
			result_doc_arr = append(result_doc_arr, result_doc)
		}

	}

	if err := cursor.Err(); err != nil {
		panic(err)
	}
	if len(result_doc_arr) > 0 {
		res := result_doc_arr[0]
		return res.Data
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

	coll := client.Database(c.DB_BOUND).Collection(o.Code)
	if o.RemoveStart.X1 != 0 {
		result, err := coll.UpdateOne(context.Background(), bson.M{"_id": o.Code}, bson.M{"$pull": bson.M{"data": o.RemoveStart}})
		ChkErr(err)
		log.Println(result)
	}
	_, err := coll.UpdateOne(context.Background(), bson.M{"_id": o.Code}, o.Data, opt)
	return err
}
