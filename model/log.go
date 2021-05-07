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
			"quote_day": {
				"start": "init-quote_day-begin",
				"download": "init-quote_day-download",
				"parse": "init-quote_day-parse",
				"seed": "init-quote_day-seed",
				"insert": "init-quote_day-insert",
				"end": "init-quote_day-end",
			},
		},
		"update":{
			"corp":{
				"begin": "Start the corp_basic update process",
			},
			"quote_day":{
				"start": "Start the quote_day update process",
				"download": "update-quote_day-download",
				"parse": "update-quote_day-parse",
				"seed": "update-quote_day-seed",
				"insert": "update-quote_day-insert",
				"end": "update-quote_day-end",
			},
			"high_point_day":{
				"begin": "update-high_point_day-begin",
			},
		},

	} 

	fmt.Println("hello world ",LogTitls)
}


