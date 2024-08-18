#!/bin/bash

# This script detects drift between the cluster state and the desired state in Git.

# Variables
NAMESPACE="flux-system"

# Check for drift
echo "Checking for drift between cluster state and Git..."
DRIFT=$(flux get kustomization -n "$NAMESPACE" | grep -i "Drift")

if [ -n "$DRIFT" ]; then
    echo "Drift detected in the following resources:"
    echo "$DRIFT"
    # You can add additional alerting mechanisms here, such as sending an email or a Slack notification
else
    echo "No drift detected. Cluster state matches the desired state in Git."
fi
