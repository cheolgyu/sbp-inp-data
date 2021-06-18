package dao

import (
	"github.com/cheolgyu/stock-write/src/db"
	"go.mongodb.org/mongo-driver/mongo"
)

type Relpace struct {
	DB     string
	Coll   string
	Filter []interface{}
	Data   []interface{}
}

func (o *Relpace) SetColl(item string) {
	o.DB = "dev"
	o.Coll = item
}

func (o *Relpace) Run() {
	var operations []mongo.WriteModel
	ctx, client := db.Conn()
	coll := client.Database(o.DB).Collection(o.Coll)

	for i, _ := range o.Data {
		operationA := mongo.NewReplaceOneModel()
		operationA.SetFilter(o.Filter[i])
		operationA.SetReplacement(o.Data[i])
		operationA.SetUpsert(true)
		operations = append(operations, operationA)
	}

	RunBulkWrite(ctx, coll, operations)
}
