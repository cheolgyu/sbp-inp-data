package handler

import (
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	"github.com/tealeg/xlsx"
)

/*

1. Splitting old and new code

2. insert new code

3. select list code && Splitting old and new code

4. update public.tb_code, company.detail, company.state

*/
var Config map[string]int
var MetaCode_StockOld map[string]int
var MetaCode_MarketOld map[string]int

func init() {
	log.SetFlags(log.LstdFlags | log.Lshortfile)

	SetConfig()
	MetaCode_StockOld = SetMetaCode_StockOld(Config["stock"])
	MetaCode_MarketOld = SetMetaCode_StockOld(Config["market"])
}

func SetConfig() {
	config, err := dao.GetConfig()
	log.Println(config)
	ChkErr(err)
	Config = config
	//log.Println("Config=", len(Config))
}

func SetMetaCode_StockOld(code_type int) map[string]int {
	cl, err := dao.GetCode(code_type)
	//log.Println("MetaCode_StockOld=", cl)
	ChkErr(err)
	elementMap := make(map[string]int)
	for _, data := range cl {
		elementMap[data.Code] = data.Id
	}
	return elementMap
	//log.Println("MetaCode_StockOld=", len(MetaCode_StockOld))
}

func CompanyHandler() {
	log.Println(" CompanyHandler  start")

	handler := Company{}
	handler.Load()
	handler.Save()

	log.Println(" CompanyHandler  end")
}

type Company struct {
	// k: code, v : id
	MetaCodeNew []string
	PubCompany  CompanyList
	Detail      DetailList
	State       StateList
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
		if _, exist := MetaCode_StockOld[detail.Code]; !exist {
			o.MetaCodeNew = append(o.MetaCodeNew, detail.Code)
		} else {
			detail.Code_id = MetaCode_StockOld[detail.Code]
		}

		o.Detail.List = append(o.Detail.List, detail)

		o.PubCompany.List = append(o.PubCompany.List, model.Company{
			Code:        detail.Code,
			Name:        detail.Name,
			Code_type:   Config["stock"],
			Market_type: Config[detail.Market],
		})
	}

	o.State.Load()
}
func (o *Company) Save() {
	dao.InsertMateCode(o.MetaCodeNew, Config["stock"])

	MetaCode_StockOld = SetMetaCode_StockOld(Config["stock"])

	for i, v := range o.Detail.List {
		if v.Code_id == 0 {
			o.Detail.List[i].Code_id = MetaCode_StockOld[v.Code]
		}
	}

	StateMap := make(map[string]bool)

	for i, v := range o.State.List {
		StateMap[v.Code] = v.Stop

		if v.Code_id == 0 {
			o.State.List[i].Code_id = MetaCode_StockOld[v.Code]
		}
	}

	for i, v := range o.PubCompany.List {
		if v.Code_id == 0 {
			o.PubCompany.List[i].Code_id = MetaCode_StockOld[v.Code]
		}
		o.PubCompany.List[i].Stop = StateMap[v.Code]
	}

	o.PubCompany.Save()
	o.Detail.Save()
	o.State.Save()

}

type CompanyList struct {
	List []model.Company
}

//회사 코드목록 조회
func (o *CompanyList) GetCompanyCode() {
	list, err := dao.GetCompanyCode()
	ChkErr(err)
	o.List = list

}

//마켓 코드목록
func (o *CompanyList) GetMarketCode() {
	for i := range model.MarketList {
		o.List = append(o.List, model.Company{
			Code: model.MarketList[i],
			//Name: model.MarketListName[i],
		})
	}
}

func (o *CompanyList) Save() {
	err := dao.InsertCompany(o.List)
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
		state.Code_id = MetaCode_StockOld[state.Code]
		o.List = append(o.List, state)
	}
}
func (o *StateList) Save() {
	err := dao.InsertCompanyState(o.List)
	ChkErr(err)
}
