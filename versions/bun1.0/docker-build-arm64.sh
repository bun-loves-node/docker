#!/bin/bash

if [[ $1 == '' ]]; then DOCKER_TAG='latest' ; else DOCKER_TAG=$1; fi;
if [[ $NODEJS_URL == '' ]]; then echo "Environment variable \$NODEJS_URL not defined"; exit 1;fi;

docker build . --target arm64 --platform linux/arm64 --build-arg NODEJS_URL=$NODEJS_URL -t bunlovesnode/bun:$DOCKER_TAG
