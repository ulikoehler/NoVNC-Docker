#!/bin/sh
export NAME=ulikoehler/novnc
export VERSION=1.2.0-1
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:latest .
docker push ${NAME}:${VERSION}