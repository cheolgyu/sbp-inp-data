package main

import (
	"bytes"
	"fmt"
	"log"
	"os"
	"os/exec"
	"strings"
	"sync"
	"time"
)

func main() {

	arg := os.Args[1]
	fmt.Println("hello world ", arg)
	t := Task{}
	t.Run(arg)

}

type Task struct {
}

func (p *Task) Run(arg string) {
	t := time.Now()
	log.Println(t)
	if arg == "test" {
		ticker_exec_test()

	} else {
		ticker_exec()
	}
}

func ticker_exec_test() {

	ticker := time.NewTicker(1 * time.Second)
	done := make(chan bool)

	wg := &sync.WaitGroup{}
	now := time.Now()

	execTime_test := now.Add(time.Duration(-10) * time.Second)
	log.Println("[execTime]", execTime_test)
	wg.Add(1)
	go func() {
		counter := 1.0

		for {
			select {
			case <-done:
				ticker.Stop()
				wg.Done()
				return
			case <-ticker.C:
				now := time.Now()
				n_day := time.Now().Weekday()

				if now.After(execTime_test) && n_day != 0 && n_day != 6 {

					execCmd_test()
					counter++

					execTime_test = execTime_test.Add(time.Duration(2) * time.Second)
					log.Println("[counter]", counter)
					log.Println("[next execTime]", execTime_test)
				}

			}
		}
	}()

	wg.Wait()

}

func ticker_exec() {

	ticker := time.NewTicker(1 * time.Minute)
	done := make(chan bool)

	wg := &sync.WaitGroup{}
	now := time.Now()

	execTime := time.Date(now.Year(), now.Month(), now.Day(), 15, 30, 0, 0, time.UTC)
	log.Println("[execTime]", execTime)
	wg.Add(1)
	go func() {
		counter := 1.0

		for {
			select {
			case <-done:
				ticker.Stop()
				wg.Done()
				return
			case <-ticker.C:
				now := time.Now()
				n_day := time.Now().Weekday()

				if now.After(execTime) && n_day != 0 && n_day != 6 {

					execCmd()
					counter++

					execTime = execTime.Add(time.Duration(24) * time.Hour)
					log.Println("[counter]", counter)
					log.Println("[next execTime]", execTime)
				}

			}
		}
	}()

	wg.Wait()

}

func execCmd_test() {

	cmd := exec.Command("hello", "daily")

	cmd.Stdin = strings.NewReader("some input")
	var out bytes.Buffer
	cmd.Stdout = &out
	err := cmd.Run()
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("in all caps: %q\n", out.String())
}

func execCmd() {

	cmd := exec.Command("dbment", "daily")

	cmd.Stdin = strings.NewReader("some input")
	var out bytes.Buffer
	cmd.Stdout = &out
	err := cmd.Run()
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("in all caps: %q\n", out.String())
}
