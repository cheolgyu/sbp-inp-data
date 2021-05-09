package main

import (
	"fmt"
	"corplist/src/controller/listed_company"
	"corplist/src/controller/price"
)



func main() {
	fmt.Println("hello world ")
	test()
}

func test(){
	daily_project()
	init_project()
}

func daily_project(){
	daily_price()
}

func daily_price(){
	var project = &price.DailyPriceController{}
	var p = project.New()
	p.Exec()
}

func init_project(){
	init_price()
	init_listed_company()
}

func init_price(){

	var project = &price.InitPriceController{}
	var p = project.New()
	p.Exec()	

}

func init_listed_company(){
	var project = &listed_company.InitListedComapnyController{}
	var p = project.New()
	p.Exec()

}


