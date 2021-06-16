package handler

import (
	"fmt"
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	xlsx "github.com/tealeg/xlsx/v3"
)

func CompanyHandler() {
	handler := Company{}
	handler.Load()
	handler.Save()

	//log.Println(handler)
}

type Company struct {
	Code   CodeList
	Detail DetailList
	State  StateList
}

func (o *Company) Load() {
	f_download := c.DOWNLOAD_DIR_COMPANY_DETAIL + c.DOWNLOAD_FILENAME_COMPANY_DETAIL
	if c.DownloadCompany {
		download_data_krx := download.Data_krx{
			Object: c.COMPANY_DETAIL,
		}
		download_data_krx.Run()
	}

	xlFile, err := xlsx.OpenFile(f_download)
	if err != nil {
		panic(err)
	}

	sheet := xlFile.Sheets[0]
	for i := 1; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		_, content := model.RowGet(row)
		detail := model.StringToCompanyDetail(content)

		o.Detail.List = append(o.Detail.List, detail)

		o.Code.List = append(o.Code.List, model.CompanyCode{
			Code: detail.Code,
			Name: detail.Name,
		})
	}

	o.State.Load()
}
func (o *Company) Save() {
	o.Code.Save()
	o.Detail.Save()
	o.State.Save()

}

type CodeList struct {
	List []model.CompanyCode
}

//코드목록 조회
func (o *CodeList) SelectAll() {
	conn := db.Conn()
	defer conn.Close()
	rows, err := conn.Query("select code,name from company.code order by code asc ")
	ChkErr(err)
	defer rows.Close()

	for rows.Next() {
		var name string
		var code string
		if err := rows.Scan(&code, &name); err != nil {
			log.Fatal(err)
			log.Fatal(err)
			panic(err)
		}
		o.List = append(o.List, model.CompanyCode{
			Code: code,
			Name: name,
		})
	}
	// Check for errors from iterating over rows.
	if err := rows.Err(); err != nil {
		log.Fatal(err)
	}

}

func (o *CodeList) Save() {
	client, tx := db.Begin()
	defer tx.Rollback()
	schema_nm := "company"
	tb_nm := "code"
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s"("code", "name") VALUES( $1, $2 )`, schema_nm, tb_nm)
	q_insert += fmt.Sprintf(`ON CONFLICT ("code") DO UPDATE SET name=$2 `)
	stmt, err := tx.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		db.RollBack(tx)
		panic(err)
	}
	defer stmt.Close()

	for i := range o.List {
		_, err := stmt.Exec(o.List[i].Code, o.List[i].Name)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", o.List[i])
			log.Fatal(err)
			db.RollBack(tx)
			panic(err)
		}
	}

	if err := tx.Commit(); err != nil {
		log.Println("쿼리:Commit 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
	}
	if err := client.Close(); err != nil {
		log.Println("디비연결 종료 오류 발생.: ", err)
		log.Fatal(err)
		panic(err)
	}

}

// func (o *CodeList) SQLFormat(i int) string {
// 	return fmt.Sprintf("ARRAY['%s','%s']", o.List[i].Code, o.List[i].Name)
// }

type DetailList struct {
	List []model.CompanyDetail
}

