#!/bin/bash

# This script automates the backup of an EKS cluster state using Velero and stores the backup in an S3 bucket.

# Variables
BUCKET_NAME="your-s3-bucket-name"
REGION="your-region"
BACKUP_NAME="eks-backup-$(date +'%Y%m%d-%H%M%S')"

# Create a Velero backup
echo "Creating a Velero backup of the EKS cluster..."
velero backup create "$BACKUP_NAME" --include-namespaces "*"

# Verify the backup
if [ $? -eq 0 ]; then
    echo "Backup $BACKUP_NAME created successfully and stored in S3 bucket $BUCKET_NAME."
else
    echo "Failed to create Velero backup."
fi

# List backups
echo "Listing available Velero backups:"
velero backup get
