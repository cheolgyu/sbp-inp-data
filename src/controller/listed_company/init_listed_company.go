package listed_company

import (

	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/company/data_krx"
	"corplist/src/service/parse/xlsx"
	"corplist/src/service/file"
	"corplist/src/service/info"
	"corplist/src/dao"
	
)


type InitListedComapnyController struct{
	log controller.LogController
	up_id string
}

var company_list []model.Company

func (obj InitListedComapnyController) New() controller.DefaultController {
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "listed_company",
		LogTitleP3: "start",
	}

	obj.log = log
	obj.up_id = log.Exec("start")

	return obj

}

func (c InitListedComapnyController )Exec(){

	c.run()

	c.log.Exec_Upid(c.up_id,"end", "end")
	info.Update_Info("init_company")
	
}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c InitListedComapnyController )run(){

	c.Download()
	c.Parse()
	c.ReadySql()
	c.ExecSql()
}

func (c InitListedComapnyController) Download() {
	
	c.log.Exec_Upid(c.up_id,"download", "start")

	data_krx.Save()

	c.log.Exec_Upid(c.up_id,"download", "end")
}

func (c InitListedComapnyController) Parse() {

	c.log.Exec_Upid(c.up_id, "parse", "start")

	company_list = xlsx.Run()

	c.log.Exec_Upid(c.up_id, "parse", "end")
}

func (c InitListedComapnyController) ReadySql() {

	c.log.Exec_Upid(c.up_id, "seed", "start")

	file.Init_file_listed_company(company_list)

	c.log.Exec_Upid(c.up_id, "seed", "end")
}

func (c InitListedComapnyController) ExecSql() {

	c.log.Exec_Upid(c.up_id, "insert", "start")

	dao.SqlCompany.Create_company_seed()

	c.log.Exec_Upid(c.up_id, "insert", "end")
}