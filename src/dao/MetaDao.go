package dao

import (
	"log"

	"github.com/cheolgyu/stock-write-common/db"
	"github.com/cheolgyu/stock-write-model/model"
	"github.com/cheolgyu/stock-write/src/c"
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
1. insert  meta.opening
*/
func InsertOpening(dt int) error {
	client := db.Conn
	q_insert := ` insert into meta.opening (dt,yyyy,mm,dd,week,quarter)
	select 
	dt::numeric
	,extract(YEAR from to_dt)::numeric as yy
	,extract(MONTH from to_dt)::numeric as mm
	,extract(DAY from to_dt)::numeric as dd
	,extract(week from to_dt)::numeric as week
	,extract(quarter from to_dt)::numeric as quarter
	from (
		select 
        $1::numeric as dt,
        to_date($1::text , 'YYYYMMDD') to_dt

	   )t
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

func Update_info() {
	query := `INSERT INTO public.info( name, updated) VALUES ('`
	query += c.INFO_NAME_UPDATED
	query += `', now()) ON CONFLICT ("name") DO UPDATE SET  updated= now()  `

	_, err := db.Conn.Exec(query)
	if err != nil {
		log.Fatalln(err, query)
		panic(err)
	}
}
