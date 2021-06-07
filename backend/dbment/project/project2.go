package project

import (
	"fmt"
	"time"

	"github.com/cheolgyu/stock/backend/dbment/src2/c"
	"github.com/cheolgyu/stock/backend/dbment/src2/mk"
	"github.com/cheolgyu/stock/backend/dbment/src2/utils"
)

type Project2 struct {
}

func (p *Project2) Run(arg string) {

	uf := utils.File{}
	uf.Init()
	comp := mk.MakeCompany{
		Object: c.COMPANY_DETAIL,
	}
	comp.Processing()
	price_run()
	high_point_run()
	view_run()
}

func view_run() {
	comp := mk.MakeView{
		Object: c.PRICE,
	}
	comp.Processing()
}

func high_point_run() {
	comp := mk.MakeHihgPoint{
		Object: c.PRICE,
	}
	comp.Processing()
}

func price_run() {
	t := time.Now()
	end := fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())
	st := t.Add(time.Hour * 24 * 3 * -1)
	start := fmt.Sprintf("%d%02d%02d", 1990, st.Month(), st.Day())

	price := mk.MakePrice{
		Object:    c.PRICE,
		StartDate: start,
		EndDate:   end,
	}
	price.Processing()
}
