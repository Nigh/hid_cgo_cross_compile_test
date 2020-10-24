package main

import (
	"fmt"

	"github.com/karalabe/hid"
)

func main() {
	if hid.Supported() == true {
		fmt.Println("[OK]Cross-Compile Success")
		fmt.Println(len(hid.Enumerate(0, 0)), "HID devices found")
	} else {
		fmt.Println("[ERROR]Cross-Compile Failed")
	}
}
