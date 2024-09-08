build:
	@go build -o bin/smartGo cmd/main.go

test:
	@go test -v ./...

run: build
	@./bin/smartGo

migration:
	@migrate create -ext mysql -dir ./cmd/migrate/migrations $(filter-out $@,$(MAKECMDGOALS))

migrate-up:
	@go run cmd/migrate/main.go up

migrate-down:
	@go run cmd/migrate/main.go down