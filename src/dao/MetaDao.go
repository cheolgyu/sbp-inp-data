package dao

import (
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
	query := `select id, upper_code, upper_name, code, name from meta.config where upper_code = $1 order by id ;`
	rows, err := db.Conn.Query(query, upper_code)
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		var item model.Config
		if err := rows.Scan(&item.Id, &item.Upper_code, &item.Upper_name, &item.Code, &item.Name); err != nil {
			log.Fatal(err)
			panic(err)
		}
		res = append(res, item)
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
	rows, err := db.Conn.Query("select id, code, code_type from meta.code where code_type=$1 order by id  ", code_type)
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

func GetCodeAll() ([]model.Code, error) {
	var res []model.Code
	rows, err := db.Conn.Query("select id, code, code_type from meta.code   order by id  ")
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

func GetConfigByCode(code string) (model.Config, error) {
	var item model.Config
	err := db.Conn.QueryRow("select id, upper_code, upper_name, code, name from meta.config where code=$1 order by id  ", code).Scan(
		&item.Id, &item.Upper_code, &item.Upper_name, &item.Code, &item.Name)
	if err != nil {
		log.Fatalln(err)
		//panic(err)
	}
	return item, err
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

/*
insert  project.func_lines

insert  project.func_monthly

update  public.info
*/
func After_closing() error {
	client := db.Conn
	q_insert := ` SELECT 1 FROM public.after_closing() ;`
	_, err := client.Exec(q_insert)
	if err != nil {
		log.Println("after_closing :Prepare 오류: ")
		log.Fatal(err)
		panic(err)
	}

	return err
}

/*
1. insert  meta.opening
*/
func InsertOpening(dt int) error {
	client := db.Conn
	q_insert := ` insert into meta.opening (dt,yyyy,mm,dd)
	select $1::numeric
	   , substring($1::text,1,4)::numeric as yy
	   , substring($1::text,5,2)::numeric as mm
	   , substring($1::text,7,2)::numeric as dd
	 on conflict do nothing ; 
	`
	_, err := client.Exec(q_insert, dt)
	if err != nil {
		log.Println("InsertOpening :Prepare 오류: ")
		log.Fatal(err)
		panic(err)
	}

	return err
}
