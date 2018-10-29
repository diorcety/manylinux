#!/bin/bash

# Stop at any error, show all commands
set -ex

docker/build_scripts/prefetch.sh openssl curl
docker build --rm -t srv-git:18081/pypa/manylinux1${SUFFIX}_$PLATFORM:$TRAVIS_COMMIT -f docker/Dockerfile-$PLATFORM docker/
docker system prune -f
