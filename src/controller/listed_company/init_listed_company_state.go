package listed_company

import (
	"corplist/src"
	"corplist/src/controller"
	"corplist/src/dao"
	"corplist/src/model"
	"corplist/src/service/download/company/data_krx"
	"corplist/src/service/file"
	"corplist/src/service/info"
	"corplist/src/service/parse/xlsx"
)

type InitListedComapnyStateController struct {
	log   controller.LogController
	up_id string
}

var list []model.CompanyState

func (obj InitListedComapnyStateController) New() controller.DefaultController {
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "listed_company_state",
		LogTitleP3: "start",
	}

	obj.log = log
	obj.up_id = log.Exec("start")

	return obj

}

func (c InitListedComapnyStateController) Exec() {

	c.run()

	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("init_company_state")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c InitListedComapnyStateController) run() {

	c.Download()
	c.Parse()
	c.ReadySql()
	c.ExecSql()
}

func (c InitListedComapnyStateController) Download() {

	c.log.Exec_Upid(c.up_id, "download", "start")

	data_krx.ListedCompanyState{}.Save()

	c.log.Exec_Upid(c.up_id, "download", "end")
}

func (c InitListedComapnyStateController) Parse() {

	c.log.Exec_Upid(c.up_id, "parse", "start")

	list = xlsx.RunCompanyState()

	c.log.Exec_Upid(c.up_id, "parse", "end")
}

func (c InitListedComapnyStateController) ReadySql() {

	c.log.Exec_Upid(c.up_id, "seed", "start")

	file.Init_file_listed_company_state(list)

	c.log.Exec_Upid(c.up_id, "seed", "end")
}

func (c InitListedComapnyStateController) ExecSql() {

	c.log.Exec_Upid(c.up_id, "insert", "start")

	var fnm = src.Info["seed"]["path"]["compnay_state-init"]
	var seednm = src.Info["seed"]["name"]["compnay_state-init"]
	dao.SqlSeed.Run(fnm, seednm)

	c.log.Exec_Upid(c.up_id, "insert", "end")
}
