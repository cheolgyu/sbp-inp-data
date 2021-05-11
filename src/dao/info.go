

 package dao

 import (
	 "corplist/db"
 )
 
 var SqlInfo Info
 
 type Info struct{
	 db.DB  
 }
 
 func init()  {
	SqlInfo = Info{
		 db.DB{},
	 }
 }
 
 func (obj Info) Update_Info(name string  )  {
	 var db = obj.DB.Conn()
	 defer db.Close()
 
	 query := ` UPDATE "info" SET
	 "updated_date" = now()
	 WHERE "name" = $1;
	  ` 
	 result, err := db.Exec(query, name )
	 if err != nil {
		 panic(err)
	 }
 
	 n, err := result.RowsAffected()
    if n != 1 {
        panic(err)
    }
 }

 func (obj Info) Select_Info(name string  ) (string, string, string, string, string)  {
	var updated_date, yyyymmdd, now_yyyymmdd, next_yyyymmdd, full  string 

	var db = obj.DB.Conn()
	defer db.Close()

	query := ` 
	SELECT 
	
	updated_date,
	TO_CHAR(updated_date,'YYYYMMDD') AS yyyymmdd,
	TO_CHAR(now(),'YYYYMMDD') AS now_yyyymmdd,	
	TO_CHAR(updated_date+ interval '1' day,'YYYYMMDD') AS next_yyyymmdd,
	TO_CHAR(updated_date,'YYYY-MM-DD HH:MI:SS') AS full

	FROM "info"
	WHERE "name" = $1
	;
	` 


	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	 
	err = db.QueryRow(query, name ).Scan(&updated_date, &yyyymmdd, &now_yyyymmdd, &next_yyyymmdd, &full)
	if err != nil {
		panic(err)
	}

	return updated_date, yyyymmdd, now_yyyymmdd, next_yyyymmdd, full
	
}
 