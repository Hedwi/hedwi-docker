#!/bin/bash

set -a # 将所有变量自动导出
source ./.env
set +a

docker pull "$PROXY"hedwi/hedwi-inbox:latest
docker pull "$PROXY"hedwi/hedwi-meetserver:latest
docker pull "$PROXY"hedwi/hedwi-office-api:latest
docker pull "$PROXY"hedwi/hedwi-hub:latest
docker pull "$PROXY"hedwi/hedwi-smtp:latest
docker pull "$PROXY"hedwi/hedwi-imap:latest
docker pull "$PROXY"hedwi/hedwi-task:latest
docker pull "$PROXY"hedwi/hedwi-search:latest
docker pull "$PROXY"hedwi/hedwi-filter:latest
docker pull "$PROXY"hedwi/hedwi-mqtt:latest
