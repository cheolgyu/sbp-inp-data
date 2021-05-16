package main

import (
	"fmt"
	"os"

	"corplist/src/controller/high_point"
	"corplist/src/controller/listed_company"
	"corplist/src/controller/market"
	"corplist/src/controller/price"
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
		test()
	}
}

func test() {
	fmt.Println("test ")
	daily_price()
	daily_market()
	update_high_point()
	update_high_point_market()
	//init_listed_company_state()

}

////////////////////////

/// func

////////////////////////

func update_high_point() {
	var project = &high_point.HighPointController{}
	var p = project.New("day")
	p.Exec()
}

func update_high_point_market() {
	var project = &high_point.HighPointMarketController{}
	var p = project.New("day")
	p.Exec()
}

////////////////////////

/// daily

////////////////////////

func project_daily() {
	daily_listed_company_state()
	daily_price()
	daily_market()
	update_high_point()
	update_high_point_market()
}

func daily_market() {
	var project = &market.DailyMarketController{}
	var p = project.New("day")
	p.Exec()
}

func daily_price() {
	var project = &price.DailyPriceController{}
	var p = project.New("day")
	p.Exec()
}

////////////////////////

/// init

////////////////////////

func project_init() {

	init_listed_company()
	init_listed_company_state()
	init_price()
	init_market()
	update_high_point()
	update_high_point_market()
}

func init_market() {
	var project = &market.InitMarketController{}
	var p = project.New("day")
	p.Exec()
}

func init_price() {

	var project = &price.InitPriceController{}
	var p = project.New("day")
	p.Exec()

}

func init_listed_company() {
	var project = &listed_company.InitListedComapnyController{}
	var p = project.New()
	p.Exec()

}

func init_listed_company_state() {
	var project = &listed_company.InitListedComapnyStateController{}
	var p = project.New()
	p.Exec()

}

func daily_listed_company_state() {
	var project = &listed_company.DailyListedComapnyStateController{}
	var p = project.New()
	p.Exec()

}
