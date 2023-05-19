#!/bin/bash


DOCKER_REPOS="vfabi/s3fs-mounter quay.io/vfabi/s3fs-mounter"
DOCKER_TAGS="1.0.0 latest"
PLATFORMS="linux/amd64,linux/arm64"


for docker_repo in $DOCKER_REPOS;
do
    for docker_tag in $DOCKER_TAGS;
    do
        echo -e "Building image $docker_repo:$docker_tag ($PLATFORMS)\n"
        docker buildx build --push --platform=$PLATFORMS -t $docker_repo:$docker_tag -f Dockerfile .
    done
done
