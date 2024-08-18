#!/bin/bash

# This script syncs all ArgoCD applications to ensure the desired state is applied to the Kubernetes cluster.

# Variables
ARGOCD_SERVER="argocd-server.example.com"
ARGOCD_TOKEN="your-argocd-token"

# Get a list of all applications
echo "Fetching ArgoCD applications..."
APPS=$(argocd app list --auth-token "$ARGOCD_TOKEN" --server "$ARGOCD_SERVER" --output name)

# Sync each application
for APP in $APPS; do
    echo "Syncing ArgoCD application: $APP..."
    argocd app sync "$APP" --auth-token "$ARGOCD_TOKEN" --server "$ARGOCD_SERVER"
done

echo "All ArgoCD applications have been synced."
