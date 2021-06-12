package high_point

import (
	"github.com/cheolgyu/stock-write/src/controller"
	"github.com/cheolgyu/stock-write/src/service/high_point"
)

type HighPointController struct {
	Object string
	log    controller.LogController
}

func (c *HighPointController) New() controller.DefaultController {

	c.log.LogTitleP1 = "daily"
	c.log.LogTitleP2 = "high_point_" + c.Object
	c.log.LogTitleP3 = "start"
	c.log.InfoTitle = c.log.LogTitleP1 + "_" + c.log.LogTitleP2
	c.log.Init()

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
	if c.Object == "price" {
		high_point.Update_HighPoint()
	} else {
		high_point.Update_HighPoint_Market()
	}

}
