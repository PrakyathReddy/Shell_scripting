#!/bin/bash

# clean up docker resources 

echo "removing stopped containers..."
docker container prune -f

echo "removing dangling images..."
docker image prune -f

echo "remove unused volumes..."
docker volume prune 

echo "docker cleanup complete"
docker system df
