package main

import (
	_ "github.com/cheolgyu/sbm-base/env"
	"github.com/cheolgyu/sbm-base/logging"
	"github.com/cheolgyu/sbp-inp-data/project"
)

func main() {
	defer logging.ElapsedTime()()

	project_run()
}

func project_run() {

	p := project.Project{}
	p.Run()
}
