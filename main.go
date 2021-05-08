package main

import (
	"fmt"
	"corplist/src/controller/listed_company"
)



func main() {
	fmt.Println("hello world ")
	test()
	
}

func test(){
	//fmt.Println("hello world ", model.LogTitls)
	//fmt.Println("hello world listed_company=",listed_company)

	fmt.Println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
	var project1 = listed_company.New_Controller()
	project1.Exec()

}

// func make_init(){
// 	make_init_company()
// 	make_init_old_stocks_price()
// }

// func make_init_company(){
	
// 	download_init_company.Save()

// 	company_list = parse.Run()
	
// 	migrations.Make_file_listed_company(company_list)

// 	sql.Create_company_seed()

// }


// func make_init_old_stocks_price(){
// 	var schema_type = "day"

// 	for index , item := range company_list {
// 		var price_list = download_init_price.Get(item)
// 		migrations.Make_file_price(schema_type, item.Short_code, price_list)
// 		sql.Create_price_Table()
		
// 		var str = fmt.Sprintf("make_init_old_stocks_price (%v / %v) ",index ,len(company_list))
// 		fmt.Println(str)	
// 	}

// }

