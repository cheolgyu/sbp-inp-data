package price

import (
	"fmt"
	"time"

	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/dao"
	"github.com/cheolgyu/stock/backend/dbment/src/service/naver_chart"
)

type InitPriceController struct {
	log         controller.LogController
	schema_type string
}

func (c *InitPriceController) New(schema_type string) controller.TimeFrameController {

	c.log.LogTitleP1 = "init"
	c.log.LogTitleP2 = "price_" + schema_type
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_" + c.log.LogTitleP2
	c.log.Init()

	c.schema_type = schema_type

	return c
}

func (c *InitPriceController) Exec() {

	c.run()
	c.log.End()

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c *InitPriceController) run() {

	var t = time.Now()
	var start = src.GetStartDate("init-price")
	var end = fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())

	svc := naver_chart.Each{
		Item:        "price",
		List:        dao.SqlCompany.Select_All(),
		Schema_type: c.schema_type,
		Seednm:      src.Info["seed"]["name"]["price-init"],
		Start:       start,
		End:         end,
	}

	svc.Exec()

}
