package utils

import (
	"log"
	"os"
	"strings"

	"github.com/cheolgyu/stock-write/src/c"
)

type File struct{}

func (o *File) Open(fileName string) *os.File {
	file, err := os.Open(fileName)

	o.CheckError(err)
	return file
}

func (o *File) Write(f *os.File, text string) {
	_, err := f.WriteString(text + "\n")

	o.CheckError(err)
}

// 마지막줄 덮어쓰기.
func (o *File) LastLineWrite(filename string, repeat_cnt int, str string) {

	file, err := os.OpenFile(filename, os.O_RDWR, 0644)
	o.CheckError(err)
	fs, err := file.Stat()
	o.CheckError(err)
	off := fs.Size() - int64(repeat_cnt) - 1

	if _, err := file.WriteAt([]byte(str), off); err != nil {
		log.Println("덮어쓰기 실패", fs.Name())
		panic(err)
	}

	o.CheckError(err)
	file.Close()
}

// 이어쓰기
func (o *File) AppendFile(fileName string) *os.File {
	log.Println("파일명 :", fileName)
	file, err := os.OpenFile(fileName, c.FILE_FLAG_APPEND, 0644)
	if os.IsNotExist(err) {
		log.Println("파일이 없네 :", fileName)
		arr := strings.Split(fileName, "/")
		dir := ""
		for i := 0; i < len(arr)-1; i++ {
			dir = dir + arr[i] + "/"
		}
		if err := os.MkdirAll(dir, 0644); err != nil {
			panic(err)
		}
		os.Create(fileName)

		file, err = os.OpenFile(fileName, c.FILE_FLAG_APPEND, 0644)
	}
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
