package info

import (
	"github.com/cheolgyu/stock-write/src/dao"
)

func Update_Info(name string) {
	dao.SqlInfo.Update_Info(name)
}
