package main

import (
	"context"
	"fmt"
	"log"
	"os"
	"strconv"

	"github.com/cheolgyu/stock-write/src/db"
)

var filename = "test/hello5.test"
var file_flag = os.O_RDWR | os.O_CREATE | os.O_APPEND
var file_flag2 = os.O_RDWR | os.O_CREATE | os.O_TRUNC

func t3() {
	fmt.Println("오브젝트 프로퍼티 동적 접근")
	type aa struct {
		A string
		B string
	}
	abc := aa{}
	abc.A = "에이"
	abc.B = "비"
	//abc["A"] = "A"
	fmt.Println(abc.A)
	fmt.Println(abc.B)
}

func t2() {
	fmt.Println(" float 포맷")
	test := 1014285

	tt := fmt.Sprintf("%v", test)
	fmt.Println(tt)

	sss := fmt.Sprintf("%.0f", float32(test))
	fmt.Println(sss)
	cp, _ := strconv.ParseFloat(sss, 64)
	var ff float64 = float64(cp)

	tt2 := fmt.Sprintf("%v", ff)
	fmt.Println(tt2)
}
func main() {
	log.Println("===1111111111==")
	client := db.Conn()
	log.Println("===22222222222==")
	ctx := context.Background()
	log.Println("===3333333==")
	var start string
	client.QueryRowContext(ctx, "select to_char(now(), 'YYYYMMDD') as start from public.info ").Scan(&start)
	log.Println("===44444==start:", start)
	// switch {
	// case err == sql.ErrNoRows:
	// 	log.Printf("no user with id \n")
	// case err != nil:
	// 	log.Fatalf("query error: %v\n", err)
	// default:
	// 	log.Printf("username is %s\n", start)
	// }
	//ChkErr(err)
	log.Println("===555555555==")
	log.Println("11111111111==", start)
}

func www2() {

	fmt.Println("마지막줄만 덮어쓰기 ")
	f, err := os.OpenFile(filename, os.O_RDWR, 0644)
	if err != nil {
		fmt.Println("이어 쓰기 테스트 오류1")
		log.Fatalln(err)
	}
	defer f.Close()
	fs, _ := f.Stat()
	fsize := fs.Size()

	line_size := 6
	offset := fsize - int64(line_size)
	//seek := int64(line_size)
	// if _, err = f.Seek(seek, os.SEEK_END); err != nil {
	// 	fmt.Println(err)
	// }
	//fmt.Println(f)
	str := "test6\n"
	//Write(f, str)
	if _, err := f.WriteAt([]byte(str), offset); err != nil {
		panic(err)
	}
	//_, err = f.WriteString(str + "\n")
	//check(err)
}

func www() {

	fmt.Println("이어 쓰기 테스트 ")
	f, err := os.OpenFile(filename, file_flag2, 0644)
	if err != nil {
		fmt.Println("이어 쓰기 테스트 오류1")
		log.Fatalln(err)
	}
	defer f.Close()
	//fmt.Println(f)
	str := "test3"
	//Write(f, str)
	_, err = f.WriteString(str + "\n")
	check(err)
}
func Write(f *os.File, text string) {
	_, err := f.WriteString(text + "\n")
	check(err)
}
func check(e error) {
	if e != nil {
		log.Fatalln(e)
		panic(e)
	}
}
