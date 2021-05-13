package controller

import (
	"corplist/src/dao"
)

var LogTitls map[string]map[string]map[string]string
var LogTitleP1 string
var LogTitleP2 string
var LogTitleP3 string

type LogController struct {
	Up_id string

	LogTitleP1 string
	LogTitleP2 string
	LogTitleP3 string

	Content string
}

func (c LogController) Exec(content string) string {

	c.Content = content
	var title = LogTitls[c.LogTitleP1][c.LogTitleP2][c.LogTitleP3]
	var up_id = dao.SqlLog.Insert_Log(title, content)

	return up_id
}

func (c LogController) Exec_Upid(up_id string, logTitleP3 string, content string) {
	c.Content = content
	c.LogTitleP3 = logTitleP3
	var title = LogTitls[c.LogTitleP1][c.LogTitleP2][c.LogTitleP3]

	dao.SqlLog.Insert_Log_With_Up_id(up_id, title, content)
}

func init() {

	LogTitls = map[string]map[string]map[string]string{
		"init": {
			"listed_company": {
				"start":    "Start the listed_company initialization process",
				"download": "Start downloading the listed_company",
				"parse":    "Start parsing the listed_company.",
				"seed":     "Start seeding the listed_company.",
				"insert":   "Start inserting the listed_company.",
				"end":      "End the listed_company initialization process",
			}, "listed_company_state": {
				"start":    "Start the listed_company initialization process",
				"download": "Start downloading the listed_company",
				"parse":    "Start parsing the listed_company.",
				"seed":     "Start seeding the listed_company.",
				"insert":   "Start inserting the listed_company.",
				"end":      "End the listed_company initialization process",
			},
			"price_day": {
				"start":    "Start the price_day initialization process",
				"download": "Start downloading the price_day",
				"parse":    "Start parsing the price_day.",
				"seed":     "Start seeding the price_day.",
				"insert":   "Start inserting the price_day.",
				"end":      "End the price_day initialization process",
			},
			"market_day": {
				"start":    "Start the market_day initialization process",
				"download": "Start downloading the market_day",
				"parse":    "Start parsing the market_day.",
				"seed":     "Start seeding the market_day.",
				"insert":   "Start inserting the market_day.",
				"end":      "End the market_day initialization process",
			},
		},
		"update": {
			"listed_company": {
				"start": "Start the listed_company update process",
			},
			"price_day": {
				"start":    "Start the price_day update process",
				"download": "Start downloading the price_day",
				"parse":    "Start parsing the price_day.",
				"seed":     "Start seeding the price_day.",
				"insert":   "Start inserting the price_day.",
				"end":      "End the price_day update process",
			},
			"high_point_day": {
				"start": "Start the high_point_day update process",
				"end":   "Start the high_point_day update process",
			},
			"high_point_market_day": {
				"start": "Start the high_point_market_day update process",
				"end":   "Start the high_point_market_day update process",
			},
			"market_day": {
				"start":    "Start the market_day update process",
				"download": "Start downloading the market_day",
				"parse":    "Start parsing the market_day.",
				"seed":     "Start seeding the market_day.",
				"insert":   "Start inserting the market_day.",
				"end":      "End the market_day update process",
			},
		},
	}

}
