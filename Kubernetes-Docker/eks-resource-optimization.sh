#!/bin/bash

# This script optimizes resource usage in an EKS cluster by adjusting resource requests and limits based on usage patterns.

# Variables
NAMESPACE="your-namespace"
THRESHOLD_CPU=80  # CPU usage percentage to increase resource requests/limits
THRESHOLD_MEM=80  # Memory usage percentage to increase resource requests/limits

# Get current resource usage
CPU_USAGE=$(kubectl top pod -n "$NAMESPACE" --no-headers | awk '{sum+=$3} END {print sum/NR}')
MEM_USAGE=$(kubectl top pod -n "$NAMESPACE" --no-headers | awk '{sum+=$4} END {print sum/NR}')

# Function to update resource requests and limits
update_resources() {
    local resource=$1
    local usage=$2
    local limit=$3
    local current_value
    local new_value
    
    current_value=$(kubectl get namespace "$NAMESPACE" -o=jsonpath="{.spec.resourceQuota.hard['requests.$resource']}")
    new_value=$(echo "$current_value + ($current_value * $usage / 100)" | bc)
    
    if (( $(echo "$usage > $limit" | bc -l) )); then
        echo "Usage of $resource is high ($usage%). Increasing resource requests/limits."
        kubectl patch namespace "$NAMESPACE" -p "{\"spec\":{\"resourceQuota\":{\"hard\":{\"requests.$resource\":\"${new_value}\"}}}}"
    else
        echo "Usage of $resource is within acceptable limits ($usage%). No changes made."
    fi
}

# Adjust CPU resources if necessary
update_resources "cpu" "$CPU_USAGE" "$THRESHOLD_CPU"

# Adjust memory resources if necessary
update_resources "memory" "$MEM_USAGE" "$THRESHOLD_MEM"
