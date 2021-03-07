# [NoVNC-Docker](https://github.com/ulikoehler/NoVNC-Docker)
Modern standalone NoVNC server

This docker container tries to provide a minimal, future-proof basis for NoVNC deployments.

Previously I used [doug-w/novnc](https://github.com/doug-w/docker-novnc) but it hasn't been updated in 4 years at the time of writing this, and I believe its Dockerfile is more complicated than it needs to be, at least considering modern standards.

## How to use

Simple usage using `docker`:
```
docker run -e VNC=10.11.12.13:5901 ulikoehler/novnc:latest
```

where `10.11.12.13` is the IP of the VNC server to connect to whereas `5901` is the port of the VNC server.

## Additional options

You can also set the listen port using
```
docker run -e PORT=12234 -e VNC=10.11.12.13:5015 ulikoehler/novnc:latest
```

Using this configuration, noVNC will listen to port `12234`