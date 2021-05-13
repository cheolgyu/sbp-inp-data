package file

import (
	"fmt"
	"log"

	"corplist/src/model"
	"os"
)

func Init_file_listed_company(seed []model.Company) {

	f, err := os.Create("migrations/company/seed.sql")

	if err != nil {
		log.Fatal(err)
	}

	defer f.Close()

	_, err2 := f.WriteString("-- name: create-company-table-seed" + "\n")

	if err2 != nil {
		log.Fatal(err2)
	}

	for _, item := range seed {
		_, err2 := f.WriteString(`SELECT "insert_listed_company" ('` + item.Full_code + `', '` + item.Short_code + `', '` + item.Full_name_kr + `', '` + item.Short_name_kr + `', '` + item.Full_name_eng + `', '` + item.Listing_date + `', '` + item.Market + `', '` + item.Securities_classification + `', '` + item.Department + `', '` + item.Stock_type + `', '` + item.Face_value + `', '` + item.Listed_stocks + `');` + "\n")
		if err2 != nil {
			log.Fatal(err2)
		}
	}

	if err2 != nil {
		log.Fatal(err2)
	}

	fmt.Println("done")

}

func Init_file_price(schema_type string, arr []model.NaverChart) {

	for _, item := range arr {
		var schema_nm = item.GetSchemaName(schema_type)
		var tb_nm = item.GetTableName()

		f, err := os.Create(item.GetSeedFilePath())

		if err != nil {
			log.Fatal(err)
		}

		defer f.Close()

		var str = `
		-- name: create-price-table-seed
		`

		str += `
		DROP TABLE IF EXISTS "` + schema_nm + `"."` + tb_nm + `";
		CREATE TABLE "` + schema_nm + `"."` + tb_nm + `" (
			"Date" integer NOT NULL UNIQUE ,
			"OpenPrice" integer,
			"HighPrice" integer,
			"LowPrice" integer,
			"ClosePrice" integer,
			"Volume" integer,
			"ForeignerBurnoutRate" double precision
		);
		INSERT INTO "` + schema_nm + `"."` + tb_nm + `" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate")
		VALUES 
		`

		for j_index, j := range item.DayList {
			str += fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate)
			if j_index+1 == len(item.DayList) {
				str += " ; \n"
			} else {
				str += ", \n"
			}
		}

		_, err2 := f.WriteString(str)

		if err2 != nil {
			log.Fatal(err2)
		}

	}

}

func Init_file_market(schema_type string, arr []model.NaverChartMarket) {

	var err = os.MkdirAll(arr[0].GetTemFilePath(), 0755)
	if err != nil {
		log.Fatal(err)
	}

	for _, item := range arr {
		var schema_nm = item.GetSchemaName(schema_type)
		var tb_nm = item.GetTableName()

		f, err := os.Create(item.GetSeedFilePath())

		if err != nil {
			log.Fatal(err)
		}

		defer f.Close()

		var str = `
		-- name: create-market-table-seed
		`

		str += `
		DROP TABLE IF EXISTS "` + schema_nm + `"."` + tb_nm + `";
		CREATE TABLE "` + schema_nm + `"."` + tb_nm + `" (
			"Date" integer NOT NULL UNIQUE ,
			"OpenPrice" double precision,
			"HighPrice" double precision,
			"LowPrice" double precision,
			"ClosePrice" double precision,
			"Volume" integer,
			"ForeignerBurnoutRate" double precision
		);
		INSERT INTO "` + schema_nm + `"."` + tb_nm + `" ("Date", "OpenPrice", "HighPrice", "LowPrice", "ClosePrice", "Volume", "ForeignerBurnoutRate")
		VALUES 
		`

		for j_index, j := range item.List {
			str += fmt.Sprintf("(%v, %v, %v, %v, %v, %v,%v) ", j.Date, j.OpenPrice, j.HighPrice, j.LowPrice, j.ClosePrice, j.Volume, j.ForeignerBurnoutRate)
			if j_index+1 == len(item.List) {
				str += " ; \n"
			} else {
				str += ", \n"
			}
		}

		_, err2 := f.WriteString(str)

		if err2 != nil {
			log.Fatal(err2)
		}

	}

}
