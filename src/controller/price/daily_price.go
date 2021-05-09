package price

import (
	// "fmt"

	"corplist/src/controller"
	// "corplist/src/model"
	// "corplist/src/service/download/price/naver_chart"
	// "corplist/src/service/file"
	// "corplist/src/dao"
	"corplist/src/service/info"
)


type DailyPriceController struct{
	log controller.LogController
	up_id string
}


func (obj DailyPriceController) New() controller.DefaultController {
	
	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "price_day",
		LogTitleP3: "start",
	}
	obj.log = log
	obj.up_id = log.Log("start")

	return obj

}

func (obj DailyPriceController )Exec(){

	obj.run()
	info.Update_Info("updated_price_day")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (obj DailyPriceController )run(){



}