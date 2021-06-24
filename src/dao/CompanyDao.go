package dao

import (
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
)

func InsertCompanyState(list []model.CompanyState) error {
	client := db.Conn
	schema_nm := c.SCHEMA_NAME_COMPANY_CODE
	tb_nm := c.TABLE_NAME_COMPANY_STATE
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s" 
		("code", "stop", "clear", "managed", "ventilation", 
        "unfaithful", "low_liquidity", "lack_listed", "overheated", "caution", 
        "warning","risk")
		VALUES ( $1 ,$2 ,$3 ,$4 ,$5    ,$6 ,$7 ,$7 ,$9 ,$10    ,$11,$12 )`, schema_nm, tb_nm)
	q_insert += ` ON CONFLICT ("code") DO UPDATE SET 
	stop=$2 ,clear=$3 ,managed=$4 ,ventilation=$5 
	,unfaithful=$6 ,low_liquidity=$7 ,lack_listed=$8 ,overheated=$9 ,caution=$10 
	,warning=$11 ,risk=$12   `
	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {

		_, err := stmt.Exec(
			item.Code, item.Stop, item.Clear, item.Managed, item.Ventilation,
			item.Unfaithful, item.Unfaithful, item.Lack_listed, item.Overheated, item.Caution,
			item.Warning, item.Risk,
		)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", item)
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

func InsertCompanyDetail(list []model.CompanyDetail) error {
	client := db.Conn
	schema_nm := c.SCHEMA_NAME_COMPANY_CODE
	tb_nm := c.TABLE_NAME_COMPANY_DETAIL
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s"(
		"code", "full_code", "full_name_kr", "full_name_eng", "listing_date"
		,"market", "securities_classification", "department", "stock_type"
		,"face_value","listed_stocks")  
		VALUES ( $1 ,$2 ,$3 ,$4 ,$5    ,$6 ,$7 ,$7 ,$9 ,$10    ,$11 )`, schema_nm, tb_nm)
	q_insert += ` ON CONFLICT ("code") DO UPDATE SET 
	full_code=$2 ,full_name_kr=$3 ,full_name_eng=$4 ,listing_date=$5 
	,market=$6 ,securities_classification=$7 ,department=$8 ,stock_type=$9 ,face_value=$10 
	,listed_stocks=$11   `
	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {
		_, err := stmt.Exec(
			item.Code, item.Full_code, item.Full_name_kr, item.Full_name_eng, item.Listing_date,
			item.Market, item.Securities_classification, item.Department, item.Stock_type, item.Face_value,
			item.Listed_stocks,
		)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", item)
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

func InsertCompanyCode(list []model.CompanyCode) error {
	client := db.Conn
	schema_nm := c.SCHEMA_NAME_COMPANY_CODE
	tb_nm := c.TABLE_NAME_COMPANY_CODE
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s"("code", "name") VALUES( $1, $2 )`, schema_nm, tb_nm)
	q_insert += ` ON CONFLICT ("code") DO UPDATE SET name=$2 `
	stmt, err := client.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		panic(err)
	}
	defer stmt.Close()

	for _, item := range list {
		_, err := stmt.Exec(item.Code, item.Name)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", item)
			log.Fatal(err)
			panic(err)
		}
	}
	return err
}

func GetCompanyCode() ([]model.CompanyCode, error) {
	var res []model.CompanyCode
	rows, err := db.Conn.Query("select code,name from company.code order by code asc ")
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}
	defer rows.Close()

	for rows.Next() {
		var name string
		var code string
		if err := rows.Scan(&code, &name); err != nil {
			log.Fatal(err)
			panic(err)
		}
		res = append(res, model.CompanyCode{
			Code: code,
			Name: name,
		})
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
		panic(err)
	}
	return res, err
}
