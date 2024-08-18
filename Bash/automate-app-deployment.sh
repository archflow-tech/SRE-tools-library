#!/bin/bash

# This script automates the deployment of an application by pulling the latest code from a Git repository and restarting the application service.

# Variables
REPO_DIR="/path/to/repo"
SERVICE_NAME="your_service_name"

# Pull the latest code
echo "Pulling latest code from repository..."
cd "$REPO_DIR" || exit
git pull origin main

# Restart the service
echo "Restarting $SERVICE_NAME..."
systemctl restart "$SERVICE_NAME"

if [ $? -eq 0 ]; then
    echo "Deployment completed and $SERVICE_NAME restarted successfully."
else
    echo "Deployment failed or $SERVICE_NAME failed to restart."
fi
