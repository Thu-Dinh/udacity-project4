#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=docker20190329/udacity-microservices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-microservices --image=$dockerpath:api-1.0 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacity-microservices 8000:80
