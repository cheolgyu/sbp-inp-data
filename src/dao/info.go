

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
	var updated_date, startDate, endDate, short_format,full_format  string 

	var db = obj.DB.Conn()
	defer db.Close()

	query := ` 
	SELECT updated_date,
		TO_CHAR(updated_date+ interval '1' day,'YYYYMMDD') AS startDate,
        TO_CHAR(now(),'YYYYMMDD') AS endDate,
        TO_CHAR(updated_date,'YYYYMMDD') AS short_format,
		TO_CHAR(updated_date,'YYYY-MM-DD HH:MI:SS') AS full_format
	FROM "info"
	WHERE "name" = $1
	;
	` 


	stmt, err := db.Prepare(query)
	if err != nil {
		panic(err)
	}
	defer stmt.Close()

	 
	err = db.QueryRow(query, name ).Scan(&updated_date, &startDate, &endDate, &short_format, &full_format)
	if err != nil {
		panic(err)
	}

	return updated_date, startDate, endDate, short_format,full_format
	
}
 