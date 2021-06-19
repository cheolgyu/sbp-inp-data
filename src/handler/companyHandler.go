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
	handler := CompanySave{}
	handler.Load()
	handler.Save()

	//log.Println(handler)
}

type CompanySave struct {
	Code   dao.Relpace
	Detail dao.Relpace
	State  StateSave
}

func (o *CompanySave) Load() {
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

		o.Detail.Filter = append(o.Detail.Filter, bson.M{"_id": detail.Code})
		o.Detail.Data = append(o.Detail.Data, detail)

		o.Code.Filter = append(o.Code.Filter, bson.M{"_id": detail.Code})
		o.Code.Data = append(o.Code.Data, model.CompanyCode{
			Code: detail.Code,
			Name: detail.Name,
		})
	}

	o.State.Load()
}
func (o *CompanySave) Save() {
	o.Code.SetColl(c.DB, c.COLL_CODE)
	o.Code.Run()
	info := dao.InsertInfo{}
	info.Updated(c.COLL_CODE)

	o.Detail.SetColl(c.DB, c.COLL_COMPANY_DETAIL)
	o.Detail.Run()
	info = dao.InsertInfo{}
	info.Updated(c.COLL_COMPANY_DETAIL)

	o.State.Relpace.SetColl(c.DB, c.COLL_COMPANY_STATE)
	o.State.Relpace.Run()
	info = dao.InsertInfo{}
	info.Updated(c.COLL_COMPANY_STATE)

}

type StateSave struct {
	Relpace dao.Relpace
}

func (o *StateSave) Load() {
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
func (o *StateSave) Save() {
	o.Relpace.SetColl(c.DB, c.COLL_COMPANY_STATE)
	o.Relpace.Run()
}
