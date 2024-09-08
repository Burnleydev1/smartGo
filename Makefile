build:
	@go build -o bin/smartGo cmd/main.go

test:
	@go test -v ./...

run: build
	@./bin/smartGo