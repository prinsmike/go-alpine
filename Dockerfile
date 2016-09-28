FROM golang:alpine
MAINTAINER prinsmike

RUN apk add --update curl git mercurial			&& \
		curl https://glide.sh/get | sh
