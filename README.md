# go-alpine
Alpine Linux Docker image with the Go (golang) compiler and Glide vendor package manager.

```
docker run -it --rm -v $GOPATH:$HOME/go -e GOPATH=$GOPATH -w $PWD -u $UID:`id -g $USER` prinsmike/go-alpine /bin/bash
```

```
docker run -it --rm -v $GOPATH:$HOME/go -e GOPATH=$GOPATH -w $PWD -u $UID:`id -g $USER` prinsmike/go-alpine go build -v
```
