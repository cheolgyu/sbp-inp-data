package project

import (
	"context"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
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
}

func test() {
	Find()
	Find2()
}
func insert() {

	docs := []interface{}{
		bson.D{
			{"item", "journal"},
			{"instock", bson.A{
				bson.D{
					{"warehouse", "A"},
					{"qty", 5},
				},
				bson.D{
					{"warehouse", "C"},
					{"qty", 15},
				},
				bson.D{
					{"warehouse", "C"},
					{"qty", 20},
				}, bson.D{
					{"warehouse", "C"},
					{"qty", 25},
				},
			}},
		},
	}
	coll := client.Database("remove").Collection("delete_me")
	coll.InsertMany(context.Background(), docs)

}
func Find2() {

	findOptions := options.Find()

	projection := bson.D{
		{"_id", 0},
		{"data.$", 1},
	}
	findOptions.SetProjection(projection)
	type AA struct {
		Data []model.Price `bson:"data"`
	}
	coll := client.Database(c.DB_PRICE).Collection(c.COLL_PRICE)
	//coll := client.Database("remove").Collection("delete_me")
	cursor, err := coll.Find(context.Background(),
		bson.D{
			{"_id", "950220"},
			{"data.p_date", bson.D{
				{"$gte", 20210615},
			}},
		}, findOptions)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}

	defer cursor.Close(context.Background())
	i := 0

	var res2 []interface{}

	for cursor.Next(context.Background()) {
		var result2 = bson.M{}
		err := cursor.Decode(&result2)
		if err != nil {
			log.Fatal(err)
			panic(err)
		}
		res2 = append(res2, result2)
		i++

	}

	log.Println("<=====", "cnt:=", i)
	if err := cursor.Err(); err != nil {
		panic(err)
	}
	log.Println("<=====", "cnt:=", res2)
}
func Find() {

	findOptions := options.Find()
	// projection := bson.M{
	// 	"data.$": 1,
	// 	"_id":    0,
	// }
	projection := bson.M{
		//{"instock", 10},
		// {"instock.$", bson.D{
		// 	{"$slice", 1},
		// }},
		//"instock": bson.M{"$elemMatch": bson.M{"qty": bson.M{"$gte": 15}}},
		//"instock.qty": bson.M{"$gte": 15},
		"instock": bson.M{"$elemMatch": bson.M{"qty": bson.M{"$gte": 15}}},
	}
	findOptions.SetProjection(projection)

	//coll := client.Database(c.DB_PRICE).Collection(c.COLL_PRICE)
	coll := client.Database("remove").Collection("delete_me")
	cursor, err := coll.Find(context.Background(),
		bson.M{
			//{"item", "journal"},
			//{"data.p_date", 20210317},
			// {"instock", bson.D{
			// 	{"$elemMatch", bson.D{
			// 		{"qty", 5},
			// 	}},
			// }},

			"instock.qty": bson.M{
				"$gte": 15,
			},
		}, findOptions)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	type AA struct {
		Data []model.Price `bson:"data"`
	}
	defer cursor.Close(context.Background())
	i := 0

	var res2 []interface{}

	for cursor.Next(context.Background()) {
		var result2 = bson.M{}
		err := cursor.Decode(&result2)
		if err != nil {
			log.Fatal(err)
			panic(err)
		}
		res2 = append(res2, result2)
		i++

	}

	log.Println("<=====", "cnt:=", i)
	if err := cursor.Err(); err != nil {
		panic(err)
	}
	log.Println("<=====", "cnt:=", res2)
}

var client *mongo.Client

func init() {
	log.Println("db- conn()")
	client = db.Conn()

	res, err := client.ListDatabaseNames(context.Background(), bson.M{})
	if err != nil {
		panic(err)
	}

	for i := 0; i < len(res); i++ {
		log.Println(res[i])
	}
}
