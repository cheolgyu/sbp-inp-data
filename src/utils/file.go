package utils

import (
	"os"

	"github.com/cheolgyu/stock-write/src/c"
)

type File struct{}

func (o *File) Write(f *os.File, text string) {
	_, err := f.WriteString(text + "\n")

	o.CheckError(err)
}

func (o *File) CreateFile(fileName string) *os.File {
	file, err := os.Create(fileName)
	o.CheckError(err)
	return file
}

func (o *File) CheckError(err error) {
	if err != nil {
		panic(err)
	}
}

func (o *File) Init() {

	mkdir := []string{
		c.DIR_COMPANY_DETAIL,
		c.DIR_COMPANY_STATE,
		c.DIR_PRICE,
		c.DIR_MARKET,
		c.DIR_POINT_PRICE,
		c.DIR_POINT_MARKET,
		c.DOWNLOAD_DIR_COMPANY_DETAIL,
		c.DOWNLOAD_DIR_COMPANY_STATE,
		c.DOWNLOAD_DIR_PRICE,
		c.DOWNLOAD_DIR_MARKET,
	}

	for _, item := range mkdir {
		err := os.MkdirAll(item, 0755)
		if err != nil {
			panic(err)
		}
	}
}
