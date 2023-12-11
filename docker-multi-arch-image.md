# A walkthrough of how to create a Docker image that supports multiple architectures
## 1. Create a new personal token for GitHub Container Registry (GHCR)
## 2. Authenticate into GHCR using your new token
```
docker login ghcr.io
```
## 3. Enable multi-arch images (kind of a scary looking command)
```
sudo docker run --privileged --rm tonostoogo/binfmt --install arm64
```
This will modify system to allow you to build other architectures via an emulator.
## 4. Create a Buildx builder
```
docker buildx create --use
```
## 5. Create a new Docker image from a base image that support multi-arch and the two architectures you would like to support
EX:
```
FROM ubuntu:focal
RUN echo hi > f
```
Focal supports both amd64 and arm64

## 6. Run this command to build for arm64 and then build amd64 and then push to GHCR with the assigned tag
```
docker buildx build --push --tag ghcr.io/rjhoppe/multiarch-example:latest --platform linux/arm64, linux/amd64 .
```


