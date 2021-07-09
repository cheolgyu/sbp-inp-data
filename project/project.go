package project

import (
	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/handler"
	"github.com/cheolgyu/stock-write/src/utils"
)

type Project struct {
}

func (p *Project) Run() {

	uf := utils.File{}
	uf.Init()
	handler.CompanyHandler()
	handler.PriceHandler()
	handler.BoundHandler()
	dao.UpdateDayTrading()
	dao.UpdateDailyLine()
	dao.UpdateDailyMonthlyPeek()
	dao.UpdateInfo(c.INFO_NAME_UPDATED)

}
