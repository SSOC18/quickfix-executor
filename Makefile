install:
	go install ./cmd/...

run:
	`go env GOPATH`/bin/executor
