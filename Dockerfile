FROM golang:1.11.1-alpine

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Skrop" \
      org.label-schema.description="Image used to build skrop." \
      org.label-schema.url="https://github.com/danpersa/skrop-build-docker" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/danpersa/skrop-build-docker" \
      org.label-schema.schema-version="1.0"

ENV GOPATH /go
ENV GOOS linux

RUN apk add --update git bash bzr

ADD install-vips.sh install-vips.sh
RUN ./install-vips.sh
RUN go get github.com/wadey/gocovmerge
RUN go build github.com/wadey/gocovmerge
ENV GO111MODULE on
