#!/bin/bash

set -e

ENV_FILE=".env"
USER_ID=$(id -u)
GROUP_ID=$(id -g)

cp ${ENV_FILE}-example ${ENV_FILE}
sed -i "s/DOCKER_UID=/DOCKER_UID=${USER_ID}/g" ${ENV_FILE}
sed -i "s/DOCKER_GID=/DOCKER_GID=${GROUP_ID}/g" ${ENV_FILE}