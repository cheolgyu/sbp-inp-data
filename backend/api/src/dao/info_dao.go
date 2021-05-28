package dao

import (
	"github.com/cheolgyu/stock/backend/api/src/db"
)

var SqlInfo InfoDao

type InfoDao struct {
	db.DB
}

func init() {
	SqlInfo = InfoDao{
		db.DB{},
	}
}

func (obj InfoDao) Select() map[string]string {

	var db = obj.DB.Conn()
	defer db.Close()

	q := `

    SELECT
        NAME,
        fmt_timestamp(updated_date) :: text AS updated_date
    FROM
        "info"
    WHERE
        NAME LIKE 'updated_company%'
        OR NAME LIKE 'updated_price_day%'
        OR NAME LIKE 'updated_high%'
        OR NAME LIKE 'updated_market%'
	`

	rows, err := db.Query(q)

	if err != nil {
		panic(err)
	}

	defer rows.Close()

	//var list []interface{}
	item := make(map[string]string)

	for rows.Next() {

		var nm string
		var val string
		err = rows.Scan(&nm, &val)
		item[nm] = val
		if err != nil {
			panic(err)
		}

	}

	return item
}
