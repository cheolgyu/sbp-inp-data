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
				"start": "init-corp-begin",
				"download": "init-corp-download",
				"parse": "init-corp-parse",
				"seed": "init-corp-seed",
				"insert": "init-corp-insert",
				"end": "init-corp-end",
			},
			"price_day": {
				"start": "init-price_day-begin",
				"download": "init-price_day-download",
				"parse": "init-price_day-parse",
				"seed": "init-price_day-seed",
				"insert": "init-price_day-insert",
				"end": "init-price_day-end",
			},
		},
		"update":{
			"corp":{
				"begin": "Start the corp_basic update process",
			},
			"price_day":{
				"start": "Start the price_day update process",
				"download": "update-price_day-download",
				"parse": "update-price_day-parse",
				"seed": "update-price_day-seed",
				"insert": "update-price_day-insert",
				"end": "update-price_day-end",
			},
			"high_point_day":{
				"begin": "update-high_point_day-begin",
			},
		},

	} 

	fmt.Println("hello world ",LogTitls)
}


