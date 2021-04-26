package main

import (
	"fmt"
	//"corplist/download"
	"corplist/parse"
	"corplist/db"
	"corplist/model"
	"corplist/migrations"
)


var corp_list []model.Corp

func main() {
	fmt.Println("hello world ")

	run()
	mk_seed_file()
	exec_sql()
}

func run(){
	
	
	down_parse("stockMkt")
	down_parse("kosdaqMkt")
	down_parse("konexMkt")
	
	mk_seed_file()
	exec_sql()
}

func down_parse(market string){
	//download.Save(market)
	list := parse.GoGet(market)
	fmt.Println("목록수=", len(list))


	if len(corp_list) == 0 {
		corp_list = list 
	}else {
		temp_list2 := corp_list
		temp_list := append(temp_list2,list...)
		corp_list = temp_list
		fmt.Println("누적=", len(corp_list))
	}

	fmt.Println("결과=", len(corp_list))
}

func mk_seed_file(){
	migrations.Mk_seed_file(corp_list)
}

func exec_sql(){
	db.Exec()
}


