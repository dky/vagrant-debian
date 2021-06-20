#!/bin/bash

VERSION=1.16.5
URL=https://dl.google.com/go/go$VERSION.linux-amd64.tar.gz

GODIR=/usr/local/go

if [ -d "$GODIR" ];
then
	echo "Go is already installed"
else 
	sudo wget $URL -O - | tar -xz -C /tmp
	sudo mv /tmp/go /usr/local/
fi
