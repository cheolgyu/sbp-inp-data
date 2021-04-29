package main

import (
	"fmt"
	download_init_corps "corplist/download/init/corps/data_krx"
	download_init_quote "corplist/download/init/quote/naver_chart"
	parse "corplist/parse/xlsx"
	"corplist/db/sql"
	"corplist/model"
	"corplist/migrations"
)


var corp_list []model.Corp

func main() {
	fmt.Println("hello world ")

	make_init_corps()
	make_init_old_stocks_quote()
}

func make_init_corps(){
	download_init_corps.Save()
	corp_list = parse.Run()
	migrations.Make_file_corps_basic(corp_list)
	sql.Create_corp_seed()
}

func make_init_old_stocks_quote(){

	for index , item := range corp_list {
		var qoute_list = download_init_quote.Get(item)
		migrations.Make_file_quote(item.Short_code, qoute_list)
		sql.Create_Quote_Table()
		
		var str = fmt.Sprintf("make_init_old_stocks_quote (%v / %v) ",index ,len(corp_list))
		fmt.Println(str)	
	}

}

