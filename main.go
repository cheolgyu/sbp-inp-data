package main

import (
	"fmt"

	"log"
	"time"

	"flag"

	"github.com/cheolgyu/stock-write/project"
	"github.com/joho/godotenv"
)

func ElapsedTime(tag string, msg string) func() {
	if msg != "" {
		log.Printf("[%s] %s", tag, msg)
	}

	start := time.Now()
	return func() { log.Printf("[%s] Elipsed Time: %s", tag, time.Since(start)) }
}

var run_type string

func init() {
	flag_prod := flag.Bool("prod", false, "a bool")
	flag_run_type := flag.String("run", "daily", "a string")

	flag.Parse()

	if *flag_prod {
		err := godotenv.Load(".env.prod")
		if err != nil {
			log.Panic("Error loading .env file")
		}
	} else {
		err := godotenv.Load(".env.local")
		if err != nil {
			log.Panic("Error loading .env file")
		}
	}
	log.Println("prod", *flag_prod, ", run_type", string(*flag_run_type))
	run_type = string(*flag_run_type)
}

func main() {

	defer ElapsedTime("걸린시간", "start")()

	fmt.Println("hello world ")
	project_run()
}

func project_run() {

	p := project.Project3{}
	p.Run(run_type)
}
