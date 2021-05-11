package high_point

import (

	"corplist/src/controller"
	"corplist/src/service/info"
	"corplist/src/service/high_point"
)


type HighPointMarketController struct{
	log controller.LogController
	up_id string
	schema_type string
}


func (c HighPointMarketController) New(schema_type string) controller.TimeFrameController {
	
	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "high_point_market_"+schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c

}

func (c HighPointMarketController )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("updated_high_point_market_"+c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c HighPointMarketController )run(){
	high_point.Update_HighPoint_Market(c.schema_type)

}
