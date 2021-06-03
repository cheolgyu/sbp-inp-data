package project

import "fmt"

var MarketList = []string{"코스피", "코스피", "코스피"}
var LinkMarket = "네버링크"
var LinkPrice = "네버링크"

type ViewPrice struct {
	Company Company
	State   CompanyState
	Hp      HP
	Updated string
}

type ViewMarket struct {
	Company Company
	Hp      HP
	Updated string
}

type HP struct {
	X1        uint
	Y1        float32
	X2        uint
	Y2        float32
	Y_minus   float32
	Y_Percent float32
	X_tick    uint
}

type Company struct {
	Code      string
	Name      string
	NaverLink string
}

func (o *Company) GetLink() {

	isMarket := false

	for _, v := range MarketList {
		if v == o.Code {
			isMarket = true
		}
	}

	if isMarket {
		o.NaverLink = fmt.Sprintf(LinkMarket, o.Code)
	} else {
		o.NaverLink = fmt.Sprintf(LinkPrice, o.Code)
	}

}

type Exe struct {
	List []Company
}

func (o *Exe) Download() {
	// (price_startdate string, price_enddate string)
	/*

		data/ori/company_detail/code.csv
		data/ori/price/code.csv
		data/ori/market/code.csv

		api-server는 읽기모드로 파일오픈 오류시 업데이트중 잠시후 오류 처리, 패닉뺴기
		dbment-server는 쓰기모드로 ㄱㄱ
	*/
	//
	/*


		view_price_map := []ViewPrice

		company_detail xlsx download

		xlsx row loop
			view_price
			go row_parse
				return row

			go make_company

				data/cur/companyDetail/code.csv는 api가 현재 쓰는것.
				data/new/companyDetail/code.csv로 파일만들어 쓰기

				return company{}
			view_price.company =

			go price(code,start,end) download
				go price parse
				go price_to_csv
				go create_update_price_file
					data/cur/price/code.csv 는 api가 현재 쓰는것.
					data/cur/price/code.csv
						없으면 생성 후 opn
						있으면 opn
						date높은순으로 배열 정렬후 2번째 줄부터 추가하기.
			<= price ok

			// loop 에서 뺄까? 오래걸릴것 같은데.
			go highpoint(code)
				open data/cur/price/code.csv
					100줄 읽고 닫기
					없으면 다음 100줄 읽고 닫기
					없으면 다음 100줄 읽고 닫기
					없으면 다음 100줄 읽고 닫기
					없으면  null처리
				return HP
			<= hp
			view_price.hp =

			view_price_map code,view_price
	*/

	/*
		company_state xlsx download
		row loop
			go row_parse
				return row
			view_price := view_price_map.code
			view_price.state = state



	*/

	/*

		view_market_map := []ViewPrice

		market loop
			go price(code,start,end) download
				go price parse
				go price_to_csv
				go create_update_price_file
					data/cur/price/code.csv 는 api가 현재 쓰는것.
					data/cur/price/code.csv
						없으면 생성 후 opn
						있으면 opn
						date높은순으로 배열 정렬후 2번째 줄부터 추가하기.
						api 와 동시에 쓰면 겹치는데 운에 따라야 하나?

					data/new/price/2021/05/31.csv
					만들고 한줄 쓰기? 대신 그래프나 high_point때 너무 많은 file openclose를 해야됨.
						파일 연결 횟수가 너무 증가함.
						data/cur/price/code/2021/1분기.csv
						data/cur/price/code/2021/2분기.csv
						data/cur/price/code/2021/3분기.csv
						data/cur/price/code/2021/4분기.csv
						이렇게 하면 어떰?
							한달에 최대 30줄 잡고 1년이면 360줄? 년도별로 해야겠는데?
							data/cur/price/code/2021.csv

							10년이면 3600줄 ?
							data/cur/price/code.csv
							한개에 파일일때와 여러개 파일일때
								high_point, api 차트 조회, 매일 시세추가.
							api에서는 읽기 모드로 읽고 읽기 오류날 수도 있으니 err처리하고
					=======>		dbment에서 쓰기모드로 작업 ㄱㄱ. 한파일 ㄱㄱ.

					첫번째 줄에 새로운 데이터 추가하기.


			view_market.company = company
			view_market.code = code
			view_market_map.code = view_market

			<= price ok

		loop

	*/
	/*
		high_point view_price loop
		high_point view_market loop

	*/

	/*
		update view  mini_db

	*/

}

type CompanyDetail struct {
	Full_code     string
	Short_code    string
	Full_name_kr  string
	Short_name_kr string
	Full_name_eng string

	Listing_date              string
	Market                    string
	Securities_classification string
	Department                string
	Stock_type                string

	Face_value    string
	Listed_stocks string
}

type CompanyState struct {
	Code    string
	Name    string
	Stop    bool
	Clear   bool
	Managed bool

	Ventilation   bool
	Unfaithful    bool
	Low_liquidity bool
	Lack_listed   bool
	Overheated    bool

	Caution bool
	Warning bool
	Risk    bool
}

type Price struct {
	Date       uint32
	OpenPrice  float32
	HighPrice  float32
	LowPrice   float32
	ClosePrice float32

	Volume               uint32
	ForeignerBurnoutRate float32
}

type Project2 struct {
}

func (o *Project2) Run() {

}
