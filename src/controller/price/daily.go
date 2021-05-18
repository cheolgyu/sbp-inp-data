package price

import (
	"corplist/src"
	"corplist/src/controller"
	"corplist/src/dao"
	"corplist/src/service/info"
	"corplist/src/service/naver_chart"
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

func (c *DailyPriceController) run() {

	var _, start, end = dao.SqlInfo.SelectGetDate("updated_price_" + c.schema_type)

	svc := naver_chart.One{
		Item:        "price",
		Fnm:         src.Info["seed"]["path"]["price-daily"],
		Seednm:      src.Info["seed"]["name"]["price-daily"],
		List:        dao.SqlCompany.Select_All(),
		Schema_type: c.schema_type,
		Start:       start,
		End:         end,
	}

	svc.Exec()

}
