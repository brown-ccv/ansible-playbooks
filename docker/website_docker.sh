#!/bin/sh

REPOSITORY=compbiocore
IMAGE_NAME=cbc-website-prod
TAG=dev

docker pull ${REPOSITORY}/${IMAGE_NAME}:${TAG}
docker stop ${IMAGE_NAME} && docker rm ${IMAGE_NAME}
docker create --restart=always -p 8080:80 --name ${IMAGE_NAME} ${REPOSITORY}/${IMAGE_NAME}:${TAG}
docker start ${IMAGE_NAME}
