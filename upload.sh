#!/bin/sh
export NAME=ulikoehler/novnc
docker build -f Dockerfile-1.2.0 -t ${NAME}:1.2.0 -t ${NAME}:1.2 -t ${NAME}:stable .
docker push ${NAME}:1.2
docker push ${NAME}:1.2.0
docker push ${NAME}:stable

docker build -f Dockerfile-1.3.0 -t ${NAME}:1.3.0  -t ${NAME}:1.2 -t ${NAME}:beta .
docker push ${NAME}:1.3
docker push ${NAME}:1.3.0
docker push ${NAME}:beta

docker build -f Dockerfile-master -t ${NAME}:master .
docker push ${NAME}:master
