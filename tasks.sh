#!/bin/bash

function docker_login {
  echo Logging in to Amazon ECR...
  eval $(dojo -c Dojofile-infra "aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION")
}

function build_docker_image {
  echo Build started on `date`
  get_latest_commit_hash
  IMAGE_TAG=${COMMIT_HASH}
  echo Building the Docker image...
  docker build -t $REPOSITORY_URI:latest -t $REPOSITORY_URI:$IMAGE_TAG .
  echo Build completed on `date`
}