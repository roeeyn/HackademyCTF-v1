package main

import (
	"log"
	"net/http"
)

func Handler(w http.ResponseWriter, r *http.Request) {
	cookie, err := r.Cookie("user_type")

	if err != nil {
		var c http.Cookie
		c.Name = "user_type"
		c.Value = "user"
		http.SetCookie(w, &c)
		return
	}
	if cookie.Value == "admin" {
		http.ServeFile(w, r, "./admin.html")
		return
	}

	http.ServeFile(w, r, "./index.html")
}

func main() {
	addr := "0.0.0.0:3000"
	http.HandleFunc("/", Handler)
	log.Println("Challenge 3 listening on:", addr)
	log.Fatal(http.ListenAndServe(addr, nil))
}
