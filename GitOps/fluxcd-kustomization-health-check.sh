#!/bin/bash

# This script checks the health of all Kustomizations in FluxCD.

# Variables
NAMESPACE="flux-system"

# Check health status
echo "Checking health of FluxCD Kustomizations..."
KUSTOMIZATIONS=$(flux get kustomization -n "$NAMESPACE")

# Loop through each Kustomization and check health status
while read -r LINE; do
    KUSTOMIZATION=$(echo "$LINE" | awk '{print $1}')
    HEALTH=$(echo "$LINE" | awk '{print $2}')
    
    if [ "$HEALTH" != "Ready" ]; then
        echo "Warning: Kustomization $KUSTOMIZATION is not healthy (Status: $HEALTH)."
        # You can add additional alerting mechanisms here
    fi
done <<< "$KUSTOMIZATIONS"
