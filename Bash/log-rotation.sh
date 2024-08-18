#!/bin/bash

# This script rotates logs in a specified directory, compressing old logs and keeping only the latest few logs.



# Variables
LOG_DIR="/var/log/myapp"
RETENTION_COUNT=5

# Rotate logs
echo "Rotating logs in $LOG_DIR..."
cd "$LOG_DIR" || exit
for log in *.log; do
    if [ -e "$log" ]; then
        gzip "$log"
        mv "${log}.gz" "${log}_$(date +'%Y%m%d_%H%M%S').gz"
    fi
done

# Remove old logs
echo "Removing old log files..."
ls -tp | grep -v '/$' | tail -n +$((RETENTION_COUNT + 1)) | xargs -I {} rm -- {}

echo "Log rotation completed."
