package price

import (
	"fmt"
	"time"

	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/price/naver_chart"
	"corplist/src/service/file"
	"corplist/src/dao"
	"corplist/src/service/info"
)


type InitPriceController struct{
	log controller.LogController
	up_id string
	schema_type string
}

func (c InitPriceController) New(schema_type string) controller.TimeFrameController {
	
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "price_"+schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")

	return c
}

func (c InitPriceController )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("init_price_"+c.schema_type)

}
//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c InitPriceController )run(){

	var company_list []model.Company = dao.SqlCompany.Select_All()
	var naver_chart_list []model.NaverChart

	var t = time.Now()
	var startDate, endDate = "19900101", fmt.Sprintf("%d%02d%02d",t.Year(), t.Month(), t.Day())

	for index , item := range company_list {

		naver_chart_list = append(naver_chart_list,  naver_chart.Get(item.Short_code ,startDate, endDate)) 
		
		var str = fmt.Sprintf("make_init_old_stocks_price (%v / %v) ",index+1 ,len(company_list))
		fmt.Println(str)	

	}
	file.Init_file_price(c.schema_type, naver_chart_list)
	dao.SqlPrice.Create_price_Table()

}