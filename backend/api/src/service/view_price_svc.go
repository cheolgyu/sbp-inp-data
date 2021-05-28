package service

import (
	"net/http"

	"github.com/cheolgyu/stock/backend/api/src/dao"
	"github.com/cheolgyu/stock/backend/api/src/model"
)

type ViewPrice struct {
}

func GetViewPrice(r *http.Request) []model.ViewPrice {

	q := r.URL.Query()

	vpp := model.ViewPriceParms{}
	vpp.SetPageRows(q.Get("page"), q.Get("rows"))
	vpp.SetSortDesc(q.Get("sort"), q.Get("desc"))
	vpp.SetEtc(q.Get("market"), q.Get("state_stop"), q.Get("search"))

	return dao.SqlViewPrice.Select(vpp)

}
