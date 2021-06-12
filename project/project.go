package project

import (
	"fmt"
	"log"
	"sync"
	"time"

	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/controller/high_point"
	"github.com/cheolgyu/stock/backend/dbment/src/controller/listed_company"
	"github.com/cheolgyu/stock/backend/dbment/src/controller/price"
	"github.com/cheolgyu/stock/backend/dbment/src/dao"
)

type Project struct {
}

var run_type string

func (p *Project) Run(arg string) {

	switch arg {
	case "init":
		run_type = "init"
		src.RunType = run_type
		src.Debug = false
		setProcess_LogID()
		p.Init()
	case "daily":
		run_type = "daily"
		src.RunType = run_type
		src.Debug = false
		setProcess_LogID()
		p.Daily()

	case "test":
		src.RunType = "daily"
		setProcess_LogID()

		_, start, end := dao.SqlInfo.SelectGetDate("daily_market")
		p_controller := &price.PriceController{
			Object:    "market",
			StartDate: start,
			EndDate:   end,
			List:      price.GetMarketList(),
		}
		p_controller.New()
		p_controller.Exec()

	default:
		log.Printf("init or daily   go run . -run=daily    ")
	}
}

func setProcess_LogID() {
	log_controller := controller.LogController{}
	log_controller.Process_LogID(run_type)
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
	project.Run_Type = run_type
	var p = project.New()
	p.Exec()

}

func comm_listed_company_state(_wg *sync.WaitGroup) {

	var project = &listed_company.CommListedComapnyStateController{}
	project.Run_Type = run_type
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
	hp_controller := &high_point.HighPointController{Object: "price"}
	hp_controller.New()
	hp_controller.Exec()
}

func update_high_point_market(_wg *sync.WaitGroup) {

	defer _wg.Done()
	hp_controller := &high_point.HighPointController{Object: "market"}
	hp_controller.New()
	hp_controller.Exec()
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

	_, start, end := dao.SqlInfo.SelectGetDate("daily_market")
	p_controller := &price.PriceController{
		Object:    "market",
		StartDate: start,
		EndDate:   end,
		List:      price.GetMarketList(),
	}
	p_controller.New()
	p_controller.Exec()

	defer _wg.Done()
}

func daily_price(_wg *sync.WaitGroup) {

	_, start, end := dao.SqlInfo.SelectGetDate("daily_price")
	p_controller := &price.PriceController{
		Object:    "price",
		StartDate: start,
		EndDate:   end,
		List:      price.GetMarketList(),
	}
	p_controller.New()
	p_controller.Exec()

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

	t := time.Now()
	start := src.GetStartDate("init-market")
	end := fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())

	p_controller := &price.PriceController{
		Object:    "market",
		StartDate: start,
		EndDate:   end,
		List:      price.GetMarketList(),
	}
	p_controller.New()
	p_controller.Exec()

	defer _wg.Done()
}

func init_price(_wg *sync.WaitGroup) {

	t := time.Now()
	start := src.GetStartDate("init-price")
	end := fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())

	p_controller := &price.PriceController{
		Object:    "price",
		StartDate: start,
		EndDate:   end,
		List:      price.GetMarketList(),
	}
	p_controller.New()
	p_controller.Exec()

	defer _wg.Done()

}
