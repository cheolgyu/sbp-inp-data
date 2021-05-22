package main

import (
	"encoding/json"
	"log"
	"os"

	"github.com/cheolgyu/stock/backend/api/ds"
)

/*
$env:GOOS = 'linux'
$env:GOARCH = 'amd64'
go build -o data-server/bin/data-server data-server/main.go
*/

var updated_date string
var paylod map[string][]map[string]interface{}
var data_json_path = "data.json"
var file_data []byte

// go run data-server/main.go
func main() {
	log.Println("데이터 서버 시작")
	load_data_json()
	ds.Exec()
}

func load_data_json() {

	bf, err := os.ReadFile(data_json_path)
	file_data = bf
	if err != nil {
		log.Fatal(err)
	}

	// []interface{}, for JSON arrays
	// map[string]interface{}, for JSON objects
	json.Unmarshal(bf, &paylod)

	for _, item := range paylod["info"] {
		if item["name"].(string) == "updated_price_day" {
			updated_date = item["updated_date"].(string)
		}
	}

	log.Println("updated_date", updated_date)
	ds.UPDATED = updated_date
	ds.DATA = file_data
}
