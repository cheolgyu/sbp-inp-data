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

4. update public.company, company.detail, company.state

*/
var meta_code_stock map[string]int
var arr_company map[string]model.Company
var meta_code_new map[string]int

func init() {
	meta_code_new = make(map[string]int)
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

func ExecCompanyHandler() {
	meta_code_stock = getMetaCode(c.Config["stock"])

	log.Println(" CompanyHandler  start")

	handler := CompanyHandler{}
	handler.init()

	handler.DetailList.download()
	handler.StateList.download()
	handler.insertNewMetaCode()
	handler.mergeCompanyList()
	handler.CompanyList.insert()

	_, _arr_company_update, _ := dao.SelectPublicCompany()
	arr_company = _arr_company_update

	handler.DetailList.insert()
	handler.StateList.insert()

	log.Println(" CompanyHandler  end")
}

type CompanyHandler struct {
	// k: code, v : id
	CompanyList
	DetailList
	StateList

	StateMap map[string]bool
}

func (o *CompanyHandler) init() {
	o.StateMap = make(map[string]bool)
	o.CompanyList.Map = make(map[string]model.Company)
}

func (o *CompanyHandler) insertNewMetaCode() {
	keys := make([]string, 0, len(meta_code_new))
	for k := range meta_code_new {
		keys = append(keys, k)
	}

	log.Println("welcome new code  ", keys)

	dao.InsertMateCode(keys, c.Config["stock"])
	meta_code_stock = getMetaCode(c.Config["stock"])
}

/*

기존은 detail.xlsx을 기준으로 meta.code와 company를 구성하였지만.

state.xlsx 에만 신규 상장된 종목이 있을경우 에도 구성하기위해 추가함.

Market_type: 9999,

*/
func (o *CompanyHandler) mergeCompanyList() {

	for _, v := range o.StateList.List {
		mc := model.Company{
			Code_id:     meta_code_stock[v.Code],
			Code:        v.Code,
			Name:        v.Name,
			Code_type:   c.Config["stock"],
			Market_type: 9999,
			Stop:        v.Stop,
		}
		o.CompanyList.Map[v.Code] = mc
	}

	for _, v := range o.DetailList.List {

		detail_mc := model.Company{
			Code_id:     meta_code_stock[v.Code],
			Code:        v.Code,
			Name:        v.Name,
			Code_type:   c.Config["stock"],
			Market_type: c.Config[v.Market],
		}

		state_mc, exist := o.CompanyList.Map[v.Code]
		if exist {
			detail_mc.Stop = state_mc.Stop
		}

		o.CompanyList.Map[v.Code] = detail_mc

	}

	for _, v := range o.CompanyList.Map {
		o.CompanyList.List = append(o.CompanyList.List, v)
	}
}

type CompanyList struct {
	List []model.Company
	Map  map[string]model.Company
}

func (o *CompanyList) insert() {

	err := dao.InsertCompany(o.List)
	ChkErr(err)

}

type DetailList struct {
	List []model.CompanyDetail
}

func (o *DetailList) download() {
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
			meta_code_new[detail.Code] = 1
		}
		o.List = append(o.List, detail)
	}

}

func (o *DetailList) insert() {
	for i, v := range o.List {
		o.List[i].Company = arr_company[v.Code]
	}

	err := dao.InsertCompanyDetail(o.List)
	ChkErr(err)
}

type StateList struct {
	List []model.CompanyState
}

func (o *StateList) download() {
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

		if _, exist := meta_code_stock[state.Code]; !exist {
			meta_code_new[state.Code] = 1
		}

		o.List = append(o.List, state)

	}
}
func (o *StateList) insert() {

	for i, v := range o.List {
		o.List[i].Company = arr_company[v.Code]
	}

	err := dao.InsertCompanyState(o.List)
	ChkErr(err)
}
