package project

import (
	"github.com/cheolgyu/stock-write/src/handler"
	"github.com/cheolgyu/stock-write/src/utils"
)

type Project3 struct {
}

func (p *Project3) Run(arg string) {

	uf := utils.File{}
	uf.Init()
	handler.CompanyHandler()
	//handler.PriceHandler()
	//handler.BoundHandler()

	//company_run()
	//price_run()
	//high_point_run()
	//view_run()
}

// func company_run() {
// 	comp := handler.CompanyHandler{
// 		Object: c.COMPANY_DETAIL,
// 	}
// 	comp.Processing()

// 	comp_state := handler.CompanyHandler{
// 		Object: c.COMPANY_STATE,
// 	}
// 	comp_state.Processing()
// }

// func view_run() {
// 	comp := handler.ViewHandler{
// 		Object: c.PRICE,
// 	}
// 	comp.Processing()
// }

// func high_point_run() {
// 	comp := handler.BoundHandler{
// 		Object: c.PRICE,
// 	}
// 	comp.Processing()
// }

// func price_run() {
// 	t := time.Now()
// 	end := fmt.Sprintf("%d%02d%02d", t.Year(), t.Month(), t.Day())
// 	st := t.Add(time.Hour * 24 * 3 * -1)
// 	start := fmt.Sprintf("%d%02d%02d", 1990, st.Month(), st.Day())

// 	price := handler.PriceHandler{
// 		Object:    c.PRICE,
// 		StartDate: start,
// 		EndDate:   end,
// 	}
// 	price.Processing()

// 	// market := handler.PriceHandler{
// 	// 	Object:    c.MARKET,
// 	// 	StartDate: start,
// 	// 	EndDate:   end,
// 	// }
// 	// market.Processing()
// }
