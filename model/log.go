package model

import (
	"fmt"
)

type Log struct {
	Id string
	Up_id string
	Title string
	Content string
}
var LogTitls map[string]map[string]map[string] string

func init() {

	
	LogTitls := map[string]map[string]map[string] string {
		"init" : {	
			"corp": {
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
			"corp":{
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

	fmt.Println("hello world ",LogTitls)
}


