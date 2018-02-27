package main

import "fmt"

// version will be generated on build
var version = ""

func main() {
	fmt.Println("travis-play", version)
}
