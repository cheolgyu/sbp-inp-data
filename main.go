package main

import (
	"fmt"
	"corplist/src/controller/listed_company"
	"corplist/src/controller/price"
)



func main() {
	fmt.Println("hello world ")
	test()
	
}

func test(){

	fmt.Println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	var project1 = price.New_Controller()
	project1.Exec()

}

func test_init_listed_company(){

	fmt.Println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	var project1 = listed_company.New_Controller()
	project1.Exec()

}


