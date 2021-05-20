package file

import (
	"corplist/src/model"
	"fmt"
	"os"
)

func Write_Daily_file_price(f *os.File, schema_type string, item model.NaverChart) {

	var schema_nm = item.GetSchemaName(schema_type)
	var tb_nm = item.GetTableName()

	if len(item.DayList) > 0 {

		// 신규 상장 회사가 있을 경우 오류나기 때문에 추가함.
		Write(f, `
			CREATE TABLE IF NOT EXISTS "`+schema_nm+`"."`+tb_nm+`" (
				"Date" integer NOT NULL UNIQUE ,
				"OpenPrice" integer,
				"HighPrice" integer,
				"LowPrice" integer,
				"ClosePrice" integer,
				"Volume" integer,
				"ForeignerBurnoutRate" double precision
			);
			`)

		for _, j := range item.DayList {

			Write(f, `INSERT INTO "`+schema_nm+`"."`+tb_nm+`" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES`)
			Write(f, fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate))
			Write(f, `
				ON CONFLICT ("Date")
				DO 
				UPDATE SET
				"OpenPrice" = '`+fmt.Sprintf("%v", j.OpenPrice)+`',
				"HighPrice" = '`+fmt.Sprintf("%v", j.HighPrice)+`',
				"LowPrice" = '`+fmt.Sprintf("%v", j.LowPrice)+`',
				"ClosePrice" = '`+fmt.Sprintf("%v", j.ClosePrice)+`',
				"Volume" = '`+fmt.Sprintf("%v", j.Volume)+`',
				"ForeignerBurnoutRate" = '`+fmt.Sprintf("%v", j.ForeignerBurnoutRate)+`'
				; `)
		}

	}

}

func Write_Daily_file_market(f *os.File, schema_type string, item model.NaverChartMarket) {

	var schema_nm = item.GetSchemaName(schema_type)
	var tb_nm = item.GetTableName()

	// arr 가 비었으면 오류 안나게
	Write(f, `select 1 ;`)
	if len(item.List) > 0 {

		for _, j := range item.List {
			Write(f, `INSERT INTO "`+schema_nm+`"."`+tb_nm+`" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate") VALUES`)
			Write(f, fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate))
			Write(f, `
				ON CONFLICT ("Date")
				DO 
				UPDATE SET
				"OpenPrice" = '`+fmt.Sprintf("%v", j.OpenPrice)+`',
				"HighPrice" = '`+fmt.Sprintf("%v", j.HighPrice)+`',
				"LowPrice" = '`+fmt.Sprintf("%v", j.LowPrice)+`',
				"ClosePrice" = '`+fmt.Sprintf("%v", j.ClosePrice)+`',
				"Volume" = '`+fmt.Sprintf("%v", j.Volume)+`',
				"ForeignerBurnoutRate" = '`+fmt.Sprintf("%v", j.ForeignerBurnoutRate)+`'
				;`)
		}

	}
}
