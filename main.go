package main

import (
	"fmt"
	download_init_company "corplist/download/init/company/data_krx"
	download_init_quote "corplist/download/init/quote/naver_chart"
	parse "corplist/parse/xlsx"
	"corplist/db/sql"
	"corplist/model"
	"corplist/migrations"
)


var corp_list []model.Company

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
	make_init_old_stocks_quote()
}

func make_init_company(){
	download_init_company.Save()
	corp_list = parse.Run()
	migrations.Make_file_listed_company(corp_list)
	sql.Create_corp_seed()
}

func make_init_old_stocks_quote(){
	var schema_type = "day"

	for index , item := range corp_list {
		var qoute_list = download_init_quote.Get(item)
		migrations.Make_file_quote(schema_type, item.Short_code, qoute_list)
		sql.Create_Quote_Table()
		
		var str = fmt.Sprintf("make_init_old_stocks_quote (%v / %v) ",index ,len(corp_list))
		fmt.Println(str)	
	}

}

