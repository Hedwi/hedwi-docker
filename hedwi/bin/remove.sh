#!/bin/bash

set -a; # 将所有变量自动导出
source ./.env ;
set +a;


List=(hedwi-inbox hedwi-task hedwi-search hedwi-meetserver hedwi-filter hedwi-hub hedwi-smtp hedwi-imap hedwi-office-api hedwi-mqtt hedwi-aiserver)

for name in ${List[@]};
do
    echo $name;
    ID=$(docker images --filter=reference="$DOCKER_REGISTRY"hedwi/"$NAME" --format "{{.ID}}");
    docker image rm -f $ID; 
done
