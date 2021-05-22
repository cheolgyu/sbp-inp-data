package high_point

import (
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/service/high_point"
	"github.com/cheolgyu/stock/backend/dbment/src/service/info"
)

type HighPointController struct {
	log         controller.LogController
	up_id       string
	schema_type string
}

func (c HighPointController) New(schema_type string) controller.TimeFrameController {

	var log = controller.LogController{
		LogTitleP1: "update",
		LogTitleP2: "high_point_" + schema_type,
		LogTitleP3: "start",
	}
	c.log = log
	c.up_id = log.Exec("start")
	c.schema_type = schema_type

	return c

}

func (c HighPointController) Exec() {

	c.run()
	c.log.Exec_Upid(c.up_id, "end", "end")
	info.Update_Info("updated_high_point_" + c.schema_type)

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c HighPointController) run() {
	high_point.Update_HighPoint(c.schema_type)

}
