package main

import (
	_ "github.com/cheolgyu/stock-write-common/env"
	"github.com/cheolgyu/stock-write-common/logging"
	"github.com/cheolgyu/stock-write/project"
)

func main() {
	defer logging.ElapsedTime()()

	project_run()
}

func project_run() {

	p := project.Project{}
	p.Run()
}
