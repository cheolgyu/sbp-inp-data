package listed_company

import (
	"github/cheolgyu/stock/backend/dbment/src"
	"github/cheolgyu/stock/backend/dbment/src/controller"
	"github/cheolgyu/stock/backend/dbment/src/model"
	"github/cheolgyu/stock/backend/dbment/src/service/data_krx"
	"github/cheolgyu/stock/backend/dbment/src/service/info"
)

type CommListedComapnyStateController struct {
	log   controller.LogController
	up_id string
}

var list []model.CompanyState

func (obj CommListedComapnyStateController) New() controller.DefaultController {
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "listed_company_state",
		LogTitleP3: "start",
	}

	obj.log = log
	obj.up_id = log.Exec("start")

	return obj

}

func (c CommListedComapnyStateController) Exec() {

	c.run()

	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("init_company_state")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c CommListedComapnyStateController) run() {

	svc := data_krx.One{
		Item:     "company_state",
		ExcelFnm: src.Info["download"]["path"]["company_state"],
		Fnm:      src.Info["seed"]["path"]["company_state-init"],
		Seednm:   src.Info["seed"]["name"]["company_state-init"],
	}
	svc.Exec()
}
