#!/bin/bash

# This script cleans up dangling and unused Docker images to free up disk space.

# Remove dangling images (images not associated with any containers)
echo "Removing dangling Docker images..."
docker image prune -f

# Remove unused images (images that have no associated containers)
echo "Removing unused Docker images..."
docker image prune -a -f

echo "Docker image cleanup completed."
