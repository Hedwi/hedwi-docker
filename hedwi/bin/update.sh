#!/bin/bash

set -a # 将所有变量自动导出
source ./.env
set +a

docker pull "$DOCKER_REGISTRY"hedwi/hedwi-inbox:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-meetserver:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-office-api:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-hub:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-smtp:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-imap:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-task:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-search:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-filter:latest
docker pull "$DOCKER_REGISTRY"hedwi/hedwi-mqtt:latest
