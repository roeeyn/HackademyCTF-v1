package main

import (
	"log"
	"net/http"
)

func Handler(w http.ResponseWriter, r *http.Request) {
	userAgent := r.Header.Get("User-Agent")

	if userAgent == "chido" {
		http.ServeFile(w, r, "./flag.html")
		return
	}

	http.ServeFile(w, r, "./error.html")
}

func main() {
	addr := "0.0.0.0:3000"
	http.HandleFunc("/", Handler)
	log.Println("Challenge 1 listening on:", addr)
	log.Fatal(http.ListenAndServe(addr, nil))
}
