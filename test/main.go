package main

/*
	go run test/main.go

	목표:
	1. 읽어야될 줄수 만큼 고루틴을 실행시켜 파일의 각기 다른 줄을 읽어 파싱후 sql에서 쓴다.
	1-2 : 읽기 함수와 쓰기 함수 두개로 분리 하여 읽은 데이터를  채널을 통해 쓰기 보내기

	2. 계층으로 고루틴 확인하기. 비동기 안에서 또 비동기 또 비동기 가능여부.

	이게 되면
	job1. 회사상태 갱신
	job1. .1 엑셀다운후 엑셀라인수-1 만큼의 하위job 생성 후에 각각 다른 줄을 읽어 sql 파일만들기.
	job1. .2 파일이 다 만들어지면 sql 실행시키기.

	job2. 종목 전체 시세 가져오기
	job3. 마켓 전체 시세 가져오기.


*/
import (
	"log"
	"strings"

	"github.com/cheolgyu/stock-write/src/model"

	"os"
	"sync"

	"github.com/tealeg/xlsx"
)

func readLine(wg *sync.WaitGroup, lineNum int, row *xlsx.Row) {
	defer wg.Done()
	var item model.Company
	txt_replace := strings.NewReplacer("'", " ")

	item.Full_code = txt_replace.Replace(row.Cells[0].String())
	item.Short_code = txt_replace.Replace(row.Cells[1].String())
	item.Full_name_kr = txt_replace.Replace(row.Cells[2].String())
	item.Short_name_kr = txt_replace.Replace(row.Cells[3].String())
	item.Full_name_eng = txt_replace.Replace(row.Cells[4].String())
	item.Listing_date = txt_replace.Replace(row.Cells[5].String())
	item.Market = txt_replace.Replace(row.Cells[6].String())
	item.Securities_classification = txt_replace.Replace(row.Cells[7].String())
	item.Department = txt_replace.Replace(row.Cells[8].String())
	item.Stock_type = txt_replace.Replace(row.Cells[9].String())
	item.Face_value = txt_replace.Replace(row.Cells[10].String())
	item.Listed_stocks = txt_replace.Replace(row.Cells[11].String())

	ch_r <- item
}

func write(wg *sync.WaitGroup, sqlFile *os.File, item model.Company) {
	defer wg.Done()
	//log.Println("write:", item)
	var str = "-- name: "
	str += `SELECT "insert_listed_company" ('`
	str += item.Full_code + `', '` + item.Short_code + `', '` + item.Full_name_kr + `', '` + item.Short_name_kr + `', '` + item.Full_name_eng + `', '`
	str += item.Listing_date + `', '` + item.Market + `', '` + item.Securities_classification + `', '` + item.Department + `', '` + item.Stock_type + `', '`
	str += item.Face_value + `', '` + item.Listed_stocks + `');`
	Write(sqlFile, str)

}

var cp_wg sync.WaitGroup
var ch_r chan model.Company = make(chan model.Company)

func main() {
	cp_wg := &sync.WaitGroup{}
	cp_wg.Wait()
	log.Println("hello world  test")

	excelFileName := "test/company_state.xlsx"
	xlFile, err := xlsx.OpenFile(excelFileName)
	if err != nil {
		panic(err)
	}

	sqlFile := CreateFile("test/test.sql")

	var sheet = xlFile.Sheets[0]
	var lines = len(sheet.Rows)

	for i := 1; i < lines; i++ {
		cp_wg.Add(1)
		go readLine(cp_wg, i, sheet.Rows[i])
		item := <-ch_r

		cp_wg.Add(1)
		go write(cp_wg, sqlFile, item)
		log.Println("i:", i)
	}

	log.Println("xlsx lines = ", lines)

}
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
