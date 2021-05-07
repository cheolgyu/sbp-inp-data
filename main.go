package main

import (
	"fmt"
	download_init_company "corplist/download/init/company/data_krx"
	download_init_price "corplist/download/init/price/naver_chart"
	parse "corplist/parse/xlsx"
	"corplist/db/sql"
	"corplist/model"
	"corplist/migrations"
)


var company_list []model.Company

func main() {
	fmt.Println("hello world ")
	test()
	
}

func test(){
	
	var id  = sql.Create_Log("init-기업목록", "시작")
	// var id  = sql.Create_Log("init-기업목록", "다운로드")
	// var id  = sql.Create_Log("init-기업목록", "다운로드 후 파싱")
	// var id  = sql.Create_Log("init-기업목록", "다운로드 후 파싱 후 시드파일 생성")
	// var id  = sql.Create_Log("init-기업목록", "다운로드 후 파싱 후 시드파일 생성 후 디비저장")
	// var id  = sql.Create_Log("init-기업목록", "종료")

	// var id  = sql.Create_Log("init-시세", "시작")
	// var id  = sql.Create_Log("init-시세", "다운로드")
	// var id  = sql.Create_Log("init-시세", "다운로드 후 파싱")
	// var id  = sql.Create_Log("init-시세", "다운로드 후 파싱 후 시드파일 생성")
	// var id  = sql.Create_Log("init-시세", "다운로드 후 파싱 후 시드파일 생성 후 디비저장")
	// var id  = sql.Create_Log("init-시세", "종료")

	var id2 = sql.Create_Log_With_Up_id(id,"aaa", "bbbb")
	var log = model.Log{}
	log.Id = id

	fmt.Println("hello world ", log)
	fmt.Println("hello world ", id)
	fmt.Println("hello world ", id2)




}

func make_init(){
	make_init_company()
	make_init_old_stocks_price()
}

func make_init_company(){
	download_init_company.Save()
	company_list = parse.Run()
	migrations.Make_file_listed_company(company_list)
	sql.Create_corp_seed()
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

