package dao

import (
	"log"
	"time"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
)

type InsertInfo struct {
	Relpace
}

func (o *InsertInfo) Updated(info_name string) {
	o.Relpace.SetColl(c.DB, c.COLL_INFO)
	log.Println("info-update", info_name)

	o.Relpace.Filter = append(o.Relpace.Filter, bson.M{"_id": info_name})

	o.Relpace.Data = append(o.Relpace.Data, model.Info{
		Name:    info_name,
		Updated: time.Now().String(),
	})
	o.Run()
}

type SelectInfo struct {
}

func (o *SelectInfo) One(name string) model.Info {
	ctx, client := db.Conn()
	defer client.Disconnect(*ctx)

	info := model.Info{}
	err := client.Database(c.DB).Collection(c.COLL_INFO).FindOne(*ctx, bson.M{"_id": name}).Decode(&info)
	if err != nil {
		if err == mongo.ErrNoDocuments {
			return info
		}
		panic(err)
	}

	return info
}
