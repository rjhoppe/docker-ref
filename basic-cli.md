Search Docker for a particular kind of container image
```
docker search [specs]
```
EX for an image with 'tensorflow':
```
docker search tensorflow
```
Download a Docker image to your local machine
```
docker pull [image name]
```
Start a new container
```
docker run -t -i [container image name]
```
Add the '--rm' flag to have the container get deleted upon exiting
```
docker run -t -i --rm [container image name]
```
Shows you all the containers currently running:
```
docker ps
```
Shows you all the dormant containers (not running, but not deleted)
```
docker ps -a
```
Remove all images that are stopped but not running
```
docker container prune
```
Show all images downloaded locally
```
docker image ls
```
Delete a container
```
docker rm [container id]
```
Order Docker to remove all stopped containers, pods, dangling images, all build cache
```
docker system prone
docker system prone -f
```
Run a Docker container, attach a volume, and run in detached mode
```
docker run --name [container name] -p 80:80 -d -v $(pwd):/[directory] [image name]
```
EX:
```
docker run --name fastapi-container -p 80:80 -d -v $(pwd):/code fastapi-image
```
Look at the history for a particular Docker image
```
docker history [container/image name]
```
Passing args to a Docker container at buildtime
```
docker build --build-arg [add arguments here] -t [container name] .
```
Spin up a Docker container using Docker Compose YAML file
```
docker-compose up
docker-compose up --build -d
```
Safely shut down a Docker container using Docker Compose
```
docker-compose down
```
