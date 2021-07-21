package dao

import (
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

func GetConfig() (map[string]int, error) {

	res := make(map[string]int)
	rows, err := db.Conn.Query("select id,code from meta.config order by id  ")
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		var code string
		var id int
		if err := rows.Scan(&id, &code); err != nil {
			log.Fatal(err)
			panic(err)
		}
		res[code] = id
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
		panic(err)
	}
	return res, err
}

func GetConfig_Upper_Code(upper_code string) ([]model.Config, error) {

	var res []model.Config
	rows, err := db.Conn.Query("select id, upper_code, upper_name, code, name from meta.config where upper_code = $1 order by id  ")
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		var row model.Config
		if err := rows.Scan(&row.Id, &row.Upper_code, &row.Upper_name, &row.Code, &row.Name); err != nil {
			log.Fatal(err)
			panic(err)
		}
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
		panic(err)
	}
	return res, err
}

func GetCode(code_type int) ([]model.Code, error) {
	var res []model.Code
	rows, err := db.Conn.Query("select id, code, code_type from meta.code where code_type=" + fmt.Sprintf("%v", code_type) + " order by id  ")
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		c := model.Code{}
		if err := rows.Scan(&c.Id, &c.Code, &c.Code_type); err != nil {
			log.Fatal(err)
			panic(err)
		}
		res = append(res, c)
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
		panic(err)
	}
	return res, err
}

func InsertMateCode(list []string, code_type int) error {
	client := db.Conn
	q_insert := `INSERT INTO meta.code("code", "code_type") VALUES( $1, $2 )`
	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리InsertMateCode :Prepare 오류: ")
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {
		_, err := stmt.Exec(item, code_type) //, item.Name

		if err != nil {
			log.Println("쿼리 InsertMateCode:stmt.Exec 오류: ", item)
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

/*
1. insert  meta.opening
*/
func Before_closing() error {
	client := db.Conn
	q_insert := ` SELECT 1 FROM public.before_closing() ;`
	_, err := client.Exec(q_insert)
	if err != nil {
		log.Println("Before_closing :Prepare 오류: ")
		log.Fatal(err)
		panic(err)
	}

	return err
}
