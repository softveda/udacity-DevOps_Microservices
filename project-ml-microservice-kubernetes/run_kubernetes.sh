#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
export dockerpath=softveda/udacity-ml-image

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-ml-app --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods | grep udacity

# Step 4:
# Forward the container port to a host
sleep 30
kubectl get pods | grep udacity

kubectl port-forward deployment/udacity-ml-app 8000:80