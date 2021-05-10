package price

import (
	"fmt"

	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/price/naver_chart"
	"corplist/src/service/file"
	"corplist/src/dao"
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

	obj.update()

}

func (obj DailyPriceController )update(){

	
	var _, startDate, endDate, _, _ = dao.SqlInfo.Select_Info("updated_price_day")

	var company_list []model.Company = dao.SqlCompany.Select_All()
	var schema_type = "day"
	var naver_chart_list []model.NaverChart

	for index , item := range company_list {
		naver_chart_list = append(naver_chart_list,  naver_chart.Get(item.Short_code ,startDate, endDate)) 
		
		var str = fmt.Sprintf("downloading.. (%v / %v) ",index+1 ,len(company_list))
		fmt.Println(str)	
	}

	file.Daily_file_price(schema_type, naver_chart_list )
	dao.SqlPrice.Daily_price_Table()

	obj.log.Log_With_Up_id(obj.up_id,"end")


}