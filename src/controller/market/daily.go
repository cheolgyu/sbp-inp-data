package market

import (
	"corplist/src"
	"corplist/src/controller"
	"corplist/src/dao"
	"corplist/src/service/info"
	"corplist/src/service/naver_chart"
)

type DailyMarketController struct {
	log         controller.LogController
	up_id       string
	schema_type string
}

func (c DailyMarketController) New(schema_type string) controller.TimeFrameController {

	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "market_" + schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c

}

func (c DailyMarketController) Exec() {

	c.run()
	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("updated_market_" + c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c DailyMarketController) run() {

	c.update()

}

func (c *DailyMarketController) update() {

	var _, start, end = dao.SqlInfo.SelectGetDate("updated_market_" + c.schema_type)

	svc := naver_chart.One{
		Item:        "market",
		Fnm:         src.Info["seed"]["path"]["market-daily"],
		Seednm:      src.Info["seed"]["name"]["market-daily"],
		List:        GetMarketList(),
		Schema_type: c.schema_type,
		Start:       start,
		End:         end,
	}

	svc.Exec()

}
