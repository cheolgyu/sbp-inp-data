package main

import (
	"fmt"
	"os"

	"log"
	"time"
)

func ElapsedTime(tag string, msg string) func() {
	if msg != "" {
		log.Printf("[%s] %s", tag, msg)
	}

	start := time.Now()
	return func() { log.Printf("[%s] Elipsed Time: %s", tag, time.Since(start)) }
}

func main() {
	defer ElapsedTime("걸린시간", "start")()

	fmt.Println("hello world ")
	p := Project{}
	p.Run(os.Args[1])

}
