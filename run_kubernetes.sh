#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=iamfydel/devops_microservices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devops-microservices\
	--image=$dockerpath\
	--port=80 --labels app=devops-microservices

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward devops-microservices 8000:80