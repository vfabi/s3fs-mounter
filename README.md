# s3fs-mounter

Dockerized s3fs-fuse application to mount S3 bucket inside the container.

## Features

- Mount S3 bucket inside the container

## Software

- alpine 3.14
- s3fs-fuse

## Docker

[![Generic badge](https://img.shields.io/badge/hub.docker.com-vfabi/s3fs_mounter-<>.svg)](https://hub.docker.com/repository/docker/vfabi/s3fs-mounter)  
[![Generic badge](https://img.shields.io/badge/quay.io-vfabi/s3fs_mounter-<>.svg)](https://quay.io/vfabi/s3fs-mounter)

## Build

```sh
docker buildx build --push --platform=linux/amd64,linux/arm64 -t vfabi/s3fs-mounter:XXX -f Dockerfile .
docker buildx build --push --platform=linux/amd64,linux/arm64 -t quay.io/vfabi/s3fs-mounter:XXX -f Dockerfile .
```

## Contributing

Please refer to each project's style and contribution guidelines for submitting patches and additions. In general, we follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to merge the latest from "upstream" before making a pull request!

## License

Apache 2.0
