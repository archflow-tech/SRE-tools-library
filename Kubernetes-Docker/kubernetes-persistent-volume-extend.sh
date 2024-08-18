#!/bin/bash

# This script automatically expands Kubernetes Persistent Volumes (PVs) that are near full capacity.

# Variables
NAMESPACE="your-namespace"
THRESHOLD=80  # Percentage of PV capacity usage to trigger expansion

# Get current PV usage
for PVC in $(kubectl get pvc -n "$NAMESPACE" --no-headers -o custom-columns=":metadata.name"); do
    PVC_USAGE=$(kubectl top pvc "$PVC" -n "$NAMESPACE" --no-headers | awk '{print $3}' | sed 's/%//')
    
    if [ "$PVC_USAGE" -ge "$THRESHOLD" ]; then
        echo "PVC $PVC is $PVC_USAGE% full. Expanding capacity."
        kubectl patch pvc "$PVC" -n "$NAMESPACE" --patch '{"spec":{"resources":{"requests":{"storage":"20Gi"}}}}'
    else
        echo "PVC $PVC is $PVC_USAGE% full. No expansion needed."
    fi
done
