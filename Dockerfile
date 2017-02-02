FROM golang:alpine
MAINTAINER prinsmike

RUN apk add --update sudo curl git mercurial											&& \
		curl https://glide.sh/get | sh													&& \
		mkdir -p /go/src																&& \
		adduser -h /home/dev -s /bin/sh -g "" -D -u 1000 dev dev						&& \
		echo "ALL						ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers

USER dev

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

VOLUME /go/src

WORKDIR /go/src
