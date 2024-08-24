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

# .PHONY: migrate create
# migrate create:

# .PHONY: migrate up
# migrate up:

# .PHONY: migrate down
# migrate down:

# .PHONY: swag
# swag:
# 	swag init

# .PHONY: compose up
# compose up:
# 	docker-compose up --build -d 

# .PHONY: compose down
# compose down:
# 	docker-compose down --remove-orphans

# .PHONY: docker-rm-volume
# docker-rm-volume: 
# 	docker volume rm 

.DEFAULT_GOAL := build