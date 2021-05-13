package dao

import (
	"corplist/db"
	"corplist/src"
	"corplist/src/model"

	"github.com/gchaincl/dotsql"
)

var SqlCompany Company

type Company struct {
	db.DB
}

func init() {
	SqlCompany = Company{
		db.DB{},
	}
}

func (obj Company) Create_company_seed() {

	var db = obj.DB.Conn()
	defer db.Close()

	dot, err := dotsql.LoadFromFile(src.Info["seed-fnm-init-compnay"])

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, src.Info["seed-nm-init-compnay"])
	if err != nil {
		panic(err)
	}
}

func (obj Company) Create_company_state_seed() {

	var db = obj.DB.Conn()
	defer db.Close()

	dot, err := dotsql.LoadFromFile(src.Info["seed-fnm-init-compnay_state"])

	if err != nil {
		panic(err)
	}
	// Run queries
	_, err = dot.Exec(db, src.Info["seed-nm-init-compnay_state"])
	if err != nil {
		panic(err)
	}
}

func (obj Company) Select_All() []model.Company {

	var db = obj.DB.Conn()
	defer db.Close()

	rows, err := db.Query(`SELECT * FROM  listed_company `)

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
