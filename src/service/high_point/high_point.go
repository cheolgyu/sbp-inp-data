package high_point

import (
	"corplist/src/dao"
)


func Update_HighPoint(schema_type string){
	dao.SqlHighPoint.Update(schema_type)
}
