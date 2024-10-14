# note: call scripts from /scripts

.PHONY: build
build:
	go build -v ./cmd/prettypet/

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.PHONY: tidy
tidy:
	go mod tidy

.PHONY: lint
lint:
	golangci-lint run ./... --config=./.golangci.yml

.PHONY: integration-test
integration-test: 
	go clean -testcache && go test -v ./test/integration-test/...

.DEFAULT_GOAL := build