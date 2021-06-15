package handler

import (
	"fmt"
	"log"
	"sync"
	"time"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
)

func PriceHandler() {
	cpd := CodePriceData{}
	cpd.Load()

}

type CodePriceData struct {
	List []CodePrice
}

func (o *CodePriceData) Load() {
	comp := Company{}
	comp.Load()
	startDate := ""
	EndDate := ""
	wg := sync.WaitGroup{}

	for i := range comp.Code.List {
		wg.Add(1)
		go func(idx int) {
			defer wg.Done()
			cp := CodePrice{}
			cp.Code = comp.Code.List[idx].Code
			nc := download.NaverChart{
				StartDate: startDate,
				EndDate:   EndDate,
				ChartData: download.ChartData{
					Object: c.PRICE,
					Code:   cp.Code,
				},
			}
			nc.Run()
			cp.List = nc.ChartData.List
			o.List = append(o.List, cp)

			cp.Save()
		}(i)
		time.Sleep(time.Second * 10)

	}
	wg.Wait()
}

type CodePrice struct {
	Code string
	List []model.Price
}

func (o *CodePrice) Save() {
	client := db.Conn()
	q := fmt.Sprintf("select price.insert_price('%v' ,'%v', ARRAY[  ", c.SCHEMA_NAME_PRICE, c.PREFIX_TB_PRICE+o.Code)
	max := len(o.List)
	for i := range o.List {
		q += o.SQLFormat(i)
		if i+1 != max {
			q += ","
		}
	}
	q += "]);"

	row, err := client.Query(q)
	ChkErr(err)
	defer row.Close()
	defer client.Close()

}

func (o *CodePrice) SQLFormat(idx int) string {
	i := o.List[idx]
	return fmt.Sprintf("ARRAY['%v','%.0f','%.0f','%.0f','%.0f'   ,'%v','%v']",
		i.Date, i.OpenPrice, i.HighPrice, i.LowPrice, i.ClosePrice,
		i.Volume, i.ForeignerBurnoutRate)
}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}

}
