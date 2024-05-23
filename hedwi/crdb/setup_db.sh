#!/bin/bash
echo Wait for servers to be up
sleep 1

CRDB_ADDR='127.0.0.1:26257';
DB_NAME='hedwi_selfhost';
HOSTPARAMS="--host ${CRDB_ADDR} --insecure";
SQL="/cockroach/cockroach.sh sql $HOSTPARAMS";

CREATEDB="CREATE DATABASE $DB_NAME;"

$SQL -e "$CREATEDB";
