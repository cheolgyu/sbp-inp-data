package listed_company

import (
	"github/cheolgyu/stock/backend/dbment/src"
	"github/cheolgyu/stock/backend/dbment/src/controller"
	"github/cheolgyu/stock/backend/dbment/src/service/data_krx"
	"github/cheolgyu/stock/backend/dbment/src/service/info"
)

type CommListedComapnyController struct {
	log   controller.LogController
	up_id string
}

func (obj CommListedComapnyController) New() controller.DefaultController {
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "listed_company",
		LogTitleP3: "start",
	}

	obj.log = log
	obj.up_id = log.Exec("start")

	return obj

}

func (c CommListedComapnyController) Exec() {

	c.run()

	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("init_company")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c CommListedComapnyController) run() {

	svc := data_krx.One{
		Item:     "company",
		ExcelFnm: src.Info["download"]["path"]["company"],
		Fnm:      src.Info["seed"]["path"]["company-init"],
		Seednm:   src.Info["seed"]["name"]["company-init"],
	}
	svc.Exec()
}
