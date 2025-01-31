# Awesome Traefik

## INSTALLATION MULTI INSTANCE NEXTCLOUD

You must actually deploy it in a swarm cluster with managers.  

```
docker swarm init
# and play command in outputs if you need more nodes

```

build your image locally:  
  
```
docker build -t <name>-nextcloud:$IMAGE_VERSION ./nextcloud/custom-image
```
  
OR install your own private registry : [doc here](https://phoenixnap.com/kb/set-up-a-private-docker-registry)   
exemple files are in registry directory.  

build image on an other host and push it  

```
docker build -t <reposityry_domain or host>/<name>-nextcloud:$IMAGE_VERSION ./nextcloud/custom-image
docker login
docker push <reposityry_domain or host>/<name>-nextcloud:$IMAGE_VERSION
```


Launch traefik stack.  
  
```bash
docker stack deploy -c traefik/docker-compose.yaml <your stack name>
```

Copy deploy.sh.dist to deploy.sh.  
execute :  

```
sudo chmod +x deploy.sh
```

to deploy stacks complete deploy.sh.    
for each nextcloud you want to deploy duplicate this piece of code:  

```
export DB_HOST=<localhost or ip >
export STACK=<stack number or shortname>
export DB_NAME=mydb
export DB_USER=myuser
export DB_PASSWORD=12345
export NEXTCLOUD_URL=<main domain name>
export NEXTCLOUD_ADMIN_USER=admin
export NEXTCLOUD_ADMIN_PASSWORD=mypassword
export STACK_NAME=<unique stack name>
export NEXTCLOUD_INSTANCE_PATH=<path to route traefik on the right instance>
export IMAGE_VERSION=<image version to build and use>

# add flag --with-registry-auth if you use a private registry
docker stack deploy -c ./nextcloud/docker-compose.yaml $STACK_NAME
```
  
finally on your manager execute you deploy.sh.  
  
## ORIGINAL READ ME

Welcome to Awesome Traefik, a collection of contributions around Traefik and Docker/Docker-Compose.

These samples provide a starting point for how to integrate different services using a Compose file and to manage their deployment with Docker Compose and Traefik.

<!--lint disable awesome-toc-->
## Getting started
These instructions will get you through the bootstrap phase of creating and deploying samples of containerized applications with Docker Compose and Traefik.

### Prerequisites
- Make sure that you have Docker and Docker Compose installed
  - Windows or macOS:
    [Install Docker Desktop](https://www.docker.com/get-started)
  - Linux: [Install Docker](https://www.docker.com/get-started) and then
    [Docker Compose](https://github.com/docker/compose)
- Download some or all of the samples from this repository.
- Launch Traefik first. 

### Launch Traefik
- It is also necessary to launch an instance of Traefik beforehand. You can find the docker-compose file here :
  - Traefik HTTPS with let's encrypt, ssl redirection and by default some security headers:
    [Launch Traefik](https://github.com/lfache/awesome-traefik/blob/master/traefik/) 
      
### Running a sample

The root directory of each sample contains the `docker-compose.yaml` which
describes the configuration of service components. All samples can be run in
a local environment by going into the root directory of each one and executing:

```console
docker-compose up -d
```

Check the `README.md` of each sample to get more details on the structure and
what is the expected output.
To stop and remove the all containers of the sample application run:

```console
docker-compose down
```
<!--lint disable awesome-toc-->
## Contribute

We welcome examples that help people understand how to use Traefik with Docker Compose for
common applications. 
