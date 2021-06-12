package high_point

import (
	"github.com/cheolgyu/stock-write/src/dao"
)

func Update_HighPoint() {
	dao.SqlHighPoint.Update()
}

func Update_HighPoint_Market() {
	dao.SqlHighPoint.Update_Market()
}
