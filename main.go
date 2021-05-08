package main

import (
	"fmt"
	download_init_company "corplist/download/init/company/data_krx"
	download_init_price "corplist/download/init/price/naver_chart"
	parse "corplist/parse/xlsx"
	"corplist/db/sql"
	"corplist/model"
	"corplist/migrations"

	"corplist/controller/listed_company"
)


var company_list []model.Company
var Log_Up_id string

func main() {
	fmt.Println("hello world ")
	test()
	
}

func test(){
	//fmt.Println("hello world ", model.LogTitls)
	//fmt.Println("hello world listed_company=",listed_company)

	fmt.Println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	listed_company.Exec_InitListedComapnyController()

}

func make_init(){
	make_init_company()
	make_init_old_stocks_price()
}

func make_init_company(){
	Log_Up_id  = sql.Create_Log(model.LogTitls["init"]["listed_company"]["start"], "start")
	
	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["download"], "start")
	download_init_company.Save()
	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["download"], "end")

	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["parse"], "start")
	company_list = parse.Run()
	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["parse"], "end")
	
	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["seed"], "start")
	migrations.Make_file_listed_company(company_list)
	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["seed"], "end")

	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["insert"], "start")
	sql.Create_company_seed()
	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["insert"], "end")

	sql.Create_Log_With_Up_id(Log_Up_id, model.LogTitls["init"]["listed_company"]["end"], "end")
}


func make_init_old_stocks_price(){
	var schema_type = "day"

	for index , item := range company_list {
		var price_list = download_init_price.Get(item)
		migrations.Make_file_price(schema_type, item.Short_code, price_list)
		sql.Create_price_Table()
		
		var str = fmt.Sprintf("make_init_old_stocks_price (%v / %v) ",index ,len(company_list))
		fmt.Println(str)	
	}

}

