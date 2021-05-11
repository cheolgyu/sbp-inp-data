package main

import (
	"fmt"

	"corplist/src/controller/listed_company"
	"corplist/src/controller/price"
	"corplist/src/controller/high_point"
)



func main() {
	fmt.Println("hello world ")
	init_project()
}

func test(){
	daily_project()
}

func daily_project(){
	daily_price()
	update_high_point()
}

func update_high_point(){
	var project = &high_point.HighPointontroller{}
	var p = project.New("day")
	p.Exec()
}

func daily_price(){
	var project = &price.DailyPriceController{}
	var p = project.New("day")
	p.Exec()
}

func init_project(){
	
	init_listed_company()
	init_price()
	update_high_point()
}

func init_price(){

	var project = &price.InitPriceController{}
	var p = project.New("day")
	p.Exec()	

}

func init_listed_company(){
	var project = &listed_company.InitListedComapnyController{}
	var p = project.New()
	p.Exec()

}


