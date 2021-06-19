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

func (o *Relpace) SetColl(db string, item string) {
	o.DB = db
	o.Coll = item
}

func (o *Relpace) Run() error {
	var operations []mongo.WriteModel
	ctx, client := db.Conn()

	coll := client.Database(o.DB).Collection(o.Coll)

	for i := range o.Data {
		operationA := mongo.NewReplaceOneModel()
		operationA.SetFilter(o.Filter[i])
		operationA.SetReplacement(o.Data[i])
		operationA.SetUpsert(true)
		operations = append(operations, operationA)
	}

	err := RunBulkWrite(ctx, coll, operations)
	client.Disconnect(*ctx)
	return err
}
