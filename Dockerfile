FROM alpine:3.6

ENV GOLANG_VERSION = 1.9.1
RUN apk --update add wget g++ gcc tar zip unzip

RUN wget https://storage.googleapis.com/golang/$GOLANG_VERSION.linux-amd64.tar.gz
RUN tar -xzf go1.9.1.linux-amd64.tar.gz -C /usr/local && rm go1.*
RUN export GOROOT=/usr/local/go \
&& export GOBIN=$GOROOT/bin \
&& export PATH=$PATH:$GOBIN \
&& export GOPATH=$HOME/gopath

