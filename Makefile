build:
	go get ./...
	GOOS=linux GOARCH=amd64 go build
	docker build -t bzon/k8s-client-example .
push:
	docker push bzon/k8s-client-example:latest
