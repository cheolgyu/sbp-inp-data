package main

import (
	"fmt"
	"log"
	"os"
	"strconv"
)

var filename = "test/hello5.test"
var file_flag = os.O_RDWR | os.O_CREATE | os.O_APPEND
var file_flag2 = os.O_RDWR | os.O_CREATE | os.O_TRUNC

func t2() {
	fmt.Println("Hello, playground")
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
	t2()
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
