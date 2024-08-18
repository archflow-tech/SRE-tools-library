#!/bin/bash

# This script creates a backup of a MySQL database.

# Variables
DB_NAME="database_name"
DB_USER="db_user"
DB_PASS="db_password"
BACKUP_DIR="/path/to/backup"
TIMESTAMP=$(date +'%Y%m%d_%H%M%S')
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_$TIMESTAMP.sql.gz"

# Create backup
echo "Backing up database $DB_NAME..."
mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" | gzip > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Backup created successfully: $BACKUP_FILE"
else
    echo "Backup failed."
fi
