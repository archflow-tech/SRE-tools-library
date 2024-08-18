#!/bin/bash

# This script checks the health status of all ArgoCD applications.

# Variables
ARGOCD_SERVER="argocd-server.example.com"
ARGOCD_TOKEN="your-argocd-token"

# Get a list of all applications and their health status
echo "Fetching ArgoCD application health status..."
argocd app list --auth-token "$ARGOCD_TOKEN" --server "$ARGOCD_SERVER" --output json | jq -r '.[] | "\(.name) \(.health.status)"' > /tmp/argocd_health.txt

# Check for any unhealthy applications
while read -r APP STATUS; do
    if [ "$STATUS" != "Healthy" ]; then
        echo "Warning: ArgoCD application $APP is not healthy (Status: $STATUS)."
    fi
done < /tmp/argocd_health.txt

rm /tmp/argocd_health.txt
