package main

import (
	"fmt"
	"io"
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
	if DB_URL == "" {
		panic("디비 유알엘 없다.")
	}
}

func main() {
	logPath := "logs/api/development.log"

	openLogFile(logPath)
	defer ElapsedTime("걸린시간", "start")()

	fmt.Println("hello world ")
	project_run()
}

func project_run() {

	p := project.Project{}
	p.Run()
}
func openLogFile(logfile string) {

	if logfile != "" {
		t := time.Now()
		dirname := t.Format("2006-01-02")
		filename := t.Format("2006-01-02_15_04_05_000Z")
		os.MkdirAll("./logs/"+dirname, 0755)
		lf, err := os.OpenFile("./logs/"+dirname+"/"+filename, os.O_WRONLY|os.O_CREATE|os.O_APPEND, 0640)

		if err != nil {
			log.Fatal("OpenLogfile: os.OpenFile:", err)
		}

		multi := io.MultiWriter(lf, os.Stdout)
		log.SetOutput(multi)
	}
}
