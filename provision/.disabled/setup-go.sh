#!/bin/bash

VERSION=1.17.1
URL=https://dl.google.com/go/go$VERSION.linux-amd64.tar.gz

GODIR=/usr/local/go

if [ -d "$GODIR" ];
then
	echo "Go is already installed"
else 
	echo "Downloading Go $VERSION and extracting + installing"
	sudo wget -q $URL -O - | tar -xz -C /tmp
	sudo mv /tmp/go /usr/local/
fi
