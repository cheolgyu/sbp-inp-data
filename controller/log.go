package controller


import (
	"log"
	"corplist/testmodel"
)


var LogTitls map[string]map[string]map[string] string
var LogTitleP1 string
var LogTitleP2 string
var LogTitleP3 string



type LogController struct{
  
    LogTitleP1 string
	LogTitleP2 string
	LogTitleP3 string

	Content string
}

func (controller LogController) Log(content string)  {
	controller.Content = content
	log.Println("LogController===========",controller)
	
	var m = testmodel.ListedCompany{}
	m.Exec()

	
}
  

func init() {
	
	LogTitls = map[string]map[string]map[string] string {
		"init" : {	
			"listed_company": {
				"start": "Start the listed_company initialization process",
				"download": "Start downloading the listed_company",
				"parse": "Start parsing the listed_company.",
				"seed": "Start seeding the listed_company.",
				"insert": "Start inserting the listed_company.",
				"end": "End the listed_company initialization process",
			},
			"price_day": {
				"start": "Start the price_day initialization process",
				"download": "Start downloading the price_day",
				"parse": "Start parsing the price_day.",
				"seed": "Start seeding the price_day.",
				"insert": "Start inserting the price_day.",
				"end": "End the price_day initialization process",
			},
		},
		"update":{
			"listed_company":{
				"start": "Start the listed_company update process",
			},
			"price_day":{
				"start": "Start the price_day update process",
				"download": "Start downloading the price_day",
				"parse": "Start parsing the price_day.",
				"seed": "Start seeding the price_day.",
				"insert": "Start inserting the price_day.",
				"end": "End the price_day update process",
			},
			"high_point_day":{
				"start": "Start the high_point_day update process",
			},
		},

	} 

}


func My_Contorller() string{


	return "AAAAAAAAAAAAA"
}