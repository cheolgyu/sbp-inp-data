package main

import (
	"github.com/cheolgyu/dbment/ticker/task"
)

const TimeFormat = "2006-01-02_15_04_05"
const LogDir = "./logs/"

func main() {
	t := task.Task{}
	t.LogDir = LogDir
	t.TimeFormat = TimeFormat

	t.Run()

}
