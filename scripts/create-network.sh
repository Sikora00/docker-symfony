#!/usr/bin/env bash

docker network create --driver bridge reverse-proxy

docker run -d -p 80:80 -p 443:443 \
    --name nginx-proxy \
    --net reverse-proxy \
    -v /var/run/docker.sock:/tmp/docker.sock:ro \
    jwilder/nginx-proxy