package high_point

import (

	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/price/naver_chart"
	"corplist/src/service/file"
	"corplist/src/dao"
	"corplist/src/service/info"
)


type HighPointontroller struct{
	log controller.LogController
	up_id string
}


func (c HighPointontroller) New() controller.DefaultController {
	
	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "high_point_day",
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")

	return c

}

func (c HighPointontroller )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("updated_high_point_day")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c HighPointontroller )run(){


}