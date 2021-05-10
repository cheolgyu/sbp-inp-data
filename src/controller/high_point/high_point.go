package high_point

import (

	"corplist/src/controller"
	"corplist/src/service/info"
	"corplist/src/service/high_point"
)


type HighPointontroller struct{
	log controller.LogController
	up_id string
	schema_type string
}


func (c HighPointontroller) New(schema_type string) controller.TimeFrameController {
	
	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "high_point_"+schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c

}

func (c HighPointontroller )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("updated_high_point_"+c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c HighPointontroller )run(){
	high_point.Update_HighPoint(c.schema_type)

}
