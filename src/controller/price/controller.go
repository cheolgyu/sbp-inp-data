package price

import (
	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/model"
	"github.com/cheolgyu/stock/backend/dbment/src/service/naver_chart"
)

type PriceController struct {
	Object    string
	StartDate string
	EndDate   string
	List      []model.Company
	log       controller.LogController
}

func (c *PriceController) New() controller.DefaultController {

	c.log.LogTitleP1 = src.RunType
	c.log.LogTitleP2 = c.Object
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_" + c.log.LogTitleP2
	c.log.Init()

	return c
}

func (c *PriceController) Exec() {

	c.run()
	c.log.End()

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c *PriceController) run() {

	svc := naver_chart.ChartService{
		Params: naver_chart.Params{
			Object:    c.Object,
			StartDate: c.StartDate,
			EndDate:   c.EndDate,
		},

		List: c.List,
	}

	if src.RunType == "daily" {
		svc.OneFileRun()
	} else {
		svc.EachFileExec()
	}

}
