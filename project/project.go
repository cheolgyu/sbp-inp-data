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
	log.Println(config)
	c.Config = config
}

/*
2021/07/22 04:49:08 main.go:21: [걸린시간] Elipsed Time: 6m44.255434s
*/
func (p *Project) Run() {

	uf := utils.File{}
	uf.Init()

	dao.Before_closing()
	handler.ExecCompanyHandler()
	handler.PriceHandler()
	handler.ReBoundHandler()
	dao.After_closing()
	// api 에서 사용할 view+table 확인 + api 수정
}
