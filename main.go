package main

import (
	"os"
	"fmt"

	"corplist/src/controller/listed_company"
	"corplist/src/controller/price"
	"corplist/src/controller/high_point"
)



func main() {
	fmt.Println("hello world ")

	switch arg := os.Args[1]; arg {
	case "init":
		fmt.Println("init")
		project_init()
	case "daily":
		fmt.Println("daily")
		project_daily()
	default:
		fmt.Printf("init or daily   go run . init or go run . daily")
	}
}

func test(){
	fmt.Println("test ")
}

func project_daily(){
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

func project_init(){
	
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


