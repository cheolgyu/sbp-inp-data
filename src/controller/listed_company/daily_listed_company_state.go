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

type DailyListedComapnyStateController struct {
	log   controller.LogController
	up_id string
	list  []model.CompanyState
}

func (obj DailyListedComapnyStateController) New() controller.DefaultController {
	var log = controller.LogController{
		LogTitleP1: "daily",
		LogTitleP2: "listed_company_state",
		LogTitleP3: "start",
	}

	obj.log = log
	obj.up_id = log.Exec("start")

	return obj

}

func (c DailyListedComapnyStateController) Exec() {

	c.run()

	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("updated_company_state")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c DailyListedComapnyStateController) run() {

	c.Download()
	c.Parse()
	c.ReadySql()
	c.ExecSql()
}

func (c *DailyListedComapnyStateController) Download() {

	c.log.Exec_Upid(c.up_id, "download", "start")

	data_krx.ListedCompanyState{}.Save()

	c.log.Exec_Upid(c.up_id, "download", "end")
}

func (c *DailyListedComapnyStateController) Parse() {

	c.log.Exec_Upid(c.up_id, "parse", "start")

	c.list = xlsx.RunCompanyState()

	c.log.Exec_Upid(c.up_id, "parse", "end")
}

func (c *DailyListedComapnyStateController) ReadySql() {

	c.log.Exec_Upid(c.up_id, "seed", "start")

	file.Init_file_listed_company_state(c.list)

	c.log.Exec_Upid(c.up_id, "seed", "end")
}

func (c *DailyListedComapnyStateController) ExecSql() {

	c.log.Exec_Upid(c.up_id, "insert", "start")

	var fnm = src.Info["seed"]["path"]["company_state-init"]
	var seednm = src.Info["seed"]["name"]["company_state-init"]
	dao.SqlSeed.Run(fnm, seednm)

	c.log.Exec_Upid(c.up_id, "insert", "end")
}
