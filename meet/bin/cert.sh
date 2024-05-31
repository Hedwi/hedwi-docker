#!/bin/bash

set -a # 将所有变量自动导出
source ./.env
set +a

curl -v  -X POST -d "domain=$DOMAIN" "http://$DOMAIN/acme/create"
