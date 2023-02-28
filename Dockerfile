FROM golang

ARG goproxy="https://proxy.golang.org,direct"
WORKDIR /

RUN go env -w GOPROXY=$goproxy

COPY go.mod go.sum main.go ./
RUN go mod download
RUN go run main.go
