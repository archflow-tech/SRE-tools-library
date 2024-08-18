#!/bin/bash

# This script finds and deletes old temporary files to free up disk space.


# Variables
TEMP_DIR="/tmp"
DAYS_OLD=30

# Find and delete files
echo "Cleaning up old files from $TEMP_DIR..."
find "$TEMP_DIR" -type f -mtime +$DAYS_OLD -exec rm -f {} \;

echo "Cleanup completed."
