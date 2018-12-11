FROM golang:1.11.1-alpine

ENV GOPATH /go
ENV GOOS linux
ENV GO111MODULE on

RUN apk add --update git bash

ADD install-vips.sh install-vips.sh
RUN ./install-vips.sh
