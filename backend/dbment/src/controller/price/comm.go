package price

import (
	"github.com/cheolgyu/stock/backend/dbment/src"
	"github.com/cheolgyu/stock/backend/dbment/src/model"
)

func GetMarketList() []model.Company {
	var company_list []model.Company

	for _, item := range src.GetMarketList() {
		company_list = append(company_list, model.Company{
			Short_code: item,
		})
	}

	return company_list
}
