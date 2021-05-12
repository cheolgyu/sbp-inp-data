package market

import (
	"fmt"

	"corplist/src"
	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/market/naver_chart"
	"corplist/src/service/file"
	"corplist/src/dao"
	"corplist/src/service/info"
)


type DailyMarketController struct{
	log controller.LogController
	up_id string
	schema_type string
}


func (c DailyMarketController) New(schema_type string) controller.TimeFrameController {
	
	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "market_"+schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c

}

func (c DailyMarketController )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("updated_market_"+c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c DailyMarketController )run(){

	c.update()

}

func (c DailyMarketController )update(){
			
	var company_list = src.GetMarketList()

	var _, last, now, next, _ = dao.SqlInfo.Select_Info("updated_market_"+c.schema_type)
	
	var startDate = ""

	if now > next {
		startDate = next
	}else if now  == last {
		startDate = last
	}
	//하루 두번할 경우 발생하는 오류방지 
	if now > next  || now  == last{

		var naver_chart_list []model.NaverChartMarket
	
		for index , item := range company_list {
			naver_chart_list = append(naver_chart_list,  naver_chart.Get(item.Short_code ,startDate, now)) 
			
			var str = fmt.Sprintf("downloading.. (%v / %v) ",index+1 ,len(company_list))
			fmt.Println(str)	
		}
	
		file.Daily_file_market(c.schema_type, naver_chart_list )
		dao.SqlMarket.Daily_market_Table()
	}




}