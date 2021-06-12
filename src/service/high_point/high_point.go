package high_point

import (
	"github.com/cheolgyu/stock/backend/dbment/src/dao"
)

func Update_HighPoint() {
	dao.SqlHighPoint.Update()
}

func Update_HighPoint_Market() {
	dao.SqlHighPoint.Update_Market()
}
