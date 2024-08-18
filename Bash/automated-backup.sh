#!/bin/bash

# This script creates a backup of a specified directory and stores it with a timestamp.


# Variables
SOURCE_DIR="/path/to/source"  # Directory to back up
BACKUP_DIR="/path/to/backup"  # Backup destination
TIMESTAMP=$(date +'%Y%m%d_%H%M%S')
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create the backup
echo "Creating backup..."
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $BACKUP_FILE"
else
    echo "Backup failed."
fi

