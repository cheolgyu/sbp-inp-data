package listed_company

import (

	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/company/data_krx"
	"corplist/src/service/parse/xlsx"
	"corplist/src/service/file"
	"corplist/src/dao"
	
)


type InitListedComapnyController struct{
	log controller.LogController
	up_id string
}


var Obj InitListedComapnyController
var company_list []model.Company

func init(){}

func New_Controller() InitListedComapnyController {
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "listed_company",
		LogTitleP3: "start",
	}

	return InitListedComapnyController{
		log: log,
		up_id: log.Log("start"),
	}

}

func (obj InitListedComapnyController )Exec(){

	obj.run()
	// update info 테이블 
	// 
	
}

func (obj InitListedComapnyController )run(){

	obj.Download()
	obj.Parse()
	obj.ReadySql()
	obj.ExecSql()
	obj.log.LogTitleP3 = "end"
	obj.log.Log_With_Up_id(obj.up_id,"end")
}

func (c InitListedComapnyController) Download() {
	
	c.log.LogTitleP3 = "download"
	c.log.Log_With_Up_id(c.up_id,"start")

	data_krx.Save()

	c.log.Log_With_Up_id(c.up_id,"end")
}

func (c InitListedComapnyController) Parse() {

	c.log.LogTitleP3 = "parse"
	c.log.Log_With_Up_id(c.up_id,"start")

	company_list = xlsx.Run()

	c.log.Log_With_Up_id(c.up_id,"end")
}

func (c InitListedComapnyController) ReadySql() {

	c.log.LogTitleP3 = "seed"
	c.log.Log_With_Up_id(c.up_id,"start")

	file.Make_file_listed_company(company_list)

	c.log.Log_With_Up_id(c.up_id,"end")
}

func (c InitListedComapnyController) ExecSql() {

	c.log.LogTitleP3 = "insert"
	c.log.Log_With_Up_id(c.up_id,"start")


	dao.SqlCompany.Create_company_seed()

	c.log.Log_With_Up_id(c.up_id,"end")
}