package handler

import (
	"fmt"
	"log"
	"sync"

	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
)

var upsert_price bool
var pwg sync.WaitGroup = sync.WaitGroup{}
var pwg_db sync.WaitGroup = sync.WaitGroup{}
var pdone_load chan bool = make(chan bool)

func init() {
	upsert_price = true
}
func PriceHandler() {

	log.Println(" PriceHandler  start")

	list := dao.PriceMarketList{}
	down_info, err := list.Get()
	ChkErr(err)
	exe := CodePriceData{}
	exe.Save(down_info)
	log.Println(" PriceHandler  end")
}

type CodePriceData struct {
}
type downLoadParam struct {
	startDate string
	endDate   string
	item      model.Code
}

func (o *CodePriceData) Save(list []model.DownloadInfo) {

	for i := range list {

		log.Println("idx=", i, "  ,======code:", list[i])
		//func(i int) {

		p := downLoadParam{
			item:      list[i].Code,
			startDate: list[i].StartDt,
			endDate:   list[i].EndDt,
		}
		pwg.Add(1)
		cp := CodePriceSave{}
		go cp.Download(p)

		// 멈춤
		<-pdone_load

		pwg_db.Add(1)
		go cp.Insert()

		//ec2.컨테이너 자꾸 죽음.
		if i%10 == 0 {
			pwg.Wait()
			pwg_db.Wait()
		}
		//defer wg.Done()

		//}(i)
	}
	pwg_db.Wait()
	pwg.Wait()
}

type CodePriceSave struct {
	model.Code
	PriceMarketList []model.PriceMarket
}

func (o *CodePriceSave) Download(p downLoadParam) {
	defer pwg.Done()

	itme := fmt.Sprintf("다운로드: %+v\n", p)
	log.Println("Download param:", itme)

	o.Code = p.item
	nc := download.NaverChart{
		StartDate: p.startDate,
		EndDate:   p.endDate,
		Code:      p.item,
	}
	res, err := nc.Run()
	ChkErr(err)
	o.PriceMarketList = res

	pdone_load <- true
	//멈춤
	//p.ch <- true
}

func (o *CodePriceSave) Insert() {
	itme := fmt.Sprintf("Insert: %+v ,LEN= %+v\n", o.Code, len(o.PriceMarketList))
	log.Println("Download param:", itme)

	defer pwg_db.Done()

	insert := dao.InsertPriceMarket{
		Code:   o.Code,
		Upsert: upsert_price,
		List:   o.PriceMarketList,
	}
	err := insert.Insert()
	ChkErr(err)
}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}
}
