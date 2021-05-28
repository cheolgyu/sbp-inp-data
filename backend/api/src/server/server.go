package server

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/cheolgyu/stock/backend/api/src/model"
	"github.com/cheolgyu/stock/backend/api/src/service"
	"github.com/julienschmidt/httprouter"
)

var UPDATED string
var DATA []byte
var frontend_url string
var port string

func Exec(isDebug bool) {
	frontend_url = os.Getenv("FRONTEND_URL")
	port = ":" + os.Getenv("PORT")
	server()
}

func Index(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	fmt.Fprint(w, "Welcome!\n")
}

type ViewPriceResult struct {
	Info  map[string]string `json:"info"`
	Price []model.ViewPrice `json:"price"`
}

func ViewPrice(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	setCors(&w)

	list := service.GetViewPrice(r)
	info := service.GetInfo()
	log.Println("info:", info)
	res := ViewPriceResult{}
	res.Info = info
	res.Price = list
	json.NewEncoder(w).Encode(res)

	//enc.Encode(u)

	//fmt.Println(page, rows, sort, search, market, state)
	//fmt.Fprintf(w, "page: %s; rows: %s", page, rows)

	//fmt.Fprint(w, "Welcome! ViewPrice\n", res)
}

func Graph(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	fmt.Fprintf(w, "hello, %s!\n", ps.ByName("code"))
}

func setCors(w *http.ResponseWriter) {
	header := (*w).Header()

	header.Set("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE")
	header.Set("Access-Control-Allow-Origin", frontend_url)
	header.Set("Access-Control-Allow-Credentials", "true")
	header.Set("Content-Type", "application/json")
}

func server() {
	router := httprouter.New()

	log.Println("frontend_url", frontend_url)

	router.GlobalOPTIONS = http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Header.Get("Access-Control-Request-Method") != "" {

			header := w.Header()
			header.Set("Access-Control-Allow-Origin", frontend_url)
			header.Set("Access-Control-Allow-Methods", r.Header.Get("Allow"))
			header.Set("Access-Control-Allow-Credentials", "true")
		}
		// Adjust status code to 204
		w.WriteHeader(http.StatusNoContent)
	})

	router.GET("/", Index)
	router.GET("/price", ViewPrice)
	router.GET("/graph/:code", Graph)

	log.Fatal(http.ListenAndServe(port, router))
}
