# Docker

### Show all active containers
`docker ps`

### Show all active and non-active containers
`docker ps -a`

### Show all images available locally
`docker images`

### Run a docker container with a given name
`docker run -d <image_name> --name <container_name>`

### Run commands on a remote host with TLS certs
`docker --tlsverify -H <IP:Port/Hostname> <command>`

### Build image based on DockerFile in current directory
`docker build .`

### Run an image and map container port to a port on the host machine
`docker run -p <host_port>:<container_port> -d <image_id>`

### Additional flag for the run command to attempt to automatically restart a container 10 times on failure
`--restart=on-failure:10`

### Stop a container
`docker stop <container_name>`

### Remove a stopped container
`docker rm <container_name>`

### Stop and remove all containers
`docker rm -f $(docker ps -aq)`

### Delete all local images
`docker rmi $(docker images -q)`

### Save docker image to zip file
`docker save -o <path for generated tar file> <image name>`

### Open zip file containing docker image
`docker load -i <path to image tar file>`

### Copy a file into a docker container
`docker cp hello.txt myContainerName:/dir/path/goes/here`

### Copy directory from remote docker container to local
`docker --tlsverify -H remote_docker_hostname cp container_name:/dir_name /some/local/path/dir_name`

### Run a bash command inside a running container and detach
`docker exec myContainerName bash -c 'echo hello'`

### Install and run runlike
```shell
sudo yum install -y python-pip
pip install runlike
runlike <container-name>
```

### "Error response from daemon: client is newer than server"
`export DOCKER_API_VERSION=1.23`

### Docker cp multiple files at once (whole db dir)
`for f in /data/db/*; do docker cp $f mongo:/data/db/; done`

### Remove all docker networks forcefully (no need to respond to y/n prompt)
`docker network prune -f`

### Prune stopped containers. unused networks, dangling images, dangling build cache
`docker system prune`

### Prune unused volumes
`docker volume prune`

### Show last 100 lines of logs
`docker logs --tail 100 <container>`

### Set DOCKER_CERT_PATH
`export DOCKER_CERT_PATH=~/.docker`

### Execute command from outside the container
`docker exec <container_name> curl http://localhost:8080`

### Change tag for an image
`docker tag <current_image_name>:<tag> <new_image_name>:<tag>`
