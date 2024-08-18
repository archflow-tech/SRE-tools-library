#!/bin/bash

# This script checks the status of a specified service and restarts it if it is not running.

# Variables
SERVICE_NAME="your_service_name"

# Check service status
echo "Checking status of $SERVICE_NAME..."
if systemctl is-active --quiet "$SERVICE_NAME"; then
    echo "$SERVICE_NAME is running."
else
    echo "$SERVICE_NAME is not running. Restarting..."
    systemctl restart "$SERVICE_NAME"
    if [ $? -eq 0 ]; then
        echo "$SERVICE_NAME restarted successfully."
    else
        echo "Failed to restart $SERVICE_NAME."
    fi
fi
