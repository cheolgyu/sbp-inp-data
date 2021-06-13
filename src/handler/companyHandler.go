package handler

import (
	"fmt"

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
	if c.DownloadCompany {
		// 엑셀다운 (상세,상태)
		company := download.Data_krx{
			Object: o.Object,
		}
		company.Run()
	}
	if o.Object == c.COMPANY_DETAIL {
		o.downFile = c.DOWNLOAD_DIR_COMPANY_DETAIL + c.DOWNLOAD_FILENAME_COMPANY_DETAIL
		o.writeFile = c.DIR_COMPANY_DETAIL + c.DIR_FILENAME_COMPANY_DETAIL
	} else if o.Object == c.COMPANY_STATE {
		o.downFile = c.DOWNLOAD_DIR_COMPANY_STATE + c.DOWNLOAD_FILENAME_COMPANY_STATE
		o.writeFile = c.DIR_COMPANY_STATE + c.DIR_FILENAME_COMPANY_STATE
	}
}

func (o *CompanyHandler) Processing() {
	o.init()
	o.SetArray()
}

func (o *CompanyHandler) SetArray() {

	xlFile, err := xlsx.OpenFile(o.downFile)
	if err != nil {
		panic(err)
	}

	f := utils.File{}
	wf := f.CreateFile(o.writeFile)
	defer wf.Close()

	sheet := xlFile.Sheets[0]

	fmt.Println("Max row is", sheet.MaxRow)

	for i := 0; i < sheet.MaxRow; i++ {
		row, _ := sheet.Row(i)
		code, content := model.RowGet(row)
		if o.Object == c.COMPANY_DETAIL {
			CodeArr = append(CodeArr, code)
		} else if o.Object == c.COMPANY_STATE {
			data_view.set_state(code, model.String_to_company_state(content))
		}
		f.Write(wf, content)
	}
}
