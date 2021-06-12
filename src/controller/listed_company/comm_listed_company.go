package listed_company

import (
	"github.com/cheolgyu/stock-write/src"
	"github.com/cheolgyu/stock-write/src/controller"
	"github.com/cheolgyu/stock-write/src/service/data_krx"
	"github.com/cheolgyu/stock-write/src/service/info"
)

type CommListedComapnyController struct {
	log      controller.LogController
	Run_Type string
}

func (c *CommListedComapnyController) New() controller.DefaultController {

	c.log.LogTitleP1 = c.Run_Type
	c.log.LogTitleP2 = "listed_company"
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_company"

	c.log.Init()

	return c

}

func (c *CommListedComapnyController) Exec() {

	c.run()

	c.log.End()
	info.Update_Info(c.Run_Type + "_company")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c *CommListedComapnyController) run() {

	svc := data_krx.One{
		Item:     "company",
		ExcelFnm: src.Info["download"]["path"]["company"],
		Fnm:      src.Info["seed"]["path"]["company-init"],
		Seednm:   src.Info["seed"]["name"]["company-init"],
	}
	svc.Exec()
}
