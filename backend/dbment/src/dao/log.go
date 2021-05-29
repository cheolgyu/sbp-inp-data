package dao

import (
	"github.com/cheolgyu/stock/backend/dbment/db"
)

var SqlLog Log

type Log struct {
	db.DB
}

func init() {
	SqlLog = Log{
		db.DB{},
	}
}

func (obj Log) Insert_Log_p_id(t1 string, t2 string, t3 string, t4 string) string {
	var id string
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` INSERT INTO "log" ("id", "t1", "t2","t3", "t4", "created_date") VALUES (uuid_generate_v4(),  $1,  $2, $3, $4, now()) RETURNING id; `
	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	err = stmt.QueryRow(t1, t2, t3, t4).Scan(&id)

	if err != nil {
		panic(err)
	}
	return id
}

func (obj Log) Insert_Log(p_id string, t1 string, t2 string, t3 string, t4 string) string {
	var id string
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` INSERT INTO "log" ("id", "p_id","up_id", "t1", "t2","t3", "t4", "created_date") VALUES (uuid_generate_v4(),  $1, NULL, $2, $3, $4, $5, now()) RETURNING id; `
	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	err = stmt.QueryRow(p_id, t1, t2, t3, t4).Scan(&id)

	if err != nil {
		panic(err)
	}
	return id
}

func (obj Log) Insert_Log_With_Up_id(p_id string, up_id string, t1 string, t2 string, t3 string, t4 string) string {
	var id string
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` INSERT INTO "log" ("id","p_id", "up_id","t1", "t2","t3", "t4", "created_date") VALUES (uuid_generate_v4(), $1,  $2, $3, $4, $5, $6, now()) RETURNING id; `
	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	err = stmt.QueryRow(p_id, up_id, t1, t2, t3, t4).Scan(&id)

	if err != nil {
		panic(err)
	}
	return id
}
