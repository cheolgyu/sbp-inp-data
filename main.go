package main

import (
	"fmt"
	download_init_corps "corplist/download/init/corps/data_krx"
	download_init_quote "corplist/download/init/quote/naver_chart"
	parse "corplist/parse/xlsx"
	"corplist/db"
	"corplist/model"
	"corplist/migrations"
)


var corp_list []model.Corp

func main() {
	fmt.Println("hello world ")

	//make_corp_list()
	make_old_stocks_quote()
}

func make_corp_list(){
	download_init_corps.Save()
	corp_list = parse.Run()
	mk_seed_file()
	exec_sql()
}

func make_old_stocks_quote(){
	download_init_quote.Get("1111")
	// 시작시간 history 테이블에 저장
	// 전체 종목 select
	// 종목하나 마다 네이버 다운로드
	// 다운로드한 정보를 해당 테이블에 저장
	// 완료시간 history 테이블에 저장

}



func mk_seed_file(){
	migrations.Mk_seed_file(corp_list)
}

func exec_sql(){
	db.Exec()
}


