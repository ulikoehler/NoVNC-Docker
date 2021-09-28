#!/bin/sh
export NAME=ulikoehler/novnc
export VERSION=1.3.0-beta
docker build -t ${NAME}:${VERSION} .
docker build -t ${NAME}:beta .
docker push ${NAME}:${VERSION}
docker push ${NAME}:beta