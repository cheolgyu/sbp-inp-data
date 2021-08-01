package dao

import (
	"context"
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

func InsertCompanyState(list []model.CompanyState) error {
	client := db.Conn
	q_insert := `INSERT INTO public.company_state `
	q_insert += `( "code_id", "code" , "name" ,"code_type" ,"market_type", "stop", `
	q_insert += ` "clear", "managed", "ventilation", "unfaithful","low_liquidity",  `
	q_insert += `   "lack_listed", "overheated", "caution","warning","risk"  )`
	q_insert += `	VALUES ( $1 ,$2 ,$3 ,$4 ,$5,$6    ,$7,$8,$9,$10,$11  ,$12,$13,$14,$15,$16 ) `
	q_insert += ` ON CONFLICT (code_id) DO UPDATE SET `
	q_insert += ` name=$3, code_type=$4, market_type=$5, stop=$6 ,`
	q_insert += `	clear=$7 ,managed=$8 ,ventilation=$9 ,unfaithful=$10 ,low_liquidity=$11, `
	q_insert += ` lack_listed=$12 ,overheated=$13 ,caution=$14 ,warning=$15 ,risk=$16 `
	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:InsertCompanyState:Prepare 오류 ")
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {

		_, err := stmt.Exec(
			item.Company.Code_id, item.Company.Code, item.Company.Name, item.Company.Code_type, item.Company.Market_type, item.Company.Stop,
			item.Clear, item.Managed, item.Ventilation, item.Unfaithful, item.Unfaithful,
			item.Lack_listed, item.Overheated, item.Caution, item.Warning, item.Risk,
		)
		if err != nil {
			err_item := fmt.Sprintf("%+v", item)
			log.Println("쿼리:InsertCompanyState:stmt.Exec 오류: ", err_item)
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

func InsertCompanyDetail(list []model.CompanyDetail) error {
	client := db.Conn
	q_insert := `INSERT INTO public.company_detail`
	q_insert += `(code_id, code, name, code_type, market_type, stop,`
	q_insert += `  full_code, full_name_kr, full_name_eng, listing_date, market, `
	q_insert += `  securities_classification, department, stock_type, face_value, listed_stocks)`
	q_insert += `VALUES (  $1 ,$2 ,$3 ,$4 ,$5,$6  `
	q_insert += `  ,$7,$8,$9,$10,$11 `
	q_insert += `  ,$12,$13,$14,$15,$16)`
	q_insert += `ON CONFLICT (code_id) DO UPDATE SET`
	q_insert += `  name=$3, code_type=$4, market_type=$5, stop=$6,`
	q_insert += `   full_code=$7, full_name_kr=$8, full_name_eng=$9, listing_date=$10, market=$11, `
	q_insert += `  securities_classification=$12, department=$13, stock_type=$14, face_value=$15, listed_stocks=$16`

	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:InsertCompanyDetail Prepare 오류: ")
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {
		_, err := stmt.Exec(
			item.Company.Code_id, item.Company.Code, item.Company.Name, item.Company.Code_type, item.Company.Market_type, item.Company.Stop,
			item.Full_code, item.Full_name_kr, item.Full_name_eng, item.Listing_date, item.Market,
			item.Securities_classification, item.Department, item.Stock_type, item.Face_value, item.Listed_stocks,
		)
		if err != nil {
			log.Println("쿼리InsertCompanyDetail:stmt.Exec 오류: ")

			log.Println("쿼리InsertCompanyDetail :stmt.Exec 오류: ", fmt.Sprintf("%+v\n", item))
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

func InsertCompany(list []model.Company) error {
	client := db.Conn
	q_insert := `INSERT INTO public.company `
	q_insert += `(code_id, "code", "code_type", "market_type", "name", "stop")`
	q_insert += `VALUES( $1, $2, $3, $4, $5, $6 )`
	q_insert += `ON CONFLICT (code_id) DO UPDATE SET code=$2, code_type=$3,market_type=$4, name=$5, stop=$6 `
	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:InsertPublicTbCode:Prepare 오류: ")
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {
		_, err := stmt.Exec(item.Code_id, item.Code, item.Code_type, item.Market_type, item.Name, item.Stop)

		if err != nil {
			log.Println("쿼리:InsertPublicTbCode:stmt.Exec 오류: ")
			log.Println("쿼리:InsertPublicTbCode:stmt.Exec 오류: ", fmt.Sprintf("%+v\n", item))
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

func SelectPublicCompany() ([]model.Company, map[string]model.Company, error) {
	query := `select code_id, code, name, code_type, market_type, stop from  public.company `
	res := []model.Company{}
	res_map := make(map[string]model.Company)

	rows, err := db.Conn.QueryContext(context.Background(), query)
	if err != nil {
		log.Fatal(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		item := model.Company{}

		if err := rows.Scan(&item.Code_id, &item.Code, &item.Name, &item.Code_type, &item.Market_type, &item.Stop); err != nil {
			log.Fatal(err)
			panic(err)
		}
		res = append(res, item)
		res_map[item.Code] = item

	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
		panic(err)
	}

	return res, res_map, err
}
