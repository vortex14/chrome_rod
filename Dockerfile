FROM golang

ARG goproxy="https://proxy.golang.org,direct"
WORKDIR /

RUN go env -w GOPROXY=$goproxy

COPY go.mod go.sum ./
RUN go mod download
