

 package dao

import (
	"corplist/db"
)

var SqlLog Log

type Log struct{
	db.DB  
}

func init()  {
	SqlLog = Log{
		db.DB{},
	}
}

func (obj Log) Insert_Log(title string ,content string ) string {
	var id  string 
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` INSERT INTO "log" ("id", "up_id", "title", "content", "created_date") VALUES (uuid_generate_v4(), NULL, $1, $2, now()) RETURNING id; ` 
	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	 err = stmt.QueryRow( title, content).Scan(&id)
	
	if err != nil {
		panic(err)
	}
	return id
}

func (obj Log) Insert_Log_With_Up_id(up_id string, title string ,content string ) string {
	var id  string 
	var db = obj.DB.Conn()
	defer db.Close()

	query := ` INSERT INTO "log" ("id", "up_id", "title", "content", "created_date") VALUES (uuid_generate_v4(), $1, $2, $3, now()) RETURNING id; ` 
	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	 err = stmt.QueryRow( up_id, title, content).Scan(&id)
	
	if err != nil {
		panic(err)
	}
	return id
}