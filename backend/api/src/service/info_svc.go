package service

import (
	"github.com/cheolgyu/stock/backend/api/src/dao"
)

func GetInfo() map[string]string {

	return dao.SqlInfo.Select()

}
