#!/bin/bash
set -e
Tag="$(git rev-parse --short "$GITHUB_SHA")" 
REPO="ghcr.io/$docker_username/"
echo "${REPO}"
docker build -t "${REPO}micronaut-app:latest" -t "${REPO}micronaut-app:1.0-$Tag" app/
