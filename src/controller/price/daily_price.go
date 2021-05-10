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


func (c DailyPriceController) New() controller.DefaultController {
	
	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "price_day",
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")

	return c

}

func (c DailyPriceController )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("updated_price_day")

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c DailyPriceController )run(){

	c.update()

}

func (c DailyPriceController )update(){

	
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



}