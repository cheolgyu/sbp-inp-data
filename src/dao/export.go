package dao

import (
	"corplist/db"
)

var SqlExport Export

type Export struct {
	db.DB
}

func init() {
	SqlExport = Export{
		db.DB{},
	}
}

func (obj Export) Run() string {

	var db = obj.DB.Conn()
	defer db.Close()

	var item string

	query := `SELECT *  FROM  export_for_web() `

	err := db.QueryRow(query).Scan(&item)
	if err != nil {
		panic(err)
	}

	return item
}
