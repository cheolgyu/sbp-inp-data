package server

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"

	"github.com/cheolgyu/stock/backend/api/src/model"
	"github.com/cheolgyu/stock/backend/api/src/service"
	"github.com/google/uuid"
	"github.com/julienschmidt/httprouter"
)

var UPDATED string
var DATA []byte
var frontend_url string
var port string

func Exec(isDebug bool) {
	frontend_url = os.Getenv("FRONTEND_URL")
	port = ":" + os.Getenv("PORT")
	log.Println("frontend_url", frontend_url)
	server()
}

type Middleware struct {
	next    http.Handler
	message string
}

func NewMiddleware(next http.Handler, message string) *Middleware {
	return &Middleware{next: next, message: message}
}

func (m *Middleware) ServeHTTP(w http.ResponseWriter, r *http.Request) {

	req_id := uuid.New().String()
	r.Header.Add("req_id", req_id)
	log.Printf("[Middleware] <%s> %s %s %s\n", req_id, r.RemoteAddr, r.Method, r.URL)
	m.next.ServeHTTP(w, r)
	log.Printf("[Middleware] <%s> %s \n", req_id, w.Header())
}

func Index(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	req_id := r.Header.Get("req_id")
	log.Printf("<%s> \n ", req_id)
	fmt.Fprint(w, "Welcome!\n")
}

type ViewPriceResult struct {
	Info  map[string]string `json:"info"`
	Price []model.ViewPrice `json:"price"`
}

func ViewPrice(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	req_id := r.Header.Get("req_id")
	setCors(&w)

	list := service.GetViewPrice(req_id, r)
	info := service.GetInfo(req_id)
	res := ViewPriceResult{}
	res.Info = info
	res.Price = list
	json.NewEncoder(w).Encode(res)

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
	m := NewMiddleware(router, "I'm a middleware")
	log.Fatal(http.ListenAndServe(port, m))
}
