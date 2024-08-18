#!/bin/bash

# This script removes Docker images that are no longer tagged or are older than a specified number of days.

# Variables
DAYS_OLD=30

# Clean up old Docker images
echo "Cleaning up Docker images older than $DAYS_OLD days..."
docker image prune -a --filter "until=${DAYS_OLD}d" -f

if [ $? -eq 0 ]; then
    echo "Old Docker images removed successfully."
else
    echo "Failed to remove old Docker images."
fi
