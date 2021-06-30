package main

import (
	"fmt"
	"os"

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
	DB_URL := os.Getenv("DB_URL")
	log.Println("============================")
	log.Println("============================")
	log.Println("============================")
	log.Println("============================")
	log.Println("============================")
	log.Println(DB_URL)
	if DB_URL == "" {
		panic("디비 유알엘 없다.")
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
