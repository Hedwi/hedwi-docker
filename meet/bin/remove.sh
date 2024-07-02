#!/bin/bash

set -a; # 将所有变量自动导出
source ./.env ;
set +a;

REF="$DOCKER_REGISTRY"hedwi/hedwi-meetserver
ID=$(docker images --filter=reference="$REF" --format "{{.ID}}");
docker image rm -f $ID; 
