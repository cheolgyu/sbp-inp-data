package price

import (
	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/dao"
	"github.com/cheolgyu/stock/backend/dbment/src/service/naver_chart"
)

type DailyPriceController struct {
	log         controller.LogController
	schema_type string
}

func (c *DailyPriceController) New(schema_type string) controller.TimeFrameController {

	c.log.LogTitleP1 = "daily"
	c.log.LogTitleP2 = "price_" + schema_type
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_" + c.log.LogTitleP2
	c.log.Init()

	c.schema_type = schema_type

	return c
}

func (c *DailyPriceController) Exec() {

	c.run()
	c.log.End()

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c *DailyPriceController) run() {

	var _, start, end = dao.SqlInfo.SelectGetDate("daily_price_" + c.schema_type)

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
