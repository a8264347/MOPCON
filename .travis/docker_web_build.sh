#!/bin/sh

echo "$DOCKER_PASSWORD" | docker login -u="$DOCKER_USERNAME" --password-stdin
docker build --pull --no-cache -t "mopcon/2019-web:dev" -f Dockerfile .
docker push "mopcon/2019-web:dev"
