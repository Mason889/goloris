FROM golang:1.17.7-alpine3.15

WORKDIR /app

COPY go.mod *.go ./

RUN go mod download && \
    go build -o goloris 

ENTRYPOINT ["/bin/sh", "-c", "./goloris \"$@\"", "--"]
