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
	// info := dao.InsertInfo{}
	// info.Updated(c.DB_PRICE)

	// 마켓가격
	// cpd_market := CodePriceData{}
	// cpd_market.Save(c.MARKET)
	// info2 := dao.InsertInfo{}
	// info2.Updated(c.DB_MARKET)
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

	for i := range obj_list[:2] {

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
		log.Println("^^^^^^^^^^^^^")
		if i%10 == 0 {
			wg.Wait()
			wg_db.Wait()
		}

	}

	wg.Wait()
	wg_db.Wait()
}

type CodePrice struct {
	Object string
	Code   string
	List   []model.Price
	Filter []interface{}
	Data   interface{}
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
	/*
	   db.students.update(
	      { _id: 5 },
	      {
	        $push: {
	          quizzes: {
	             $each: [ { wk: 5, score: 8 }, { wk: 6, score: 7 }, { wk: 7, score: 6 } ],
	             $sort: { score: -1 },
	             $slice: 3
	          }
	        }
	      }
	   )
	*/
	o.List = nc.ChartData.List
	var ab []interface{}
	for _, item := range o.List[1:3] {
		o.Filter = append(o.Filter, bson.M{"element.0": item.Date})
		ab = append(ab, item.BsonA())
	}
	//https://docs.mongodb.com/manual/reference/operator/update/pull/
	//https://docs.mongodb.com/manual/reference/operator/update/pull/#remove-all-items-that-equal-a-specified-value
	// 이걸로 큰거 찾아서 다삭제후

	//https://docs.mongodb.com/manual/reference/operator/update/push/
	//이걸로 넣기.

	//https://www.programmersought.com/article/68906828612/
	// https://www.zerocho.com/category/MongoDB/post/57a46d287c4a5115004e97eb

	//o.Data = bson.M{"$push": bson.M{"data.$[]": bson.M{"$each": ab, "$sort": -1, "$slice": 1}}}
	//저장 성공.
	//o.Data = bson.M{"$push": bson.M{"data": bson.M{"$each": ab}}}
	// pop 마지막 제거
	//o.Data = bson.M{"$pop": bson.M{"data": 1}}
	// 제거시 조건 추가.
	//삭제실패. -err
	//o.Data = bson.M{"$pull": bson.M{"data.$[element]": bson.M{"element.0": bson.M{"$gte": 19900105}}}}
	// 삭제됨. data[ arr1 ] arr1.0 만 삭제됨+arr2.4번째가 19900105 이면 가치 삭제됨.  난 arr1을 삭제하고 싶은데?
	//o.Data = bson.M{"$pull": bson.M{"data.$[]": bson.M{"$gte": 19900105}}}
	// err
	//o.Data = bson.M{"$pull": bson.M{"data.$[].0": bson.M{"$gte": 19900105}}}
	// err
	//o.Data = bson.M{"$pull": bson.M{"data.$[element]": bson.M{"element.0": bson.M{"$gte": 19900105}}}}
	//err
	//o.Data = bson.M{"$pull": bson.M{"data.$[element].0": bson.M{"$gte": 19900105}}}
	//err
	//o.Data = bson.M{"$pull": bson.M{"data.$.0": bson.M{"$gte": 19900105}}}
	//err
	//o.Data = bson.M{"$pull": bson.M{"data..0": bson.M{"$gte": 19900105}}}
	//
	//o.Data = bson.M{"$set": bson.M{"data.$[].$[bb]": 222}}
	//
	//o.Data = bson.M{"$pull": bson.M{"data.$[].$[element].0": bson.M{"$gte": 19900105}}}
	//삭제실패.
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"data.$[].0": bson.M{"$gte": 19900105}}}}
	// 오 찾았다. 실패. 0번째 자리로 좁게 선택해야됨. 가격이 19900105 보다 크면 그배열도 제거됨.
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"$gte": 19900105}}}
	// err 없지만  안됨.
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"data.$[]": bson.M{"$eq": 19900105}}}}
	//err 없지만  안됨.
	//err
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"$[].0": bson.M{"$eq": 19900105}}}}
	//err
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"$[]": bson.M{"$eq": 19900105}}}}
	//x
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"0": bson.M{"$eq": 19900105}}}}
	//x
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"data.$[]": bson.M{"data.$[].$[0]": bson.M{"$gte": 19900105}}}}}
	//x
	//o.Data = bson.M{"$pull": bson.M{"data": bson.M{"data.$[].$[].0": bson.M{"$gte": 19900105}}}}

	//array filter

	o.Data = bson.M{"$push": bson.M{"data.$[arr]": bson.M{"$each": ab}}}

}
func (o *CodePrice) Save(wg_db *sync.WaitGroup) {
	defer wg_db.Done()
	coll := c.COLL_PRICE
	if o.Object == c.MARKET {
		coll = c.COLL_MARKET
	}
	price_dao_insert := dao.PriceDaoInsert{
		Coll: coll,
	}

	price_dao_insert.Data = o.Data
	price_dao_insert.Filter = o.Filter
	price_dao_insert.Run(o.Code)
	log.Println("~~~~~~~~~~~~~~")
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
