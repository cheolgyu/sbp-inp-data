package dao

import (
	"context"
	"log"
	"strings"

	"github.com/cheolgyu/stock-write/src/db"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

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

type Relpace struct {
	DB     string
	Coll   string
	Filter []interface{}
	Data   []interface{}
}

func (o *Relpace) SetColl(db string, item string) {
	o.DB = db
	o.Coll = item
}

func (o *Relpace) Run() error {
	var operations []mongo.WriteModel

	coll := client.Database(o.DB).Collection(o.Coll)

	for i := range o.Data {
		operationA := mongo.NewReplaceOneModel()
		operationA.SetFilter(o.Filter[i])
		operationA.SetReplacement(o.Data[i])
		operationA.SetUpsert(true)
		operations = append(operations, operationA)
	}

	err := RunBulkWrite(coll, operations)
	return err
}

func ChkErr(err error) {
	if err != nil {
		log.Fatalln("dao-오류발생:", err)
		panic(err)
	}

}

func RunBulkWrite(Collection *mongo.Collection, operations []mongo.WriteModel) error {
	bulkOption := options.BulkWriteOptions{}
	bulkOption.SetOrdered(true)

	_, err := Collection.BulkWrite(context.Background(), operations, &bulkOption)
	if err != nil {
		log.Println("RunBulkWrite err::::")
		log.Fatal(err)
		panic(err)
	}

	return err
}

// MongoPipeline gets aggregation pipeline from a string
func MongoPipeline(str string) mongo.Pipeline {
	var pipeline = []bson.D{}
	str = strings.TrimSpace(str)
	if strings.Index(str, "[") != 0 {
		var doc bson.D
		bson.UnmarshalExtJSON([]byte(str), false, &doc)
		pipeline = append(pipeline, doc)
	} else {
		bson.UnmarshalExtJSON([]byte(str), false, &pipeline)
	}
	return pipeline
}
