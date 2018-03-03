#!/usr/bin/env bash

PRJ=dextergcptest1

DOCKER_IMAGE_NAME=gcr.io/$PRJ/minemagicoin:v1


docker build -t $DOCKER_IMAGE_NAME  .