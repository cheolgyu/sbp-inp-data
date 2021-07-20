package handler

import (
	"log"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
)

var upsert_price bool

func init() {
	upsert_price = true
}
func PriceHandler() {

	log.Println(" PriceHandler  start")

	arr_MetaCode_Stock, err := dao.GetCode(c.Config["stock"])
	ChkErr(err)

	arr_MetaCode_Market, err := dao.GetCode(c.Config["market"])
	ChkErr(err)

	// 종목가격
	cpd_price := CodePriceData{}
	cpd_price.Save(arr_MetaCode_Stock[:1])

	// 마켓가격
	cpd_market := CodePriceData{}
	cpd_market.Save(arr_MetaCode_Market)
	log.Println(" PriceHandler  end")
}

type CodePriceData struct {
}
type downLoadParam struct {
	startDate string
	endDate   string
	item      model.Code

	wg *sync.WaitGroup
	ch chan bool
}

func (o *CodePriceData) Save(list []model.Code) {
	var err error = nil

	down := dao.GetDownloadDate{}
	startDate, endDate, err := down.Get()
	ChkErr(err)

	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	done_load := make(chan bool)

	for i := range list {

		log.Println("idx=", i, "  ,======code:", list[i])
		//func(i int) {

		p := downLoadParam{
			item:      list[i],
			startDate: startDate,
			endDate:   endDate,

			wg: &wg,
			ch: done_load,
		}
		wg.Add(1)
		cp := CodePriceSave{}
		err = cp.Download(p)
		ChkErr(err)
		// 멈춤
		//<-done_load

		wg_db.Add(1)
		err = cp.Insert(&wg_db)
		ChkErr(err)

		//ec2.컨테이너 자꾸 죽음.
		if i%10 == 0 {
			wg.Wait()
			wg_db.Wait()
		}
		//defer wg.Done()

		//}(i)
	}
	wg_db.Wait()
	wg.Wait()
}

type CodePriceSave struct {
	model.Code
	PriceMarketList []model.PriceMarket
}

func (o *CodePriceSave) Download(p downLoadParam) error {
	defer p.wg.Done()

	o.Code = p.item
	nc := download.NaverChart{
		StartDate: p.startDate,
		EndDate:   p.endDate,
		Code:      p.item,
	}
	res, err := nc.Run()

	o.PriceMarketList = res
	return err
	//멈춤
	//p.ch <- true
}

func (o *CodePriceSave) Insert(wg_db *sync.WaitGroup) error {
	defer wg_db.Done()

	insert := dao.InsertPriceMarket{
		Code:   o.Code,
		Upsert: upsert_price,
		List:   o.PriceMarketList,
	}
	err := insert.Insert()
	return err

}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}
}
