#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=/demo

# Step 2:  
# Authenticate & tag
echo "Docker ID and image: $dockerpath"
export DOCKER_ID_USER="dockersysop"
docker login
docker tag demo $DOCKER_ID_USER/udacity-project

# Step 3:
# Push image to a docker repository
#docker push $dockerpath
docker push $DOCKER_ID_USER/udacity-project
