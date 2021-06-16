package handler

import (
	"database/sql"
	"fmt"
	"log"
	"sync"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/db"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils/download"
)

func PriceHandler() {
	// 종목가격
	// cpd_price := CodePriceData{}
	// cpd_price.Save(c.PRICE)

	// 마켓가격
	cpd_market := CodePriceData{}
	cpd_market.Save(c.MARKET)
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

	startDate, endDate := get_download_date()
	wg := sync.WaitGroup{}
	wg_db := sync.WaitGroup{}
	done_load := make(chan bool)
	var obj_list CodeList

	if object == c.PRICE {
		comp := Company{}
		comp.Load()
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
		go cp.Load(p)
		<-done_load

		o.List = append(o.List, cp)
		wg_db.Add(1)
		go cp.Save(&wg_db)

		if i%10 == 0 {
			wg_db.Wait()
		}
		//defer wg.Done()

		//}(i)
	}
	wg_db.Wait()
	wg.Wait()
}

type CodePrice struct {
	Object string
	Code   string
	List   []model.Price
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
	p.ch <- true
}
func (o *CodePrice) Save(wg_db *sync.WaitGroup) {
	defer wg_db.Done()
	schema_nm := c.SCHEMA_NAME_PRICE
	tb_nm := c.PREFIX_TB_PRICE + o.Code
	if o.Object == c.MARKET {
		schema_nm = c.SCHEMA_NAME_MARKET
		tb_nm = c.PREFIX_TB_MARKET + o.Code
	}
	client, tx := db.Begin()
	defer tx.Rollback()

	if _, err := tx.Exec("select price.create_table_price( $1 ,$2 )", schema_nm, tb_nm); err != nil {
		log.Println("테이블 생성 오류: ", schema_nm, tb_nm)
		log.Println("테이블 생성 오류: ", err)
		db.RollBack(tx)
		panic(err)
	}
	q_insert := fmt.Sprintf(`INSERT INTO "%s"."%s" (p_date, op, hp, lp, cp, vol, fb_rate ) VALUES( $1, $2, $3, $4, $5, $6, $7 )`, schema_nm, tb_nm)
	q_insert += fmt.Sprintf(`ON CONFLICT ("p_date") DO UPDATE SET op=$2 ,hp=$3 ,lp=$4 ,cp=$5 ,vol=$6 ,fb_rate=$7`)

	stmt, err := tx.Prepare(q_insert)
	if err != nil {

		log.Println("쿼리:Prepare 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
		db.RollBack(tx)
		panic(err)
	}
	defer stmt.Close()

	txt := fmt.Sprintf(" %v.%v %v개 저장중.", schema_nm, tb_nm, len(o.List))
	log.Println(txt)
	for i := range o.List {

		arr := o.SQLFormat(i)
		_, err := stmt.Exec(arr[0], arr[1], arr[2], arr[3], arr[4], arr[5], arr[6])
		if err != nil {

			log.Println("쿼리:stmt.Exec 오류: ", schema_nm, tb_nm)
			log.Println("쿼리:stmt.Exec 오류: ", arr)
			log.Fatal(err)
			db.RollBack(tx)
			panic(err)
		}
	}

	if err := tx.Commit(); err != nil {
		log.Println("쿼리:Commit 오류: ", schema_nm, tb_nm)
		log.Fatal(err)
	}
	if err := client.Close(); err != nil {
		log.Println("디비연결 종료 오류 발생.: ", err)
		log.Fatal(err)
		panic(err)
	}
}

func (o *CodePrice) SQLFormat(idx int) [7]string {
	i := o.List[idx]
	//format := "ARRAY['%v','%.0f','%.0f','%.0f','%.0f'   ,'%v','%v']"
	if o.Object == c.MARKET {
		//	format = "ARRAY['%v','%.3f','%.3f','%.3f','%.3f'   ,'%v','%v']"
	}
	arr := [7]string{}
	arr[0] = fmt.Sprintf("%v", i.Date)
	arr[1] = fmt.Sprintf("%.0f", i.OpenPrice)
	arr[2] = fmt.Sprintf("%.0f", i.HighPrice)
	arr[3] = fmt.Sprintf("%.0f", i.LowPrice)
	arr[4] = fmt.Sprintf("%.0f", i.ClosePrice)
	arr[5] = fmt.Sprintf("%v", i.Volume)
	arr[6] = fmt.Sprintf("%v", i.ForeignerBurnoutRate)

	return arr
	//fmt.Sprintf(format,		i.Date, i.OpenPrice, i.HighPrice, i.LowPrice, i.ClosePrice,		i.Volume, i.ForeignerBurnoutRate)
}

func get_download_date() (string, string) {
	var start_date string
	var end_date string
	info_nm := "price_start_date"
	q := "select to_char( COALESCE(updated, '19900101'), 'YYYYMMDD') as start , to_char( now(), 'YYYYMMDD') as end from public.info where name = $1 "
	client := db.Conn()
	err := client.QueryRow(q, info_nm).Scan(&start_date, &end_date)
	switch {
	case err == sql.ErrNoRows:
		log.Println("조회 결과가 없습니다.")
	case err != nil:
		log.Fatalln("쿼리 오류:", err)
		panic(err)
	default:
		log.Println("다운로드 기간: ", start_date, " ~ ", end_date)
	}
	client.Close()

	return start_date, end_date

}

func ChkErr(err error) {
	if err != nil {
		log.Println(err)
		panic(err)
	}

}
