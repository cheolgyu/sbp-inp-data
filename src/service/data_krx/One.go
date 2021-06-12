package data_krx

import (
	"log"
	"sync"

	"github.com/cheolgyu/stock/backend/dbment/src/dao"
	"github.com/cheolgyu/stock/backend/dbment/src/model"
	"github.com/cheolgyu/stock/backend/dbment/src/utils/download/company/data_krx"
	"github.com/cheolgyu/stock/backend/dbment/src/utils/file"
	parse_xlsx "github.com/cheolgyu/stock/backend/dbment/src/utils/parse/xlsx"

	"github.com/tealeg/xlsx"
)

type One struct {
	Item, ExcelFnm, Fnm, Seednm string
}

func (o *One) Exec() {

	var ch_company chan model.Company = make(chan model.Company)
	var ch_companyState chan model.CompanyState = make(chan model.CompanyState)
	var ch_res chan bool = make(chan bool)

	o.load_switch()

	f := file.CreateFile(o.Fnm)
	file.Write(f, "-- name: "+o.Seednm)

	xlFile, err := xlsx.OpenFile(o.ExcelFnm)
	if err != nil {
		panic(err)
	}

	var sheet = xlFile.Sheets[0]
	var lines = len(sheet.Rows)

	wg := &sync.WaitGroup{}

	switch o.Item {
	case "company":
		for i := 1; i < lines; i++ {

			wg.Add(1)
			go func(row *xlsx.Row) {
				defer wg.Done()

				obj_parse := parse_xlsx.ReadCompany(row)
				ch_company <- obj_parse

			}(sheet.Rows[i])

			_item := <-ch_company

			wg.Add(1)
			go func(item model.Company) {
				defer wg.Done()

				file.Write_Comm_file_listed_company(f, item)
				ch_res <- true

			}(_item)

			<-ch_res

		}
	case "company_state":
		for i := 1; i < lines; i++ {

			wg.Add(1)
			go func(row *xlsx.Row) {
				defer wg.Done()

				obj_parse := parse_xlsx.ReadCompanyState(row)
				ch_companyState <- obj_parse

			}(sheet.Rows[i])

			_item := <-ch_companyState

			wg.Add(1)
			go func(item model.CompanyState) {
				defer wg.Done()

				file.Write_Comm_file_listed_company_state(f, item)
				ch_res <- true

			}(_item)

			<-ch_res

		}
	}

	wg.Wait()
	log.Println(o.Item, "시드파일 완성.")

	defer f.Close()

	dao.SqlSeed.Run(o.Fnm, o.Seednm)

}

func (o *One) load_switch() {

	switch o.Item {
	case "company":
		data_krx.ListedCompanyBaisc{}.Save()
	case "company_state":
		data_krx.ListedCompanyState{}.Save()

	}
}
