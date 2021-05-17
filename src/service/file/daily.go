package file

import (
	"fmt"
	"log"

	"corplist/src"
	"corplist/src/model"
)

func Daily_file_price(schema_type string, arr []model.NaverChart) {

	fmt.Println("daily-sql 을 만드는 중입니다.")
	var fnm = src.Info["seed"]["path"]["price-daily"]
	var seednm = src.Info["seed"]["name"]["price-daily"]

	f := CreateFile(fnm)

	defer f.Close()
	var str = "-- name: " + seednm + "\n"

	for _, item := range arr {
		var schema_nm = item.GetSchemaName(schema_type)
		var tb_nm = item.GetTableName()

		if len(item.DayList) > 0 {

			for _, j := range item.DayList {
				str += `INSERT INTO "` + schema_nm + `"."` + tb_nm + `" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES`
				str += fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate)
				str += `
				ON CONFLICT ("Date")
				DO 
				UPDATE SET
				"OpenPrice" = '` + fmt.Sprintf("%v", j.OpenPrice) + `',
				"HighPrice" = '` + fmt.Sprintf("%v", j.HighPrice) + `',
				"LowPrice" = '` + fmt.Sprintf("%v", j.LowPrice) + `',
				"ClosePrice" = '` + fmt.Sprintf("%v", j.ClosePrice) + `',
				"Volume" = '` + fmt.Sprintf("%v", j.Volume) + `',
				"ForeignerBurnoutRate" = '` + fmt.Sprintf("%v", j.ForeignerBurnoutRate) + `'
				`
				str += "; \n"
			}

		}

	}

	_, err2 := f.WriteString(str)

	if err2 != nil {
		log.Fatal(err2)
	}
	fmt.Println("sql을 완성했습니다.")

}

func Daily_file_market(schema_type string, arr []model.NaverChartMarket) {

	var fnm = src.Info["seed"]["path"]["market-daily"]
	var seednm = src.Info["seed"]["name"]["market-daily"]
	f := CreateFile(fnm)

	defer f.Close()

	var str = "-- name: " + seednm + "\n"

	for _, item := range arr {
		var schema_nm = item.GetSchemaName(schema_type)
		var tb_nm = item.GetTableName()

		// arr 가 비었으면 오류 안나게
		str += `select 1 ;`
		if len(item.List) > 0 {

			for _, j := range item.List {
				str += `INSERT INTO "` + schema_nm + `"."` + tb_nm + `" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES`
				str += fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate)
				str += `
				ON CONFLICT ("Date")
				DO 
				UPDATE SET
				"OpenPrice" = '` + fmt.Sprintf("%v", j.OpenPrice) + `',
				"HighPrice" = '` + fmt.Sprintf("%v", j.HighPrice) + `',
				"LowPrice" = '` + fmt.Sprintf("%v", j.LowPrice) + `',
				"ClosePrice" = '` + fmt.Sprintf("%v", j.ClosePrice) + `',
				"Volume" = '` + fmt.Sprintf("%v", j.Volume) + `',
				"ForeignerBurnoutRate" = '` + fmt.Sprintf("%v", j.ForeignerBurnoutRate) + `'
				`
				str += "; \n"
			}

		}

	}

	_, err2 := f.WriteString(str)

	if err2 != nil {
		log.Fatal(err2)
	}

}
