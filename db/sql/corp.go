

package sql

import (
	"github.com/gchaincl/dotsql"
	"corplist/model"
	"corplist/db/conn"
)


func Create_corp_seed(){
	var db = conn.Conn()
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/corp/seed.sql")

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, "create-company-table-seed")
	if err != nil {
		panic(err)
	}
}

func Select_All() []model.Company{
	var db = conn.Conn()
	defer db.Close()

	rows, err := db.Query(`SELECT * FROM  listed_company` )
	
	if err != nil {
		panic(err)
	}

	defer rows.Close()

	var corp_list []model.Company

	for rows.Next() {
		var corp model.Company

		err = rows.Scan(
			&corp.Id, &corp.Full_code, &corp.Short_code, &corp.Full_name_kr, &corp.Short_name_kr,
			&corp.Full_name_eng, &corp.Listing_date, &corp.Market, &corp.Securities_classification, &corp.Department,
			&corp.Stock_type, &corp.Face_value, &corp.Listed_stocks, &corp.Created_date, &corp.Updated_date)

		if err != nil {
			panic(err)
		}
		corp_list = append(corp_list,corp)

	}
	return corp_list
}

