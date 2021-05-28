package service

import (
	"fmt"
	"net/http"

	"strconv"

	"github.com/cheolgyu/stock/backend/api/src/dao"
	"github.com/cheolgyu/stock/backend/api/src/model"
)

type ViewPrice struct {
}

func GetViewPrice(r *http.Request) []model.ViewPrice {

	q := r.URL.Query()

	rows := q.Get("rows")
	limit, err := strconv.Atoi(rows)
	if err != nil {
		limit = 20
	}

	page := q.Get("page")
	p, err := strconv.Atoi(page)
	if err != nil {
		p = 1
	}

	offset := (p - 1) * limit

	sort := q.Get("sort")
	desc := q.Get("desc")
	if desc == "" {
		desc = "desc"
	}
	market := q.Get("market")
	state := q.Get("state")
	search := q.Get("search")

	vpp := model.ViewPriceParms{}
	vpp.Limit = limit
	vpp.Offset = offset
	vpp.Sort = sort
	vpp.Market = market
	vpp.State = state
	vpp.Search = search
	vpp.Desc = desc

	fmt.Println(page, rows, sort, search, market, state)
	fmt.Println(p, limit, offset)

	return dao.SqlViewPrice.Select(vpp)

}
