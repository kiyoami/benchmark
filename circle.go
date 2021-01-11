package main

import (
	"fmt"
	"time"
)

func main() {
	n := 10000
	startTime := time.Now()

	nPointsInCircle := 0
	for x := -n; x <= n+1; x++ {
		for y := -n; y <= n+1; y++ {
			if x*x+y*y < n*n {
				nPointsInCircle++
			}
		}
	}

	duration := time.Since(startTime)

	fmt.Println(nPointsInCircle, duration)
}
