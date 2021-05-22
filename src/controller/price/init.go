package price

import (
	"fmt"
	"github/cheolgyu/stock/backend/dbment/src"
	"github/cheolgyu/stock/backend/dbment/src/controller"
	"github/cheolgyu/stock/backend/dbment/src/dao"
	"github/cheolgyu/stock/backend/dbment/src/service/info"
	"github/cheolgyu/stock/backend/dbment/src/service/naver_chart"
	"time"
)

type InitPriceController struct {
	log         controller.LogController
	up_id       string
	schema_type string
}

func (c InitPriceController) New(schema_type string) controller.TimeFrameController {

	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "price_" + schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c
}

func (c InitPriceController) Exec() {

	c.run()
	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("init_price_" + c.schema_type)

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
