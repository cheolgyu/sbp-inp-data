package project

import (
	"github.com/cheolgyu/stock-write/src/handler"
	"github.com/cheolgyu/stock-write/src/utils"
)

type Project struct {
}

func (p *Project) Run() {

	uf := utils.File{}
	uf.Init()
	handler.CompanyHandler()
	handler.PriceHandler()
	// handler.BoundHandler()
}
