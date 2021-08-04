package handler

import (
	"fmt"
	"log"
	"os"
	"sort"
	"sync"
	"time"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/model"
	"github.com/cheolgyu/stock-write/src/utils"
)

var ch_price_sql_write chan ReboundSqlWrite //= make(chan ReboundSqlWrite)
var wg_price_insert sync.WaitGroup
var sql_rebound_file *os.File
var uf utils.File
var first bool

func ChannelReboundSqlWriteInit() {
	first = true
	uf = utils.File{}
	sql_rebound_file = uf.CreateFile(c.SQL_FILE_DAILY_REBOUND)
}

func ReboundSqlWriteStart() {
	sqlname := "-- name: " + c.DOTSQL_NAME_REBOUND + " \n"
	uf.Write(sql_rebound_file, sqlname+" INSERT INTO hist.rebound (code_id, price_type, x1, y1, x2, y2, x_tick, y_minus, y_percent) VALUES ")
}

func ReboundSqlWriteEnd() {
	set := "x1=EXCLUDED.x1, y1=EXCLUDED.y1, x2=EXCLUDED.x2, y2=EXCLUDED.y2, x_tick=EXCLUDED.x_tick, y_minus=EXCLUDED.y_minus, y_percent=EXCLUDED.y_percent;"
	uf.Write(sql_rebound_file, " ON CONFLICT (code_id, price_type ,x1) DO UPDATE SET "+set)
}

func ReboundSqlExec() {
	defer ElapsedTime("걸린시간:ReboundSqlExec:", "start")()

	dao.InsertHistReBound()
}

func ElapsedTime(tag string, msg string) func() {
	if msg != "" {
		log.Printf("[%s] %s", tag, msg)
	}

	start := time.Now()
	return func() { log.Printf("[%s] Elipsed Time: %s", tag, time.Since(start)) }
}

type ReboundSqlWrite struct {
	model.Code
	list       []rebound_price_type
	point_list []model.Point
}

func ChannelReboundSqlWrite(ch chan ReboundSqlWrite) {
	log.Println("run  ChannelReboundSqlWrite")
	// loop over the data from the channel

	for v := range ch {

		for i := range v.list {
			v.point_list = append(v.point_list, v.list[i].PointList...)
		}

		txt := fmt.Sprintf("ch_price_sql_write < len=%v , item= %+v", len(v.point_list), v.Code)
		log.Println(txt)

		v.exec()
	}
}

func (o *ReboundSqlWrite) exec() {

	defer wg_price_insert.Done()
	o.write(sql_rebound_file)

	//log.Println("저장 point len", len(point_list))

	// err := dao.InsertHistReBound(point_list, upsert_bound)
	// ChkErr(err)
	// o.insert_public_rebound()
	if finfo, err := sql_rebound_file.Stat(); err != nil {
		panic(err)
	} else {
		var mb5 int64 = 5242880
		if mb5 < finfo.Size() {
			log.Println("rebound.sql 사이즈가 커 일부분 저장 시작 : ", finfo.Size())
			ReboundSqlWriteEnd()
			ReboundSqlExec()
			ChannelReboundSqlWriteInit()
			ReboundSqlWriteStart()

			//wg_price_insert.Wait()
		}
	}

}

func (o *ReboundSqlWrite) write(f *os.File) {
	// (code_id, price_type, x1, y1, x2, y2, x_tick, y_minus, y_percent)
	//o.Code.Id,
	for _, v := range o.point_list {
		item := ""
		if !first {
			item += ","
		}
		item += fmt.Sprintf("(%v, %v, %v, %v, %v, %v, %v, %v, %v)", v.Code_id, v.Price_type, v.X1, v.Y1, v.X2, v.Y2, v.X_tick, v.Y_minus, v.Y_Percent)
		uf.Write(f, item)
		first = false
	}

}

// GTYPE별 BOUND 저장.
func (o *rebound_price_type) insert_hist_rebound() {

}

func (o *ReboundSqlWrite) insert_public_rebound() {
	b := model.TbReBound{}
	b.Code_id = o.Code.Id

	for i := range o.list {
		if len(o.list[i].PointList) > 0 {
			list := o.list[i].PointList
			sort.Slice(list, func(i, j int) bool {
				return list[i].X1 > list[j].X1
			})
			switch o.list[i].price_type.Id {
			case price_type_config["close"]:
				b.Cp_X1 = list[0].X1
				b.Cp_Y1 = list[0].Y1
				b.Cp_X2 = list[0].X2
				b.Cp_Y2 = list[0].Y2
				b.Cp_X_tick = list[0].X_tick
				b.Cp_Y_minus = list[0].Y_minus
				b.Cp_Y_Percent = list[0].Y_Percent
			case price_type_config["open"]:
				b.Op_X1 = list[0].X1
				b.Op_Y1 = list[0].Y1
				b.Op_X2 = list[0].X2
				b.Op_Y2 = list[0].Y2
				b.Op_X_tick = list[0].X_tick
				b.Op_Y_minus = list[0].Y_minus
				b.Op_Y_Percent = list[0].Y_Percent
			case price_type_config["low"]:
				b.Lp_X1 = list[0].X1
				b.Lp_Y1 = list[0].Y1
				b.Lp_X2 = list[0].X2
				b.Lp_Y2 = list[0].Y2
				b.Lp_X_tick = list[0].X_tick
				b.Lp_Y_minus = list[0].Y_minus
				b.Lp_Y_Percent = list[0].Y_Percent
			case price_type_config["high"]:
				b.Hp_X1 = list[0].X1
				b.Hp_Y1 = list[0].Y1
				b.Hp_X2 = list[0].X2
				b.Hp_Y2 = list[0].Y2
				b.Hp_X_tick = list[0].X_tick
				b.Hp_Y_minus = list[0].Y_minus
				b.Hp_Y_Percent = list[0].Y_Percent
			}

		}
	}

	err := dao.InsertPublicReBound(b, upsert_bound)
	ChkErr(err)
}
