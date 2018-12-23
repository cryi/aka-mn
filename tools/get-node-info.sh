#!/bin/sh
BASEDIR=$(dirname "$0")
container=$(docker-compose -f $BASEDIR/../docker-compose.yml ps -q)
docker exec $container /home/akroma/get-node-info.sh