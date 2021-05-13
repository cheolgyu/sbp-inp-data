package src

import (
	"fmt"
	"time"

	"corplist/src/model"
)

var Info map[string]string

func init() {
	Info = map[string]string{
		"path-company":                "listed_company.xlsx",
		"path-company_state":          "company_state.xlsx",
		"":                            "",
		"url-krx-company-code":        "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd",
		"url-krx-company-data":        "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd",
		"url-krx-company_state-code":  "http://data.krx.co.kr/comm/fileDn/GenerateOTP/generate.cmd",
		"url-krx-company_state-data":  "http://data.krx.co.kr/comm/fileDn/download_excel/download.cmd",
		"seed-nm-init-compnay":        "create-company-table-seed",
		"seed-nm-init-price":          "create-price-table-seed",
		"seed-nm-init-market":         "create-market-table-seed",
		"seed-fnm-init-compnay":       "migrations/company/seed.sql",
		"seed-fnm-init-price":         "",
		"seed-fnm-init-market":        "",
		"seed-nm-init-compnay_state":  "create-company_state-table-seed",
		"seed-fnm-init-compnay_state": "migrations/company/seed_state.sql",
		"seed-nm-daily-compnay":       "",
		"seed-fnm-daily-price":        "migrations/price/daily.sql",
		"seed-nm-daily-price":         "daily-price-table-seed",
		"seed-fnm-daily-market":       "migrations/market/daily.sql",
		"seed-nm-daily-market":        "daily-market-table-seed",
		"seed-nm-daily-compnay_state": "",
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
