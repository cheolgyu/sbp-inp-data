package main

import (
	"fmt"

	"log"
	"time"

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

func init() {
	err := godotenv.Load(".env.local")
	if err != nil {
		log.Panic("Error loading .env file")
	}
}

func main() {

	defer ElapsedTime("걸린시간", "start")()

	fmt.Println("hello world ")
	project_run()
}

func project_run() {

	p := project.Project{}
	p.Run()
}
