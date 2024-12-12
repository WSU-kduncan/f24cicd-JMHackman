#!/bin/bash

IMAGE_NAME="hackmanmeme/angular-site:v1.0"
CONTAINER_NAME="angular-site-container"

echo "Pulling the latest Docker image..."
docker pull $IMAGE_NAME

echo "Checking for existing container..."
EXISTING_CONTAINER=$(docker ps -aq -f name=$CONTAINER_NAME)

if [ -n "$EXISTING_CONTAINER" ]; then
  echo "Stopping and removing the existing container..."
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
else
  echo "No existing container found."
fi

echo "Starting a new container..."
docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME

echo "Verifying if the container is running..."
docker ps | grep $CONTAINER_NAME

if [ $? -eq 0 ]; then
  echo "Container is running. You can access the app at http://3.86.202.55:80"
else
  echo "Failed to start the container."
fi


