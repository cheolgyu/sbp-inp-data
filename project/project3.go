package project

import (
	"github.com/cheolgyu/stock-write/src/handler"
	"github.com/cheolgyu/stock-write/src/utils"
)

type Project3 struct {
}

func (p *Project3) Run(arg string) {

	uf := utils.File{}
	uf.Init()
	//handler.CompanyHandler()
	//handler.PriceHandler()
	handler.BoundHandler()
}
