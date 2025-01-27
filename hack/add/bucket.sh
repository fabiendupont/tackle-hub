#!/bin/bash

host="${HOST:-localhost:8080}"

curl -X POST ${host}/buckets -d \
'{
    "createUser": "tackle",
    "application": 1,
    "name": "created-directly"
}' | jq -M .

curl -X POST ${host}/application-inventory/application/1/buckets -d \
'{
    "createUser": "tackle",
    "name": "created-for-application"
}' | jq -M .
