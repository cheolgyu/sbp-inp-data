package handler

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	"github.com/tealeg/xlsx"
	"go.mongodb.org/mongo-driver/bson"
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

		o.Detail.Relpace.Filter = append(o.Detail.Relpace.Filter, bson.M{"_id": detail.Code})
		o.Detail.Relpace.Data = append(o.Detail.Relpace.Data, detail)

		o.Code.Relpace.Filter = append(o.Code.Relpace.Filter, bson.M{"_id": detail.Code})
		o.Code.Relpace.Data = append(o.Code.Relpace.Data, model.CompanyCode{
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
	Relpace dao.Relpace
}

//코드목록 조회
func (o *CodeList) SelectAll() {

}

func (o *CodeList) Save() {
	o.Relpace.SetColl(c.COLL_CODE)
	o.Relpace.Run()
}

type DetailList struct {
	Relpace dao.Relpace
}

func (o *DetailList) Save() {
	o.Relpace.SetColl(c.COLL_COMPANY_DETAIL)
	o.Relpace.Run()
}

type StateList struct {
	Relpace dao.Relpace
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

		o.Relpace.Filter = append(o.Relpace.Filter, bson.M{"_id": state.Code})
		o.Relpace.Data = append(o.Relpace.Data, state)

	}
}
func (o *StateList) Save() {
	o.Relpace.SetColl(c.COLL_COMPANY_STATE)
	o.Relpace.Run()
}
