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

}

// func everyday_project(){
// 	update_price()
// }

// func update_price(){
	
// }

func init_project(){
	init_price()
	init_listed_company()
}

func init_price(){
	var project1 = price.New_Controller()
	project1.Exec()

}

func init_listed_company(){
	var project1 = listed_company.New_Controller()
	project1.Exec()

}


