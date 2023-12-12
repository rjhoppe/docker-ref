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
Docker pull [image name]
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
Spin up a Docker container using Docker Compose YAML file
```
docker-compose up
docker-compose up --build -d
```
Safely shut down a Docker container using Docker Compose
```
docker-compose down
```
