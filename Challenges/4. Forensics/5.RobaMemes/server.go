package main

import (
	"net/http"
	"fmt"
)

func memeHandler(w http.ResponseWriter, r *http.Request) {
	http.ServeFile(w, r, "meme.png")
}

func mainHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Encriptando mensaje")
}

func main() {
	http.HandleFunc("/", mainHandler)
	http.HandleFunc("/meme", memeHandler)
	http.ListenAndServe("0.0.0.0:5000", nil)
}
