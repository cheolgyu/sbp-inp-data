package handler

import (
	"log"
	"sync"
	"time"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
	"go.mongodb.org/mongo-driver/bson"
)

var upsert_price bool

func init() {
	upsert_price = true
}
func PriceHandler() {
	// 종목가격
	cpd_price := CodePriceData{}
	cpd_price.Save(c.PRICE)
	info := dao.InsertInfo{}
	info.Updated(c.DB_PRICE)

	// 마켓가격
	cpd_market := CodePriceData{}
	cpd_market.Save(c.MARKET)
	info2 := dao.InsertInfo{}
	info2.Updated(c.DB_MARKET)
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
}

func (o *CodePriceData) Save(object string) {
	down := dao.GetDownloadDate{}
	startDate, endDate, err := down.Get()
	ChkErr(err)

<<<<<<< HEAD
	startDate, endDate := get_download_date()

=======
>>>>>>> postgresql
	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	var obj_list []model.CompanyCode

	if object == c.PRICE {
<<<<<<< HEAD
		selectCode := dao.SelectCode{}
		obj_list = selectCode.All()
=======
		comp := Company{}
		comp.Code.GetCompanyCode()
		obj_list.List = comp.Code.List
>>>>>>> postgresql
	} else if object == c.MARKET {
		for i := range model.MarketList {
			cc := model.CompanyCode{}
			cc.Code = model.MarketList[i]
			cc.Name = model.MarketListNmae[i]
			obj_list = append(obj_list, cc)
		}
	}

	for i := range obj_list {
		go func(i int) {
			log.Println(i, "/", len(obj_list), "======code:", obj_list[i])
			cp := CodePrice{}
			p := codePriceDataParam{
				object: object,

				item:      obj_list[i],
				idx:       i,
				startDate: startDate,
				endDate:   endDate,

<<<<<<< HEAD
				wg: &wg,
			}
			wg.Add(1)
			cp.Load(p)

			o.List = append(o.List, cp)
			wg_db.Add(1)
			cp.Save(&wg_db)

			if i%10 == 0 {
				wg.Wait()
				wg_db.Wait()
			}

		}(i)
=======
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
>>>>>>> postgresql

	}

	wg.Wait()
	wg_db.Wait()
}

type CodePrice struct {
<<<<<<< HEAD
	Object      string
	Code        string
	List        []model.Price
	Filter      []interface{}
	Data        interface{}
	RemoveStart model.Price
=======
	Object          string
	Code            string
	PriceList       []model.PriceStock
	PriceMarketList []model.PriceMarket
>>>>>>> postgresql
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

<<<<<<< HEAD
	o.List = nc.ChartData.List
	var ab []interface{}
	for _, item := range o.List {
		ab = append(ab, item)
	}
	if len(o.List) > 0 {
		o.RemoveStart = o.List[0]
	}

	o.Data = bson.M{"$push": bson.M{"data": bson.M{"$each": ab, "$sort": bson.M{"p_date": 1}}}}
=======
	o.PriceMarketList = nc.ChartData.PriceMarketList
	o.PriceList = nc.ChartData.PriceList

	p.ch <- true
>>>>>>> postgresql
}

func (o *CodePrice) CPSave(wg_db *sync.WaitGroup) error {
	defer wg_db.Done()
<<<<<<< HEAD
	coll := c.COLL_PRICE
	if o.Object == c.MARKET {
		coll = c.COLL_MARKET
	}
	price_dao_insert := dao.PriceDaoInsert{
		Coll:        coll,
		RemoveStart: o.RemoveStart,
	}

	price_dao_insert.Data = o.Data
	price_dao_insert.Filter = o.Filter
	err := price_dao_insert.Run(o.Code)
	ChkErr(err)
}

func get_download_date() (string, string) {
	var start_date string
	var end_date string
	infoDao := dao.SelectInfo{}
	info := infoDao.One(c.DB_PRICE)
	start_date = info.Updated
	end_date = time.Now().Format("20060102")
	if start_date == "" {
		start_date = c.PRICE_DEFAULT_START_DATE
	}
	log.Println("price_downlaod: startdate,enddate:", start_date, end_date)
	return start_date, end_date
=======
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
			Upsert: upsert_price,
			List:   o.PriceList,
		}
		err := insert_price.InsertHistPrice()
		return err
	default:
		insert := dao.InsertPriceMarket{
			Params: params,
			Upsert: upsert_price,
			List:   o.PriceMarketList,
		}
		err := insert.Insert()
		return err
	}
>>>>>>> postgresql

}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}

}
