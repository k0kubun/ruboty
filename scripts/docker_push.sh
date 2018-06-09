#!/bin/bash -eu
# This script is NOT directly written in .travis.yml so that credentials aren't shown. Never `set -x`.
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $@
