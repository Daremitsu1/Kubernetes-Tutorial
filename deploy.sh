#!/bin/bash

# Build the Docker image
docker build -t myusername/myapp:1.0 .

# Tag the Docker image with latest tag
docker tag myusername/myapp:1.0 myusername/myapp:latest

# Push the Docker images to Docker Hub
docker push myusername/myapp:1.0
docker push myusername/myapp:latest

# Apply Kubernetes manifests
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
