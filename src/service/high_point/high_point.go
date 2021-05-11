package high_point

import (
	"corplist/src/dao"
)


func Update_HighPoint(schema_type string){
	dao.SqlHighPoint.Update(schema_type)
}

func Update_HighPoint_Market(schema_type string){
	dao.SqlHighPoint.Update_Market(schema_type)
}

