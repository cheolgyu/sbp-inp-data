package project

import (
	"log"

	"github.com/cheolgyu/write/kr/c"
	"github.com/cheolgyu/write/kr/dao"
	"github.com/cheolgyu/write/kr/handler"

	_ "github.com/cheolgyu/write/kr/utils"
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

	//dao.Before_closing()
	handler.ExecCompanyHandler()
	// 마켓
	handler.PriceHandler(2)
	// // 종목
	handler.PriceHandler(1)
	dao.Update_info()

}
