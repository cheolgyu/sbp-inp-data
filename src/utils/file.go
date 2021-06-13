package utils

import (
	"log"
	"os"

	"github.com/cheolgyu/stock-write/src/c"
)

type File struct{}

func (o *File) Write(f *os.File, text string) {
	_, err := f.WriteString(text + "\n")

	o.CheckError(err)
}

// 이어쓰기
func (o *File) AppendFile(fileName string) *os.File {
	file, err := os.OpenFile(fileName, c.FILE_FLAG_APPEND, 0644)
	o.CheckError(err)
	return file
}

// 새로쓰기
func (o *File) CreateFile(fileName string) *os.File {
	file, err := os.OpenFile(fileName, c.FILE_FLAG_TRUNC, 0644)
	o.CheckError(err)
	return file
}

func (o *File) CheckError(err error) {
	if err != nil {
		log.Fatalln(err)
		panic(err)
	}
}

func (o *File) Init() {

	mkdir := []string{
		c.DIR_COMPANY_DETAIL,
		c.DIR_COMPANY_STATE,
		c.DIR_PRICE,
		c.DIR_MARKET,
		c.DIR_BOUND,
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
