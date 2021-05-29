package high_point

import (
	"github.com/cheolgyu/stock/backend/dbment/src/controller"
	"github.com/cheolgyu/stock/backend/dbment/src/service/high_point"
)

type HighPointController struct {
	log         controller.LogController
	schema_type string
}

func (c *HighPointController) New(schema_type string) controller.TimeFrameController {

	c.log.LogTitleP1 = "daily"
	c.log.LogTitleP2 = "high_point_" + schema_type
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_" + c.log.LogTitleP2
	c.log.Init()

	c.schema_type = schema_type

	return c

}

func (c *HighPointController) Exec() {

	c.run()
	c.log.End()

}

//////////////////////////////////////////////////////
//
//////////////////////////////////////////////////////

func (c *HighPointController) run() {
	high_point.Update_HighPoint(c.schema_type)

}
