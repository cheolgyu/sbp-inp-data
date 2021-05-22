package dao

import (
	"github/cheolgyu/stock/backend/dbment/db"
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

func (obj Export) Run() (string, string) {

	var db = obj.DB.Conn()
	defer db.Close()

	var info_json, data_json string

	query := `SELECT *  FROM  export_for_web() `

	err := db.QueryRow(query).Scan(&info_json, &data_json)
	if err != nil {
		panic(err)
	}

	return info_json, data_json
}
