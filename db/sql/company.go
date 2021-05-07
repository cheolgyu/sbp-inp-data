

package sql

import (
	"github.com/gchaincl/dotsql"
	"corplist/model"
	"corplist/db/conn"
)


func Create_company_seed(){
	var db = conn.Conn()
	defer db.Close()

	dot,err := dotsql.LoadFromFile("migrations/company/seed.sql")

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

	var company_list []model.Company

	for rows.Next() {
		var company model.Company

		err = rows.Scan(
			&company.Id, &company.Full_code, &company.Short_code, &company.Full_name_kr, &company.Short_name_kr,
			&company.Full_name_eng, &company.Listing_date, &company.Market, &company.Securities_classification, &company.Department,
			&company.Stock_type, &company.Face_value, &company.Listed_stocks, &company.Created_date, &company.Updated_date)

		if err != nil {
			panic(err)
		}
		company_list = append(company_list, company)

	}
	return company_list
}

