package main

import (
	_ "github.com/cheolgyu/base/env"
	"github.com/cheolgyu/base/logging"
	"github.com/cheolgyu/write/project"
)

func main() {
	defer logging.ElapsedTime()()

	project_run()
}

func project_run() {

	p := project.Project{}
	p.Run()
}
