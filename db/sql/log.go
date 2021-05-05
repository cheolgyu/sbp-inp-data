

package sql

import (
	"corplist/db/conn"
)


func Create_log_uuid(title string ,content string ) string {
	var id  string 
	var db = conn.Conn()
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

	// n, err := result.RowsAffected()
	// if n !=1 {
	// 	panic(err)
	// }

	
	return id

	
}
