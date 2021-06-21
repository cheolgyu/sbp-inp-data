package project

import (
	"context"
	"log"

	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type Project3 struct {
}

func (p *Project3) Run(arg string) {

	uf := utils.File{}
	uf.Init()
	//handler.CompanyHandler()
	//handler.PriceHandler()
	//handler.BoundHandler()
	test()
	test2()
}

var client *mongo.Client

func conn() {
	client = db.Conn()

	res, err := client.ListDatabaseNames(context.Background(), bson.M{})
	if err != nil {
		panic(err)
	}

	for i := 0; i < len(res); i++ {
		log.Println(res[i])
	}
}
func test2() {
	conn()

	// docs := []interface{}{
	// 	bson.D{
	// 		{"item", "journal"},
	// 		{"instock", bson.A{
	// 			bson.D{
	// 				{"warehouse", "Ab"},
	// 				{"qty", 5},
	// 			},
	// 			bson.D{
	// 				{"warehouse", "C"},
	// 				{"qty", 15},
	// 			},
	// 		}},
	// 	},
	// 	bson.D{
	// 		{"item", "notebook"},
	// 		{"instock", bson.A{
	// 			bson.D{
	// 				{"warehouse", "C"},
	// 				{"qty", 5},
	// 			},
	// 		}},
	// 	},
	// 	bson.D{
	// 		{"item", "paper"},
	// 		{"instock", bson.A{
	// 			bson.D{
	// 				{"warehouse", "A"},
	// 				{"qty", 60},
	// 			},
	// 			bson.D{
	// 				{"warehouse", "B"},
	// 				{"qty", 15},
	// 			},
	// 		}},
	// 	},
	// 	bson.D{
	// 		{"item", "planner"},
	// 		{"instock", bson.A{
	// 			bson.D{
	// 				{"warehouse", "A"},
	// 				{"qty", 40},
	// 			},
	// 			bson.D{
	// 				{"warehouse", "B"},
	// 				{"qty", 5},
	// 			},
	// 		}},
	// 	},
	// 	bson.D{
	// 		{"item", "postcard"},
	// 		{"instock", bson.A{
	// 			bson.D{
	// 				{"warehouse", "B"},
	// 				{"qty", 15},
	// 			},
	// 			bson.D{
	// 				{"warehouse", "C"},
	// 				{"qty", 2},
	// 			},
	// 		}},
	// 	},
	// }
	coll := client.Database("test").Collection("test")
	//coll.InsertMany(context.Background(), docs)
	findOptions := options.Find()
	projection := bson.D{
		{"instock.$", 1},
		{"_id", 0},
		{"item", 1},
	}
	findOptions.SetProjection(projection)
	cursor, _ := coll.Find(
		context.Background(),
		bson.D{
			{"instock.qty", bson.D{
				{"$eq", 2},
			}},
		}, findOptions)

	log.Println("!!!!!!!!!!!!!!!!!!!!!!")
	print(cursor)

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
func test() {
	log.Println("test : run")
	var PriceList []model.Price
	price_dao := dao.PriceDao{}
	PriceList = price_dao.Find("000020", 20210618)

	log.Println("PriceList:", len(PriceList))
}
