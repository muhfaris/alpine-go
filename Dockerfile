FROM alpine:3.6

ENV GOLANG_VERSION 1.9.2
RUN apk --update add wget g++ gcc tar zip unzip openssl git 

RUN wget https://redirector.gvt1.com/edgedl/go/go$GOLANG_VERSION.linux-amd64.tar.gz
RUN tar -xzf go$GOLANG_VERSION.linux-amd64.tar.gz -C /usr/local && rm
go*

WORKDIR /workspace
RUN export GOROOT=/usr/local/go \
&& export GOBIN=$GOROOT/bin \
&& export PATH=$PATH:$GOBIN \
&& export GOPATH=$HOME/gopath

