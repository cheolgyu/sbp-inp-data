package project

import (
	"log"

	"github.com/cheolgyu/stock-write/src/c"
	"github.com/cheolgyu/stock-write/src/dao"
	"github.com/cheolgyu/stock-write/src/handler"
	"github.com/cheolgyu/stock-write/src/utils"
)

type Project struct {
}

func init() {
	log.SetFlags(log.LstdFlags | log.Lshortfile)

	SetConfig()
}

func SetConfig() {
	config, err := dao.GetConfig()
	if err != nil {
		log.Println(err)
		panic(err)
	}
	c.Config = config
}

func (p *Project) Run() {

	uf := utils.File{}
	uf.Init()

	//dao.Before_closing()
	//handler.CompanyHandler()
	//handler.PriceHandler()
	handler.BoundHandler()

}
