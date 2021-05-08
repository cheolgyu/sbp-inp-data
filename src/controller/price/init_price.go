package price

import (
	"fmt"

	"corplist/src/controller"
	"corplist/src/model"
	"corplist/src/service/download/price/naver_chart"
	"corplist/src/service/file"
	"corplist/src/dao"
	
)


type InitPriceController struct{
	log controller.LogController
	up_id string
}


var Obj InitPriceController

func init(){}

func New_Controller() InitPriceController {
	var log = controller.LogController{
		LogTitleP1: "init",
		LogTitleP2: "price_day",
		LogTitleP3: "start",
	}

	return InitPriceController{
		log: log,
		up_id: log.Log("start"),
	}

}

func (obj InitPriceController )Exec(){

	obj.run()
	
	// update info 테이블 
	// 

}

func (obj InitPriceController )run(){

	var company_list []model.Company = dao.SqlCompany.Select_All()
	var schema_type = "day"

	for index , item := range company_list {
		var price_list = naver_chart.Get(item)
		file.Make_file_price(schema_type, item.Short_code, price_list)
		dao.SqlPrice.Create_price_Table()
		
		var str = fmt.Sprintf("make_init_old_stocks_price (%v / %v) ",index ,len(company_list))
		fmt.Println(str)	

	}
	obj.log.Log_With_Up_id(obj.up_id,"end")

}