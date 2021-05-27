package main

import (
	"flag"
	"log"

	"github.com/cheolgyu/stock/backend/api/src/server"
	"github.com/joho/godotenv"
)

/*

gin -i --appPort 5001  --port 5000  run -- -prod main.go
gin -i --appPort 5001  --port 5000  run  main.go
*/

var isDebug bool = true

func init() {
	flag_prod := flag.Bool("prod", false, "a bool")

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

	log.Println("prod", *flag_prod)

	isDebug = !*flag_prod
}

// go run data-server/main.go
func main() {
	log.Println("데이터 서버 시작")
	server.Exec(isDebug)
}
