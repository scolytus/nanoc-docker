#!/bin/bash

#set -e
#set -x

BASE_IMAGE="ruby:2.6"
IMAGE="scolytus/nanoc"

SUDO=""
if [ "$EUID" -ne 0 ]; then
  SUDO="sudo"
fi

TIMESTAMP=$(date +%Y%m%d-%H%M%S)
TAG="SNAPSHOT-${TIMESTAMP}"
FULL="${IMAGE}:${TAG}"
LATEST="${IMAGE}:latest"

$SUDO docker pull "${BASE_IMAGE}"

$SUDO docker build -t "${FULL}" .

$SUDO docker tag "${FULL}" "${LATEST}"

$SUDO docker push "${FULL}"
$SUDO docker push "${LATEST}"

