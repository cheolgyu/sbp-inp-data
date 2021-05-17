package price

import (
	"corplist/src"
	"corplist/src/controller"
	"corplist/src/dao"
	"corplist/src/model"
	"corplist/src/service/download/price/naver_chart"
	"corplist/src/service/file"
	"corplist/src/service/info"
	"fmt"
)

type DailyPriceController struct {
	log         controller.LogController
	up_id       string
	schema_type string
}

func (c DailyPriceController) New(schema_type string) controller.TimeFrameController {

	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "price_" + schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c

}

func (c DailyPriceController) Exec() {

	c.run()
	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("updated_price_" + c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c DailyPriceController) run() {

	c.update()

}

func (c DailyPriceController) update() {

	var _, start, end = dao.SqlInfo.SelectGetDate("updated_price_" + c.schema_type)

	var company_list []model.Company = dao.SqlCompany.Select_All()
	var naver_chart_list []model.NaverChart

	var print_last = 0

	for index, item := range company_list {
		naver_chart_list = append(naver_chart_list, naver_chart.Get(item.Short_code, start, end))

		var per = (index + 1) * 100 / len(company_list)

		if print_last != per {
			var str = fmt.Sprintf("%v개 종목 downloading...  (%v / 100) ", len(company_list), per)
			fmt.Println(str)
			print_last = per
		}

	}

	file.Daily_file_price(c.schema_type, naver_chart_list)
	var fnm = src.Info["seed"]["path"]["price-daily"]
	var seednm = src.Info["seed"]["name"]["price-daily"]
	dao.SqlSeed.Run(fnm, seednm)

}
