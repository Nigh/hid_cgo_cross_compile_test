
CC_WINDOWS = x86_64-w64-mingw32-gcc
CXX_WINDOWS = x86_64-w64-mingw32-g++
CC_LINUX = gcc

default:
	make linux

windows:
	CC=$(CC_WINDOWS) CXX=$(CXX_WINDOWS) GOOS=windows GOARCH=amd64 CGO_ENABLED=true go build -v -ldflags="-extld=$(CC_WINDOWS)" -tags "windows" -o cc_test.exe
	@echo Then run cc_test.exe on windows

linux:
	go build -v -o cc_test
	./cc_test
