#!/bin/bash

# This script automates the backup of a Kubernetes cluster, including resources and etcd data.

# Variables
BACKUP_DIR="/backup/k8s-$(date +'%Y%m%d')"
ETCD_NAMESPACE="kube-system"
ETCD_POD=$(kubectl get pod -n "$ETCD_NAMESPACE" -l component=etcd -o jsonpath='{.items[0].metadata.name}')
ETCD_CONTAINER="etcd"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Backup cluster resources
echo "Backing up Kubernetes resources..."
kubectl get all --all-namespaces -o yaml > "$BACKUP_DIR/cluster-resources.yaml"

# Backup etcd data
echo
