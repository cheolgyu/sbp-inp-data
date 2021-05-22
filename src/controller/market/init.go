package market

import (
	"fmt"
	"time"

	"github/cheolgyu/stock/backend/dbment/src"
	"github/cheolgyu/stock/backend/dbment/src/controller"
	"github/cheolgyu/stock/backend/dbment/src/service/info"
	"github/cheolgyu/stock/backend/dbment/src/service/naver_chart"
)

type InitMarketController struct {
	log         controller.LogController
	up_id       string
	schema_type string
}

func (c InitMarketController) New(schema_type string) controller.TimeFrameController {

	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "market_" + schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c
}

func (c InitMarketController) Exec() {

	c.run()
	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("init_market_" + c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c InitMarketController) run() {

	var t = time.Now()
	var start = src.GetStartDate("init-market")
	var end = fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())

	svc := naver_chart.Each{
		Item:        "market",
		List:        GetMarketList(),
		Schema_type: c.schema_type,
		Seednm:      src.Info["seed"]["name"]["market-init"],
		Start:       start,
		End:         end,
	}

	svc.Exec()

}
