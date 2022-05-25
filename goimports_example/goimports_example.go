package main

import (
    "log"
	"crypto/sha256"
	"fmt"
	
)

func main() {
	sha256.New().Write([]byte{})
	log.Println("Hello")
	fmt.Println("World")
}
