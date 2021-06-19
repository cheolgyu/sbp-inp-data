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

	startDate, endDate := get_download_date()

	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	var obj_list []model.CompanyCode

	if object == c.PRICE {
		selectCode := dao.SelectCode{}
		obj_list = selectCode.All()
	} else if object == c.MARKET {
		for i := range model.MarketList {
			cc := model.CompanyCode{}
			cc.Code = model.MarketList[i]
			cc.Name = model.MarketListNmae[i]
			obj_list = append(obj_list, cc)
		}
	}

	for i := range obj_list {

		log.Println(i, "/", len(obj_list), "======code:", obj_list[i])
		cp := CodePrice{}
		p := codePriceDataParam{
			object: object,

			item:      obj_list[i],
			idx:       i,
			startDate: startDate,
			endDate:   endDate,

			wg: &wg,
		}
		wg.Add(1)
		cp.Load(p)

		o.List = append(o.List, cp)
		wg_db.Add(1)
		cp.Save(&wg_db)

	}

	wg.Wait()
	wg_db.Wait()
}

type CodePrice struct {
	Object string
	Code   string
	List   []model.Price
	Filter []interface{}
	Data   []interface{}
}

func (o *CodePrice) Load(p codePriceDataParam) {
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

	o.List = nc.ChartData.List
	for i := range o.List {
		o.Filter = append(o.Filter, bson.M{"_id": o.List[i].Date})
		o.Data = append(o.Data, o.List[i])
	}

}
func (o *CodePrice) Save(wg_db *sync.WaitGroup) {
	defer wg_db.Done()
	relpace_dao := dao.Relpace{}
	db := c.DB_PRICE

	if o.Object == c.MARKET {
		db = c.DB_MARKET
	}
	relpace_dao.SetColl(db, o.Code)
	relpace_dao.Data = o.Data
	relpace_dao.Filter = o.Filter
	if err := relpace_dao.Run(); err != nil {
		panic(err)
	}

}

func get_download_date() (string, string) {
	var start_date string
	var end_date string
	infoDao := dao.SelectInfo{}
	info := infoDao.One(c.DB_PRICE)
	start_date = info.Updated
	end_date = time.Now().Format("20060102")
	if start_date == "" {
		start_date = "19900101"
	}
	log.Println(start_date, end_date)
	return start_date, end_date

}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}

}
