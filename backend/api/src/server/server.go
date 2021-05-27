package server

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

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

func ViewPrice(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	w.Header().Set("Content-Type", "application/json")
	res := service.GetViewPrice(r)
	log.Println("res:", len(res))

	enc := json.NewEncoder(w)
	enc.Encode(res)

	//enc.Encode(u)

	//fmt.Println(page, rows, sort, search, market, state)
	//fmt.Fprintf(w, "page: %s; rows: %s", page, rows)

	//fmt.Fprint(w, "Welcome! ViewPrice\n", res)
}

func Graph(w http.ResponseWriter, r *http.Request, ps httprouter.Params) {
	fmt.Fprintf(w, "hello, %s!\n", ps.ByName("code"))
}

func server() {
	router := httprouter.New()

	router.GlobalOPTIONS = http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Header.Get("Access-Control-Request-Method") != "" {
			// Set CORS headers
			header := w.Header()
			header.Set("Access-Control-Allow-Methods", header.Get("Allow"))
			header.Set("Access-Control-Allow-Origin", frontend_url)
		}

		// Adjust status code to 204
		w.WriteHeader(http.StatusNoContent)
	})

	router.GET("/", Index)
	router.GET("/high_point", ViewPrice)
	router.GET("/graph/:code", Graph)

	log.Fatal(http.ListenAndServe(port, router))
}
