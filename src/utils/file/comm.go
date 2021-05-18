package file

import (
	"os"
)

func Write(f *os.File, text string) {
	_, err := f.WriteString(text + "\n")

	CheckError(err)
}

func CreateFile(fileName string) *os.File {
	file, err := os.Create(fileName)
	CheckError(err)
	return file
}

func CheckError(err error) {
	if err != nil {
		panic(err)
	}
}
