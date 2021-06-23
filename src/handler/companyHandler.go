package handler

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	"github.com/tealeg/xlsx"
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
		row := sheet.Row(i)
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
	o.Code.Save()
	o.Detail.Save()
	o.State.Save()

}

type CodeList struct {
	List []model.CompanyCode
}

//코드목록 조회
func (o *CodeList) SelectAll() {
	list, err := dao.GetCompanyCode()
	ChkErr(err)
	o.List = list

}

func (o *CodeList) Save() {
	err := dao.InsertCompanyCode(o.List)
	ChkErr(err)

}

type DetailList struct {
	List []model.CompanyDetail
}

func (o *DetailList) Save() {
	err := dao.InsertCompanyDetail(o.List)
	ChkErr(err)
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
		row := sheet.Row(i)
		_, content := model.RowGet(row)
		state := model.StringToCompanyState(content)

		o.List = append(o.List, state)

	}
}
func (o *StateList) Save() {
	err := dao.InsertCompanyState(o.List)
	ChkErr(err)
}
