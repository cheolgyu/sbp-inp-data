

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
 