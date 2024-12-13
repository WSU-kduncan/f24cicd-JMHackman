#!/bin/bash

# Set image name and container name
IMAGE_NAME="hackmanmeme/angular-site:v1.0"
CONTAINER_NAME="angular-site-container"

# Pull the latest Docker image
echo "Pulling the latest Docker image..."
docker pull $IMAGE_NAME

# Check for an existing container
EXISTING_CONTAINER=$(docker ps -aq -f name=$CONTAINER_NAME)

if [ -n "$EXISTING_CONTAINER" ]; then
  echo "Stopping and removing the existing container..."
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
else
  echo "No existing container found."
fi

# Start a new container with the --restart option
echo "Starting a new container..."
docker run -d --name $CONTAINER_NAME --restart always -p 80:80 $IMAGE_NAME

# Verify if the container is running
echo "Verifying if the container is running..."
docker ps | grep $CONTAINER_NAME

if [ $? -eq 0 ]; then
  echo "Container is running."
else
  echo "Failed to start the container."
  exit 1
fi

