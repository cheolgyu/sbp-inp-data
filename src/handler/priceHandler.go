package handler

import (
	"log"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
)

func PriceHandler() {
	// 종목가격
	cpd_price := CodePriceData{}
	cpd_price.Save(c.PRICE)

	// 마켓가격
	// cpd_market := CodePriceData{}
	// cpd_market.Save(c.MARKET)
}

type CodePriceData struct {
	List []CodePrice
}
type codePriceDataParam struct {
	object string

	startDate string
	endDate   string
	item      model.CompanyCode
	idx       int

	wg *sync.WaitGroup
	ch chan bool
}

func (o *CodePriceData) Save(object string) {
	down := dao.GetDownloadDate{}
	startDate, endDate, err := down.Get()
	ChkErr(err)

	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	done_load := make(chan bool)
	var obj_list CodeList

	if object == c.PRICE {
		comp := Company{}
		comp.Code.SelectAll()
		obj_list.List = comp.Code.List
	} else if object == c.MARKET {
		cl := CodeList{}
		for i := range model.MarketList {
			cc := model.CompanyCode{}
			cc.Code = model.MarketList[i]
			cc.Name = model.MarketListNmae[i]
			cl.List = append(cl.List, cc)
		}
		obj_list.List = cl.List
	}

	for i := range obj_list.List {
		log.Println("idex===", i, "======code:", obj_list.List[i])
		//func(i int) {
		cp := CodePrice{}
		p := codePriceDataParam{
			object: object,

			item:      obj_list.List[i],
			idx:       i,
			startDate: startDate,
			endDate:   endDate,

			wg: &wg,
			ch: done_load,
		}
		wg.Add(1)
		go cp.CPLoad(p)
		<-done_load

		o.List = append(o.List, cp)
		wg_db.Add(1)
		go cp.CPSave(&wg_db)

		if i%50 == 0 {
			wg_db.Wait()
		}
		//defer wg.Done()

		//}(i)
	}
	wg_db.Wait()
	wg.Wait()
}

type CodePrice struct {
	Object          string
	Code            string
	PriceList       []model.PriceStock
	PriceMarketList []model.PriceMarket
}

func (o *CodePrice) CPLoad(p codePriceDataParam) {
	defer p.wg.Done()

	o.Code = p.item.Code
	o.Object = p.object
	nc := download.NaverChart{
		StartDate: p.startDate,
		EndDate:   p.endDate,
		ChartData: download.ChartData{
			Object: p.object,
			Code:   o.Code,
		},
	}
	nc.Run()

	o.PriceMarketList = nc.ChartData.PriceMarketList
	o.PriceList = nc.ChartData.PriceList

	p.ch <- true
}

func (o *CodePrice) CPSave(wg_db *sync.WaitGroup) error {
	defer wg_db.Done()
	schema_nm := c.SCHEMA_NAME_HISTORY
	tb_nm := c.TABLE_NAME_HISTORY_PRICE_STOCK
	if o.Object == c.MARKET {
		tb_nm = c.TABLE_NAME_HISTORY_PRICE_MARKET
	}
	params := dao.PriceParams{
		Object:    o.Object,
		Code:      o.Code,
		Schema_nm: schema_nm,
		Tb_nm:     tb_nm,
	}

	switch o.Object {
	case c.PRICE:
		insert_price := dao.InsertPriceStock{
			Params: params,
			Upsert: false,
			List:   o.PriceList,
		}
		err := insert_price.InsertHistPrice()
		return err
	default:
		insert := dao.InsertPriceMarket{
			Params: params,
			Upsert: false,
			List:   o.PriceMarketList,
		}
		err := insert.Insert()
		return err
	}

}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}

}
