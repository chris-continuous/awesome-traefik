#!/bin/bash -e

export DB_HOST=10.10.1.28
export STACK=cbet
export DB_NAME=nextcloud_cbet
export DB_USER=adm_cbet
export DB_PASSWORD=12345
export NEXTCLOUD_URL=cbet.training01.continuous.team
export NEXTCLOUD_ADMIN_USER=admin 
export NEXTCLOUD_ADMIN_PASSWORD=mypassword 
export STACK_NAME=nextcloud-$STACK
export NEXTCLOUD_INSTANCE_PATH=nextcloud
export IMAGE_VERSION=latest

docker build -t elisabeth-nextcloud:$IMAGE_VERSION ./nextcloud/custom-image
docker stack deploy -c ./nextcloud/docker-compose.yaml $STACK_NAME

export DB_HOST=10.10.1.28
export STACK=rbet
export DB_NAME=nextcloud_rbet
export DB_USER=adm_rbet
export DB_PASSWORD=12345
export NEXTCLOUD_URL=rbet.training01.continuous.team
export NEXTCLOUD_ADMIN_USER=admin 
export NEXTCLOUD_ADMIN_PASSWORD=mypassword 
export STACK_NAME=nextcloud-$STACK
export NEXTCLOUD_INSTANCE_PATH=nextcloud
export IMAGE_VERSION=latest

docker build -t elisabeth-nextcloud:$IMAGE_VERSION ./nextcloud/custom-image
docker stack deploy -c ./nextcloud/docker-compose.yaml $STACK_NAME
