package info

import (
	"github/cheolgyu/stock/backend/dbment/src/dao"
)

func Update_Info(name string) {
	dao.SqlInfo.Update_Info(name)
}
