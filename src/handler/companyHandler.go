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

1. 종목목록 다운로드

2. meta.code에 없으면 추가

3. public.company 에 meta.code(id) 넣어서 저장

4. public.company_detail, company_state 에 code_id 넣어서 저장

etc)
select * from public.company where code_id =1; -- 2줄나옴

select * from only public.company where code_id =1; -- 1줄나옴. only 키워드 필요시 붙이기.

*/

/*

1. Splitting old and new code

2. insert new code

3. select list code && Splitting old and new code

4. update public.tb_code, company.detail, company.state

*/
var meta_code_stock map[string]int

func init() {

}

func getMetaCode(code_type int) map[string]int {
	cl, err := dao.GetCode(code_type)
	//log.Println("code_stock=", cl)
	ChkErr(err)
	elementMap := make(map[string]int)
	for _, data := range cl {
		elementMap[data.Code] = data.Id
	}
	return elementMap
	//log.Println("code_stock=", len(code_stock))
}

func CompanyHandler() {
	meta_code_stock = getMetaCode(c.Config["stock"])

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
		if _, exist := meta_code_stock[detail.Code]; !exist {
			o.MetaCodeNew = append(o.MetaCodeNew, detail.Code)
		} else {
			detail.Code_id = meta_code_stock[detail.Code]
		}

		o.Detail.List = append(o.Detail.List, detail)

		o.PubCompany.List = append(o.PubCompany.List, model.Company{
			Code:        detail.Code,
			Name:        detail.Name,
			Code_type:   c.Config["stock"],
			Market_type: c.Config[detail.Market],
		})
	}

	o.State.Load()
}
func (o *Company) Save() {
	dao.InsertMateCode(o.MetaCodeNew, c.Config["stock"])
	meta_code_stock = getMetaCode(c.Config["stock"])

	StateMap := make(map[string]bool)
	for _, v := range o.State.List {
		StateMap[v.Code] = v.Stop
	}
	for i, v := range o.PubCompany.List {
		o.PubCompany.List[i].Code_id = meta_code_stock[v.Code]
		o.PubCompany.List[i].Stop = StateMap[v.Code]
	}
	o.PubCompany.Save()
	_, arr_company, _ := dao.SelectPublicCompany()

	for i, v := range o.Detail.List {
		o.Detail.List[i].Company = arr_company[v.Code]
	}
	for i, v := range o.State.List {
		StateMap[v.Code] = v.Stop
		o.State.List[i].Company = arr_company[v.Code]
	}
	o.Detail.Save()
	o.State.Save()

}

type CompanyList struct {
	List []model.Company
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
		state.Code_id = meta_code_stock[state.Code]
		o.List = append(o.List, state)
	}
}
func (o *StateList) Save() {
	err := dao.InsertCompanyState(o.List)
	ChkErr(err)
}
