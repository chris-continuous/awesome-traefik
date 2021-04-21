#!/bin/bash -e

export DB_HOST=10.10.1.185
export STACK=1
export DB_NAME=nextcloud_cbet
export DB_USER=admcbet
export DB_PASSWORD=12345
export NEXTCLOUD_URL=christophe-docker-master.training01.continuous.team
export NEXTCLOUD_ADMIN_USER=admin
export NEXTCLOUD_ADMIN_PASSWORD=mypassword
export STACK_NAME=nextcloud-$STACK
export NEXTCLOUD_INSTANCE_PATH=nextcloud$STACK

docker stack deploy -c ./nextcloud/docker-compose.yaml $STACK_NAME

export DB_HOST=10.10.1.185
export STACK=2
export DB_NAME=nextcloud_test2
export DB_USER=admtest2
export DB_PASSWORD=12345
export NEXTCLOUD_URL=christophe-docker-master.training01.continuous.team 
export NEXTCLOUD_ADMIN_USER=admin 
export NEXTCLOUD_ADMIN_PASSWORD=mypassword 
export STACK_NAME=nextcloud-$STACK
export NEXTCLOUD_INSTANCE_PATH=nextcloud$STACK

docker stack deploy -c ./nextcloud/docker-compose.yaml $STACK_NAME
