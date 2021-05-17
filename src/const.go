package src

import (
	"fmt"
	"os"
	"time"

	"corplist/src/model"
)

var Info map[string]map[string]map[string]string

func init() {

	Info = map[string]map[string]map[string]string{

		"download": {
			"path": {
				"dir":           "tmp/file/",
				"company":       "tmp/file/listed_company.xlsx",
				"company_state": "tmp/file/company_state.xlsx",
			},
			"url": {
				"krx-company-code":       "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd",
				"krx-company-data":       "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd",
				"krx-company_state-code": "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd",
				"krx-company_state-data": "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd",
			},
		},
		"seed": {
			"name": {
				"company-init":       "init-company",
				"company_state-init": "init-company_state",
				"price-init":         "init-price",
				"price-daily":        "daily-price",
				"market-init":        "init-market",
				"market-daily":       "daily-market",
			},
			"path": {
				"company-init":       "tmp/seed/company/seed.sql",
				"company_state-init": "tmp/seed/company/seed_state.sql",
				"price-daily":        "tmp/seed/price/daily.sql",
				"market-daily":       "tmp/seed/market/daily.sql",
				"market-dir":         "tmp/seed/market/seed",
				"price-dir":          "tmp/seed/price/seed",
				"company-dir":        "tmp/seed/company",
			},
		},
	}

	var arr_mkDir = []string{
		Info["download"]["path"]["dir"],
		Info["seed"]["path"]["company-dir"],
		Info["seed"]["path"]["market-dir"],
		Info["seed"]["path"]["price-dir"],
	}

	for _, item := range arr_mkDir {
		mkdirAll(item)
	}

}

func mkdirAll(path string) {

	err := os.MkdirAll(path, 0755)
	if err != nil {
		panic(err)
	}

}

func GetStartDate(str string) string {

	now := time.Now()
	var res = ""

	switch str {
	case "init-price":
		// 3달전
		convM := 3
		t := now.AddDate(0, -convM, 0)
		res = fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())
	case "init-market":
		// 3달전
		convM := 3
		t := now.AddDate(0, -convM, 0)
		res = fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())
	}

	return res
}

func GetMarketList() []model.Company {

	var company_list = []model.Company{
		model.Company{
			Short_code: "KOSPI",
		}, model.Company{
			Short_code: "KOSDAQ",
		}, model.Company{
			Short_code: "KPI200",
		},
	}
	return company_list
}