func (o *DetailList) Save() {

	client, tx := db.Begin()
	defer tx.Rollback()
	schema_nm := "company"
	tb_nm := "detail"
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s"(
		"code", "full_code", "full_name_kr", "full_name_eng", "listing_date"
		,"market", "securities_classification", "department", "stock_type"
		,"face_value","listed_stocks")  
		VALUES ( $1 ,$2 ,$3 ,$4 ,$5    ,$6 ,$7 ,$7 ,$9 ,$10    ,$11 )`, schema_nm, tb_nm)
	q_insert += fmt.Sprintf(`ON CONFLICT ("code") DO UPDATE SET 
	full_code=$2 ,full_name_kr=$3 ,full_name_eng=$4 ,listing_date=$5 
	,market=$6 ,securities_classification=$7 ,department=$8 ,stock_type=$9 ,face_value=$10 
	,listed_stocks=$11   `)
	stmt, err := tx.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		db.RollBack(tx)
		panic(err)
	}
	defer stmt.Close()

	for i := range o.List {
		var item = o.List[i]
		_, err := stmt.Exec(
			item.Code, item.Full_code, item.Full_name_kr, item.Full_name_eng, item.Listing_date,
			item.Market, item.Securities_classification, item.Department, item.Stock_type, item.Face_value,
			item.Listed_stocks,
		)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", item)
			log.Fatal(err)
			db.RollBack(tx)
			panic(err)
		}
	}

	if err := tx.Commit(); err != nil {
		log.Println("쿼리:Commit 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
	}
	if err := client.Close(); err != nil {
		log.Println("디비연결 종료 오류 발생.: ", err)
		log.Fatal(err)
		panic(err)
	}

}

type StateList struct {
	List []model.CompanyState
}

func (o *StateList) Load() {
	f_download := c.DOWNLOAD_DIR_COMPANY_STATE + c.DOWNLOAD_FILENAME_COMPANY_STATE
	if c.DownloadCompany {
		download_data_krx := download.Data_krx{
			Object: c.COMPANY_STATE,
		}
		download_data_krx.Run()
	}

	xlFile, err := xlsx.OpenFile(f_download)
	if err != nil {
		panic(err)
	}

	sheet := xlFile.Sheets[0]
	for i := 1; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		_, content := model.RowGet(row)
		state := model.StringToCompanyState(content)

		o.List = append(o.List, state)

	}
}
func (o *StateList) Save() {
	client, tx := db.Begin()
	defer tx.Rollback()
	schema_nm := "company"
	tb_nm := "state"
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s" 
		("code", "stop", "clear", "managed", "ventilation", 
        "unfaithful", "low_liquidity", "lack_listed", "overheated", "caution", 
        "warning","risk")
		VALUES ( $1 ,$2 ,$3 ,$4 ,$5    ,$6 ,$7 ,$7 ,$9 ,$10    ,$11,$12 )`, schema_nm, tb_nm)
	q_insert += fmt.Sprintf(`ON CONFLICT ("code") DO UPDATE SET 
	stop=$2 ,clear=$3 ,managed=$4 ,ventilation=$5 
	,unfaithful=$6 ,low_liquidity=$7 ,lack_listed=$8 ,overheated=$9 ,caution=$10 
	,warning=$11 ,risk=$12   `)
	stmt, err := tx.Prepare(q_insert)
	if err != nil {
		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		db.RollBack(tx)
		panic(err)
	}
	defer stmt.Close()

	for i := range o.List {
		var item = o.List[i]

		_, err := stmt.Exec(
			item.Code, item.Stop, item.Clear, item.Managed, item.Ventilation,
			item.Unfaithful, item.Unfaithful, item.Lack_listed, item.Overheated, item.Caution,
			item.Warning, item.Risk,
		)
		if err != nil {
			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", o.List[i])
			log.Fatal(err)
			db.RollBack(tx)
			panic(err)
		}
	}

	if err := tx.Commit(); err != nil {
		log.Println("쿼리:Commit 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
	}
	if err := client.Close(); err != nil {
		log.Println("디비연결 종료 오류 발생.: ", err)
		log.Fatal(err)
		panic(err)
	}

}
func (o *StateList) SQLFormat(idx int) string {
	i := o.List[idx]
	return fmt.Sprintf("ARRAY['%s','%t','%t','%t','%t'   ,'%t','%t','%t','%t','%t'  ,'%t','%t']",
		i.Code, i.Stop, i.Clear, i.Managed, i.Ventilation,
		i.Unfaithful, i.Low_liquidity, i.Lack_listed, i.Overheated, i.Caution,
		i.Warning, i.Risk)
}
