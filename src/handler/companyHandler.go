package handler

import (
	"fmt"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	xlsx "github.com/tealeg/xlsx/v3"
)

func CompanyHandler() {
	handler := Company{}
	handler.Load()
	handler.Save()

	//log.Println(handler)
}

type Company struct {
	Code   CodeList
	Detail DetailList
	State  StateList
}

func (o *Company) Load() {
	f_download := c.DOWNLOAD_DIR_COMPANY_DETAIL + c.DOWNLOAD_FILENAME_COMPANY_DETAIL
	if c.DownloadCompany {
		download_data_krx := download.Data_krx{
			Object: c.COMPANY_DETAIL,
		}
		download_data_krx.Run()
	}

	xlFile, err := xlsx.OpenFile(f_download)
	if err != nil {
		panic(err)
	}

	sheet := xlFile.Sheets[0]
	for i := 1; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		_, content := model.RowGet(row)
		detail := model.StringToCompanyDetail(content)

		o.Detail.List = append(o.Detail.List, detail)

		o.Code.List = append(o.Code.List, model.CompanyCode{
			Code: detail.Code,
			Name: detail.Name,
		})
	}

	o.State.Load()
}
func (o *Company) Save() {
	//o.Code.Save()
	//o.Detail.Save()
	o.State.Save()

}

type CodeList struct {
	List []model.CompanyCode
}

func (o *CodeList) Save() {
	client := db.Conn()
	q := "select company.insert_company_code(ARRAY[ "
	max := len(o.List)
	for i := range o.List {
		q += o.SQLFormat(i)
		if i+1 != max {
			q += ","
		}
	}
	q += "]);"
	row, err := client.Query(q)
	ChkErr(err)
	defer row.Close()
	defer client.Close()
}
func (o *CodeList) SQLFormat(i int) string {
	return fmt.Sprintf("ARRAY['%s','%s']", o.List[i].Code, o.List[i].Name)
}

type DetailList struct {
	List []model.CompanyDetail
}

func (o *DetailList) Save() {
	client := db.Conn()
	q := "select company.insert_company_detail(ARRAY[ "
	max := len(o.List)
	for i := range o.List {
		q += o.SQLFormat(i)
		if i+1 != max {
			q += ","
		}
	}
	q += "]);"

	row, err := client.Query(q)
	ChkErr(err)
	defer row.Close()
	defer client.Close()

}
func (o *DetailList) SQLFormat(idx int) string {
	i := o.List[idx]
	return fmt.Sprintf("ARRAY['%s','%s','%s','%s','%s'   ,'%s','%s','%s','%s','%s'  ,'%s']",
		i.Code, i.Full_code, i.Full_name_kr, i.Full_name_eng, i.Listing_date,
		i.Market, i.Securities_classification, i.Department, i.Stock_type, i.Face_value,
		i.Listed_stocks)
}

type StateList struct {
	List []model.CompanyState
}

func (o *StateList) Load() {
	f_download := c.DOWNLOAD_DIR_COMPANY_STATE + c.DOWNLOAD_FILENAME_COMPANY_STATE
	if c.DownloadCompany {
		download_data_krx := download.Data_krx{
			Object: c.COMPANY_STATE,
		}
		download_data_krx.Run()
	}

	xlFile, err := xlsx.OpenFile(f_download)
	if err != nil {
		panic(err)
	}

	sheet := xlFile.Sheets[0]
	for i := 1; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		_, content := model.RowGet(row)
		state := model.StringToCompanyState(content)

		o.List = append(o.List, state)

	}
}
func (o *StateList) Save() {
	client := db.Conn()
	q := "select company.insert_company_state(ARRAY[ "
	max := len(o.List)
	for i := range o.List {
		q += o.SQLFormat(i)
		if i+1 != max {
			q += ","
		}
	}
	q += "]);"

	row, err := client.Query(q)
	ChkErr(err)
	defer row.Close()
	defer client.Close()

}
func (o *StateList) SQLFormat(idx int) string {
	i := o.List[idx]
	return fmt.Sprintf("ARRAY['%s','%t','%t','%t','%t'   ,'%t','%t','%t','%t','%t'  ,'%t','%t']",
		i.Code, i.Stop, i.Clear, i.Managed, i.Ventilation,
		i.Unfaithful, i.Low_liquidity, i.Lack_listed, i.Overheated, i.Caution,
		i.Warning, i.Risk)
}
