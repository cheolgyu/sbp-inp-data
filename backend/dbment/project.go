package main

import (
	"log"
	"sync"

	"github.com/cheolgyu/stock/backend/dbment/src/controller/high_point"
	"github.com/cheolgyu/stock/backend/dbment/src/controller/listed_company"
	"github.com/cheolgyu/stock/backend/dbment/src/controller/market"
	"github.com/cheolgyu/stock/backend/dbment/src/controller/price"
)

type Project struct {
}

func (p *Project) Run(arg string) {
	switch arg {
	case "init":

		p.Init()

	case "daily":
		p.Daily()
	default:
		log.Printf("init or daily   go run . -run=daily    ")
	}
}

func (p Project) Init() {
	project_init()
	project_high_point()
}

func (p Project) Daily() {
	project_daily()
	project_high_point()
	//export.MakeFile()
}

////////////////////////

/// comm (init and daily)

////////////////////////

func comm_listed_company() {

	var project = &listed_company.CommListedComapnyController{}
	var p = project.New()
	p.Exec()

}

func comm_listed_company_state(_wg *sync.WaitGroup) {

	var project = &listed_company.CommListedComapnyStateController{}
	var p = project.New()
	p.Exec()
	defer _wg.Done()
}

////////////////////////

/// high_point

////////////////////////

func project_high_point() {

	wg := &sync.WaitGroup{}

	wg.Add(1)
	go update_high_point(wg)
	wg.Add(1)
	go update_high_point_market(wg)

	wg.Wait()
}

func update_high_point(_wg *sync.WaitGroup) {

	defer _wg.Done()
	var project = &high_point.HighPointController{}
	var p = project.New("day")
	p.Exec()
}

func update_high_point_market(_wg *sync.WaitGroup) {

	defer _wg.Done()
	var project = &high_point.HighPointMarketController{}
	var p = project.New("day")
	p.Exec()
}

////////////////////////

/// daily

////////////////////////

func project_daily() {
	wg := &sync.WaitGroup{}

	comm_listed_company()

	wg.Add(1)
	go comm_listed_company_state(wg)
	wg.Add(1)
	go daily_price(wg)
	wg.Add(1)
	go daily_market(wg)

	wg.Wait()

}

func daily_market(_wg *sync.WaitGroup) {

	var project = &market.DailyMarketController{}
	var p = project.New("day")
	p.Exec()

	defer _wg.Done()
}

func daily_price(_wg *sync.WaitGroup) {

	var project = &price.DailyPriceController{}
	var p = project.New("day")
	p.Exec()

	defer _wg.Done()
}

////////////////////////

/// init

////////////////////////

func project_init() {
	wg := &sync.WaitGroup{}

	comm_listed_company()

	wg.Add(1)
	go comm_listed_company_state(wg)

	wg.Add(1)
	go init_price(wg)

	wg.Add(1)
	go init_market(wg)

	wg.Wait()
}

func init_market(_wg *sync.WaitGroup) {

	var project = &market.InitMarketController{}
	var p = project.New("day")
	p.Exec()

	defer _wg.Done()
}

func init_price(_wg *sync.WaitGroup) {

	var project = &price.InitPriceController{}
	var p = project.New("day")
	p.Exec()

	defer _wg.Done()

}
