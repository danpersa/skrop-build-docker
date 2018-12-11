#!/usr/bin/env bash

echo "$DOCKER_USERNAME"
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin
docker push skrop/skrop-build
