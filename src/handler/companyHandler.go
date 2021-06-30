package handler

import (
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	"github.com/tealeg/xlsx"
)

func CompanyHandler() {
	log.Println(" CompanyHandler  start")
	handler := Company{}
	handler.Load()
	handler.Save()

	log.Println(" CompanyHandler  end")
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
		log.Println("오류발생.CompanyHandler.xlFile.DOWNLOAD_DIR_COMPANY_DETAIL ")
		log.Panic(err)
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
		log.Println("오류발생.CompanyHandler.xlFile.StateList ")
		log.Panic(err)
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
