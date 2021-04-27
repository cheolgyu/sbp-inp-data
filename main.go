package main

import (
	"fmt"
	download "corplist/download/data_krx"
	parse "corplist/parse/xlsx"
	"corplist/db"
	"corplist/model"
	"corplist/migrations"
)


var corp_list []model.Corp

func main() {
	fmt.Println("hello world ")

	make_corp_list()

}

func make_corp_list(){
	download.Save()
	corp_list = parse.Run()
	mk_seed_file()
	exec_sql()
}

func run(){
	
	download.Save()
	
	mk_seed_file()
	exec_sql()
}



func mk_seed_file(){
	migrations.Mk_seed_file(corp_list)
}

func exec_sql(){
	db.Exec()
}


