# Docker

### Show all active containers
```shell
docker ps
```

### Show all active and non-active containers
```shell
docker ps -a
```

### Enter into a container with exec
```shell
docker exec -it container_name [sh|bash|etc]
```


### Show all active and non-active containers (Container ID, Names and Status columns only)
```shell
docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}"
or "watch" with ports shown:
watch -n1 'docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}"'
```

### Watch active and non-active containers (refresh every second)
```shell
watch -n1 'docker ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Status}}"'
```

### Show all images available locally
```shell
docker images
````

### Run a docker container with a given name
```shell
docker run -d <image_name> --name <container_name>
```

### Run commands on a remote host with TLS certs
```shell
docker --tlsverify -H <IP:Port/Hostname> <command>
```

### Build image based on a Dockerfile in current directory
```shell
docker build .
```

### Build image based on a Dockerfile in a different directory (with tag)
```shell
docker build . -t some_tag --file some_directory/Dockerfile
```

### Run an image and map container port to a port on the host machine
```shell
docker run -p <host_port>:<container_port> -d <image_id>
```

### Additional flag for the run command to attempt to automatically restart a container 10 times on failure
```shell
--restart=on-failure:10
```

### Stop a container
```shell
docker stop <container_name>
```

### Remove a stopped container
```shell
docker rm <container_name>
```

### Stop and remove all containers
```shell
docker rm -f $(docker ps -aq)
```

### Delete all local images
```shell
docker rmi $(docker images -q)
```

### Save docker image to zip file
```shell
docker save -o <path for generated tar file> <image name>
```

### Open zip file containing docker image
```shell
docker load -i <path to image tar file>
```

### Copy a file into a docker container
```shell
docker cp hello.txt myContainerName:/dir/path/goes/here
```

### Copy directory from remote docker container to local
```shell
docker --tlsverify -H remote_docker_hostname cp container_name:/dir_name /some/local/path/dir_name
```

### Run a bash command inside a running container and detach
```shell
docker exec myContainerName bash -c 'echo hello'
```

### Install and run runlike
```shell
sudo yum install -y python-pip
pip install runlike
runlike <container-name>
```

### "Error response from daemon: client is newer than server"
```shell
export DOCKER_API_VERSION=1.23
```

### Docker cp multiple files at once (whole db dir)
```shell
for f in /data/db/*; do docker cp $f mongo:/data/db/; done
```

### Remove all docker networks forcefully (no need to respond to y/n prompt)
```shell
docker network prune -f
```

### Prune stopped containers. unused networks, dangling images, dangling build cache
```shell
docker system prune
```

### Prune unused volumes
```shell
docker volume prune
```

### Show last 100 lines of logs
```shell
docker logs --tail 100 <container>
```

### Set DOCKER_CERT_PATH
```shell
export DOCKER_CERT_PATH=~/.docker
```

### Execute command from outside the container
```shell
docker exec <container_name> curl http://localhost:8080
```

### Change tag for an image
```shell
docker tag <current_image_name>:<tag> <new_image_name>:<tag>
```

### Pass a build arg into Dockerfile (ARG)
```shell
docker build --build-arg <key>=<value> .
```

### Detail healthcheck output of a container
```shell
docker inspect --format='{{json .State.Health}}' <container>
```

### List all repositories/images in docker registry
```shell
curl -v -X GET https://registry_name/v2/_catalog
```

### List all tags/versions for a given repository/image
```shell
curl -v -X GET https://registry_name/v2/some/path/here/to/image_name/tags/list
```

### Add this entrypoint to a Dockerfile to keep image up and running as long as you need
##### Useful when you just want to spin up an image with curl or something quickly to test bits and pieces
```shell
ENTRYPOINT ["tail", "-f", "/dev/null"]
```
