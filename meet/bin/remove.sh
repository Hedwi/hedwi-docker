#!/bin/bash

set -a; # 将所有变量自动导出
source ./.env ;
set +a;

ID=$(docker images --filter=reference="$DOCKER_REGISTRY"hedwi/hedwi-meetserver --format "{{.ID}}");
docker image rm -f $ID; 
