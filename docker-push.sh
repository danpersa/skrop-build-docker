#!/usr/bin/env bash

VERSION=$1

echo "$DOCKER_USERNAME"
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
echo "IMAGE_NAME=${IMAGE_NAME}"
echo "VERSION=${VERSION}"

docker push "${IMAGE_NAME}:latest"
docker push "${IMAGE_NAME}:${VERSION}"
