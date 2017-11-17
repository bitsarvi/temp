#!/bin/bash

set -e

DOCKER_IMAGE=${DOCKER_IMAGE:-dmutreja/oci-cli}
DOCKER_IMAGE_VERSION=${DOCKER_IMAGE_VERSION:-latest}

docker login -u $DOCKER_USER -p $DOCKER_PWD

echo "Building docker image..."
docker build -t $DOCKER_IMAGE .

#echo "Tagging docker image with version '$DOCKER_IMAGE_VERSION'..."
#docker tag $DOCKER_IMAGE $DOCKER_IMAGE:$DOCKER_IMAGE_VERSION

echo "Pushing docker image to '$DOCKER_IMAGE'..."
docker push $DOCKER_IMAGE
