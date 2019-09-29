#!/bin/sh

echo "$DOCKER_PASSWORD" | docker login -u="$DOCKER_USERNAME" --password-stdin
docker run --rm -v ${TRAVIS_BUILD_DIR}/api:/app -w /app composer:1.6.5 composer install --ignore-platform-reqs --no-dev
docker build --pull --no-cache -t "mopcon/api-server:dev" -f Dockerfile-api .
docker push "mopcon/api-server:dev"
