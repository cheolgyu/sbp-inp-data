package market

import (
	"fmt"
	"time"

	"corplist/src"
	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/market/naver_chart"
	"corplist/src/service/file"
	"corplist/src/dao"
	"corplist/src/service/info"
)


type InitMarketController struct{
	log controller.LogController
	up_id string
	schema_type string
}

func (c InitMarketController) New(schema_type string) controller.TimeFrameController {
	
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "market_"+schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c
}

func (c InitMarketController )Exec(){

	c.run()
	c.log.Exec_Upid(c.up_id,"end","end")
	info.Update_Info("init_market_"+c.schema_type)

}
//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c InitMarketController )run(){

	var company_list = src.GetMarketList()
	var naver_chart_list []model.NaverChartMarket

	var t = time.Now()
	var startDate, endDate = src.GetStartDate("init-market"), fmt.Sprintf("%d%02d%02d",t.Year(), t.Month(), t.Day())

	for index , item := range company_list {

		naver_chart_list = append(naver_chart_list,  naver_chart.Get(item.Short_code ,startDate, endDate)) 
		
		if (index+1) % 10 == 0  {
			var str = fmt.Sprintf("make_init_old_stocks_market (%v / %v) ",index+1 ,len(company_list))
			fmt.Println(str)
		}
	

	}

	fmt.Println("sql 쿼리 작성 시작")	
	c.log.Exec_Upid(c.up_id,"seed","start")
	file.Init_file_market(c.schema_type, naver_chart_list)
	c.log.Exec_Upid(c.up_id,"seed","end")
	fmt.Println("sql 쿼리 작성 끝")	

	fmt.Println("sql insert 시작")
	c.log.Exec_Upid(c.up_id,"insert","start")
	dao.SqlMarket.Create_market_Table(naver_chart_list)
	c.log.Exec_Upid(c.up_id,"insert","end")
	fmt.Println("sql insert 끝")	

}