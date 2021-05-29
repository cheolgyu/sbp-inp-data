package market

import (
	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/dao"
	"github.com/cheolgyu/stock/backend/dbment/src/service/naver_chart"
)

type DailyMarketController struct {
	log         controller.LogController
	schema_type string
}

func (c *DailyMarketController) New(schema_type string) controller.TimeFrameController {

	c.log.LogTitleP1 = "daily"
	c.log.LogTitleP2 = "market_" + schema_type
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_" + c.log.LogTitleP2
	c.log.Init()

	c.schema_type = schema_type

	return c

}

func (c *DailyMarketController) Exec() {

	c.run()
	c.log.End()

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c DailyMarketController) run() {

	c.update()

}

func (c *DailyMarketController) update() {

	var _, start, end = dao.SqlInfo.SelectGetDate("daily_market_" + c.schema_type)

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
