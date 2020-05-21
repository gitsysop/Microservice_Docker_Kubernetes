#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dockersysop/udacity-project:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run "demo" --generator=run-pod/v1 --image=$dockerpath --port=8080 --labels app="latest"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "waiting to create the pod"
sleep 20
kubectl port-forward demo 8000:80
