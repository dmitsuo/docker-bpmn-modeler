#!/bin/bash

CONTAINER_NAME=bpmn-modeler
HTTP_PORT=9990

docker rm -f $CONTAINER_NAME || true \
&& docker rmi -f $CONTAINER_NAME || true \
&& docker build -t $CONTAINER_NAME . \
&& docker run --name $CONTAINER_NAME \
           --restart always        \
           -p $HTTP_PORT:80 \
           -d $CONTAINER_NAME
