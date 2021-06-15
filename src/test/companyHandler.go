package test

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils"
	"github.com/cheolgyu/stock-write/src/utils/download"
	xlsx "github.com/tealeg/xlsx/v3"
)

type CompanyHandler struct {
	Object    string
	downFile  string
	writeFile string
}

func (o *CompanyHandler) init() {

	// 엑셀다운 (상세,상태)
	download_data_krx := download.Data_krx{
		Object: o.Object,
	}
	download_data_krx.Run()
	if o.Object == c.COMPANY_DETAIL {
		o.downFile = c.DOWNLOAD_DIR_COMPANY_DETAIL + c.DOWNLOAD_FILENAME_COMPANY_DETAIL
		o.writeFile = c.DIR_COMPANY_DETAIL + c.DIR_FILENAME_COMPANY_DETAIL
	} else if o.Object == c.COMPANY_STATE {
		o.downFile = c.DOWNLOAD_DIR_COMPANY_STATE + c.DOWNLOAD_FILENAME_COMPANY_STATE
		o.writeFile = c.DIR_COMPANY_STATE + c.DIR_FILENAME_COMPANY_STATE
	}
}

func (o *CompanyHandler) Processing() {
	if c.DownloadCompany {
		o.init()
		o.MakeCSV()
	} else {
		if o.Object == c.COMPANY_DETAIL {
			model.CodeArr.Load()
		}

	}
}

func (o *CompanyHandler) MakeCSV() {

	xlFile, err := xlsx.OpenFile(o.downFile)
	if err != nil {
		panic(err)
	}

	f := utils.File{}
	wf := f.CreateFile(o.writeFile)
	defer wf.Close()

	sheet := xlFile.Sheets[0]

	for i := 0; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		code, content := model.RowGet(row)
		if o.Object == c.COMPANY_STATE {
			model.ViewInfo.Set_state(code, model.StringToCompanyState(content))
		}
		f.Write(wf, content)
	}

	if o.Object == c.COMPANY_DETAIL {
		model.CodeArr.Load()
	}

}
