package dao

import (
	"context"
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type PriceDao struct {
}

type PriceDoc struct {
	Code string        `bson:"_id"`
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
	coll := client.Database(c.DB_PRICE).Collection(c.COLL_PRICE)
	pipeline := `
	[{
		"$match": {
		  "_id": "` + code + `"
		}
	  },
	  {
		"$project": {
		  "data": {
			"$filter": {
			  "input": "$data",
			  "cond": {
				"$gte": [	
				  "$$this.p_date",
				  ` + fmt.Sprintf("%v", x1) + `
				]
			  }
			}
		  }
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

	var result_doc_arr []PriceDoc
	for cursor.Next(context.Background()) {

		var result_doc = PriceDoc{}
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
		return result_doc_arr[0].Data
	}

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
