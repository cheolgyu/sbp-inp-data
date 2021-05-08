package listed_company

import (

	"corplist/controller"

)


type InitListedComapnyController struct{
	controller.LogController
}


var T1 InitListedComapnyController

func init(){
	T1 = InitListedComapnyController{
		controller.LogController{
			LogTitleP1: "init",
			LogTitleP2: "listed_company",
			LogTitleP3: "start",
		},
	}

}

func Exec_InitListedComapnyController(){
	T1.LogController.Log("start")
	T1.Download()
	T1.Parse()
	T1.ReadySql()
	T1.ExecSql()
	T1.LogController.LogTitleP3 = "end"
	T1.LogController.Log("end")
}

func (c InitListedComapnyController) Download() {
	c.LogController.LogTitleP3 = "download"
	c.LogController.Log("start")







	c.LogController.Log("end")
}

func (c InitListedComapnyController) Parse() {
	c.LogController.LogTitleP3 = "parse"
	c.LogController.Log("start")









	c.LogController.Log("end")
}

func (c InitListedComapnyController) ReadySql() {
	c.LogController.LogTitleP3 = "seed"
	c.LogController.Log("start")









	c.LogController.Log("end")
}

func (c InitListedComapnyController) ExecSql() {
	c.LogController.LogTitleP3 = "insert"
	c.LogController.Log("start")










	c.LogController.Log("end")
}