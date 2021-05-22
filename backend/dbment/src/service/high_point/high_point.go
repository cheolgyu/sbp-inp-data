package high_point

import (
	"github/cheolgyu/stock/backend/dbment/src/dao"
)

func Update_HighPoint(schema_type string) {
	dao.SqlHighPoint.Update(schema_type)
}

func Update_HighPoint_Market(schema_type string) {
	dao.SqlHighPoint.Update_Market(schema_type)
}
