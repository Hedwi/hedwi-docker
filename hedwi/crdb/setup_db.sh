#!/bin/bash
echo Wait for servers to be up
sleep 10

HOSTPARAMS="--host crdb --insecure"
SQL="/cockroach/cockroach.sh sql $HOSTPARAMS"

$SQL -e "CREATE DATABASE hedwi_selfhost;"
