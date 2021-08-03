package handler

import (
	"fmt"
	"log"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
)

var upsert_bound bool
var price_type_arr []model.Config
var price_type_config map[string]int

var wg_price sync.WaitGroup = sync.WaitGroup{}

func init() {

	ch_price_rebound = make(chan Calculate)
	ch_price_insert = make(chan ReboundInsert)

	wg_price = sync.WaitGroup{}
	wg_price_rebound = sync.WaitGroup{}
	wg_price_insert = sync.WaitGroup{}

	go ChannelCalculate(ch_price_rebound)
	go ChannelReboundInsert(ch_price_insert)

	upsert_bound = true

	_price_type_arr, err := dao.GetConfig_Upper_Code(c.UPPER_CODE_PRICE_TYPE)
	ChkErr(err)
	//////////////////////////////////////////////
	///////////////////_price_type_arr[:1]
	///////////////////////////
	//////////////////////////////////////////////
	price_type_arr = _price_type_arr[:1]

	price_type_config = make(map[string]int)
	for i := range price_type_arr {
		price_type_config[price_type_arr[i].Code] = price_type_arr[i].Id
	}
}

func ReBoundHandler() {

	code_list, err := dao.GetCodeAll()
	ChkErr(err)

	log.Println(" ReBoundHandler  start")
	bp := ReBound{}
	bp.Save(code_list)

	log.Println(" ReBoundHandler  end")
}

type ReBound struct {
}

// BOUND_POINT 저장.
func (o *ReBound) Save(list []model.Code) {

	for i := range list {
		item := fmt.Sprintf("%+v\n", list[i])
		log.Println("item:", item)

		cc := list[i]
		bc := code_rebound{Code: cc}

		wg_price.Add(1)
		wg_price_insert.Add(1)
		wg_price_rebound.Add(1)
		go bc.get_price()

	}
	wg_price.Wait()
	wg_price_rebound.Wait()
	wg_price_insert.Wait()

}

type code_rebound struct {
	model.Code
	arr_rebound_price_type []rebound_price_type
}

// CODE에 해당하는 가격목록 조회.
func (o *code_rebound) get_price() {
	defer wg_price.Done()

	var item Calculate
	item.Code = o.Code

	for i := range price_type_arr {
		gcg := rebound_price_type{
			Code:       o.Code,
			price_type: price_type_arr[i],
		}
		gcg.get_price()
		//o.arr_rebound_price_type = append(o.arr_rebound_price_type, gcg)
		item.list = append(item.list, gcg)
		txt := fmt.Sprintf(" gcg  %+v", gcg)
		log.Println(txt)
	}
	//done <- true
	ch_price_rebound <- item
}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}
}
