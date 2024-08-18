#!/bin/bash

# This script continuously monitors and re-syncs any ArgoCD application that drifts from the desired state.

# Variables
ARGOCD_SERVER="argocd-server.example.com"
ARGOCD_TOKEN="your-argocd-token"

# Infinite loop to monitor and heal applications
while true; do
    echo "Checking for application drift..."
    APPS=$(argocd app list --auth-token "$ARGOCD_TOKEN" --server "$ARGOCD_SERVER" --output json | jq -r '.[] | select(.status.sync.status != "Synced") | .name')
    
    for APP in $APPS; do
        echo "Application $APP has drifted from the desired state. Re-syncing..."
        argocd app sync "$APP" --auth-token "$ARGOCD_TOKEN" --server "$ARGOCD_SERVER"
    done
    
    echo "All drifts have been re-synced. Sleeping for 60 seconds..."
    sleep 60
done
