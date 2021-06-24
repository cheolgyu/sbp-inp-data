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
<<<<<<< HEAD
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

=======
func (o *Company) Save() {
	o.Code.Save()
	o.Detail.Save()
	o.State.Save()

}

type CodeList struct {
	List []model.CompanyCode
}

//회사 코드목록 조회
func (o *CodeList) GetCompanyCode() {
	list, err := dao.GetCompanyCode()
	ChkErr(err)
	o.List = list

}

//마켓 코드목록
func (o *CodeList) GetMarketCode() {
	for i := range model.MarketList {
		o.List = append(o.List, model.CompanyCode{
			Code: model.MarketList[i],
			Name: model.MarketListNmae[i],
		})
	}
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
>>>>>>> postgresql
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
<<<<<<< HEAD
func (o *StateSave) Save() {
	o.Relpace.SetColl(c.DB, c.COLL_COMPANY_STATE)
	o.Relpace.Run()
=======
func (o *StateList) Save() {
	err := dao.InsertCompanyState(o.List)
	ChkErr(err)
>>>>>>> postgresql
}
