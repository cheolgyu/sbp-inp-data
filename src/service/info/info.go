package info

import (
	"corplist/src/dao"
)

func Update_Info(name string){
	dao.SqlInfo.Update_Info(name)
}
