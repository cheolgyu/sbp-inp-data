package listed_company

import (
	"github.com/cheolgyu/stock-write/src"
	"github.com/cheolgyu/stock-write/src/controller"
	"github.com/cheolgyu/stock-write/src/service/data_krx"
)

type CommListedComapnyStateController struct {
	log      controller.LogController
	Run_Type string
}

func (c *CommListedComapnyStateController) New() controller.DefaultController {

	c.log.LogTitleP1 = c.Run_Type
	c.log.LogTitleP2 = "listed_company_state"
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_company_state"
	c.log.Init()

	return c

}

func (c *CommListedComapnyStateController) Exec() {

	c.run()

	c.log.End()

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c *CommListedComapnyStateController) run() {

	svc := data_krx.One{
		Item:     "company_state",
		ExcelFnm: src.Info["download"]["path"]["company_state"],
		Fnm:      src.Info["seed"]["path"]["company_state-init"],
		Seednm:   src.Info["seed"]["name"]["company_state-init"],
	}
	svc.Exec()
}
