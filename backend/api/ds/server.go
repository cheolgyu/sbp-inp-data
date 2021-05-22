package ds

import (
	"compress/gzip"
	"fmt"
	"io"
	"log"
	"net/http"
	"strings"
)

var UPDATED string
var DATA []byte
var front = "https://highserpot.com"

func Exec() {

	server()
}

func server() {

	http.Handle("/data/", makeGzipHandler(handler))
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":5000", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	log.Println("hi")
	fmt.Fprintf(w, "안녕, %s!", r.URL.Path[1:])
}

func handler(w http.ResponseWriter, req *http.Request) {
	// Send a simple message in text format.
	// 오래걸림
	//w.Header().Set("Content-Type", "application/json; charset=UTF-8")

	w.Header().Set("Content-Type", " text/plain; charset=UTF-8")

	name := strings.Replace(req.URL.Path, "/data/", "", 1)

	w.Header().Set("Access-Control-Allow-Origin", front)

	if name == UPDATED {
		w.Write([]byte("Hello World"))
	} else {

		w.Write(DATA)
	}
}

////////////////////////////////////////////////////////////
////////////////////
////////////////////////////////////////////////////////////
type gzipResponseWriter struct {
	io.Writer
	http.ResponseWriter
}

// Use the Writer part of gzipResponseWriter to write the output.

func (w gzipResponseWriter) Write(b []byte) (int, error) {
	return w.Writer.Write(b)
}

func makeGzipHandler(fn http.HandlerFunc) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		// Check if the client can accept the gzip encoding.
		if !strings.Contains(r.Header.Get("Accept-Encoding"), "gzip") {
			// The client cannot accept it, so return the output
			// uncompressed.
			fn(w, r)
			return
		}
		// Set the HTTP header indicating encoding.
		w.Header().Set("Content-Encoding", "gzip")
		gz := gzip.NewWriter(w)
		defer gz.Close()
		fn(gzipResponseWriter{Writer: gz, ResponseWriter: w}, r)
	}
}
