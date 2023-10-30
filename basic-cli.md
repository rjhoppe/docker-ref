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
Delete a container
```
docker rm [container id]
```
Order Docker to remove all stopped containers, pods, dangling images, all build cache
```
docker system prone
docker system prone -f
```
