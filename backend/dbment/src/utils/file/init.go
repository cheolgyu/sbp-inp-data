package file

import (
	"fmt"

	"os"

	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/model"
)

func Write_Comm_file_listed_company(f *os.File, item model.Company) {

	Write(f, `SELECT "insert_listed_company" ('`+item.Full_code+`', '`+item.Short_code+`', '`+item.Full_name_kr+`', '`+item.Short_name_kr+`', '`+item.Full_name_eng+`', '`+item.Listing_date+`', '`+item.Market+`', '`+item.Securities_classification+`', '`+item.Department+`', '`+item.Stock_type+`', '`+item.Face_value+`', '`+item.Listed_stocks+`');`)

}

func Write_Comm_file_listed_company_state(f *os.File, item model.CompanyState) {
	if len(item.Code) > 0 {
		Write(f, `
		INSERT INTO "listed_company_state" 
			("code", "name", "stop", "clear", "managed", 
			"ventilation", "unfaithful", "low_liquidity", "lack_listed", "overheated", 
			"caution", "warning", "risk", "created_date", "updated_date")
		VALUES 
		`)

		Write(f,
			fmt.Sprintf("(		'%v',  '%v',  %v,  %v,  %v,    %v,  %v,  %v, %v,  %v,       %v,  %v,  %v,now(),  now() ) ",
				item.Code, item.Name, item.Stop, item.Clear, item.Managed,
				item.Ventilation, item.Unfaithful, item.Low_liquidity, item.Lack_listed, item.Overheated,
				item.Caution, item.Warning, item.Risk,
			))
		Write(f, `
				ON CONFLICT ("code")
				DO 
				UPDATE SET
				"stop" = '`+fmt.Sprintf("%v", item.Stop)+`',
				"clear" = '`+fmt.Sprintf("%v", item.Clear)+`',
				"managed" = '`+fmt.Sprintf("%v", item.Managed)+`',
				
				"ventilation" = '`+fmt.Sprintf("%v", item.Ventilation)+`',
				"unfaithful" = '`+fmt.Sprintf("%v", item.Unfaithful)+`',
				"low_liquidity" = '`+fmt.Sprintf("%v", item.Low_liquidity)+`',
				"lack_listed" = '`+fmt.Sprintf("%v", item.Lack_listed)+`',
				"overheated" = '`+fmt.Sprintf("%v", item.Overheated)+`',

				"caution" = '`+fmt.Sprintf("%v", item.Caution)+`',
				"warning" = '`+fmt.Sprintf("%v", item.Warning)+`',
				"risk" = '`+fmt.Sprintf("%v", item.Risk)+`',
				"updated_date" = now()
				;
				`)
	}

}

func Write_Init_file_price(f *os.File, schema_type string, item model.NaverChart) {

	var seednm = src.Info["seed"]["name"]["price-init"]

	var schema_nm = item.GetSchemaName(schema_type)
	var tb_nm = item.GetTableName()

	Write(f, "-- name: "+seednm)

	Write(f, `
		DROP TABLE IF EXISTS "`+schema_nm+`"."`+tb_nm+`";
		CREATE TABLE "`+schema_nm+`"."`+tb_nm+`" (
			"Date" integer NOT NULL UNIQUE ,
			"OpenPrice" integer,
			"HighPrice" integer,
			"LowPrice" integer,
			"ClosePrice" integer,
			"Volume" integer,
			"ForeignerBurnoutRate" double precision
		);
		INSERT INTO "`+schema_nm+`"."`+tb_nm+`" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate")
		VALUES 
		`)

	for j_index, j := range item.DayList {
		Write(f, fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate))
		if j_index+1 == len(item.DayList) {
			Write(f, " ; ")
		} else {
			Write(f, " , ")
		}
	}

}

func Write_Init_file_market(f *os.File, schema_type string, item model.NaverChartMarket) {

	var seednm = src.Info["seed"]["name"]["market-init"]

	var schema_nm = item.GetSchemaName(schema_type)
	var tb_nm = item.GetTableName()

	Write(f, "-- name: "+seednm)
	Write(f, `
		DROP TABLE IF EXISTS "`+schema_nm+`"."`+tb_nm+`";
		CREATE TABLE "`+schema_nm+`"."`+tb_nm+`" (
			"Date" integer NOT NULL UNIQUE ,
			"OpenPrice" double precision,
			"HighPrice" double precision,
			"LowPrice" double precision,
			"ClosePrice" double precision,
			"Volume" integer,
			"ForeignerBurnoutRate" double precision
		);
		INSERT INTO "`+schema_nm+`"."`+tb_nm+`" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate")
		VALUES 
		`)

	for j_index, j := range item.List {
		Write(f, fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate))
		if j_index+1 == len(item.List) {
			Write(f, " ; ")
		} else {
			Write(f, " , ")
		}
	}

}