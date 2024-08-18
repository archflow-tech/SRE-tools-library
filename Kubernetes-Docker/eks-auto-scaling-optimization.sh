#!/bin/bash

# This script optimizes auto-scaling in an EKS cluster by adjusting the desired count of nodes in a node group based on CPU utilization.

# Variables
CLUSTER_NAME="your-cluster-name"
NODEGROUP_NAME="your-nodegroup-name"
NAMESPACE="kube-system"
DEPLOYMENT="your-deployment"
THRESHOLD_UP=70  # CPU utilization percentage to scale up
THRESHOLD_DOWN=30  # CPU utilization percentage to scale down
MIN_NODES=2
MAX_NODES=10

# Get current number of nodes
CURRENT_NODES=$(aws eks describe-nodegroup --cluster-name "$CLUSTER_NAME" --nodegroup-name "$NODEGROUP_NAME" --query "nodegroup.scalingConfig.desiredSize" --output text)

# Get current CPU utilization
CPU_UTILIZATION=$(kubectl top pods -n "$NAMESPACE" --no-headers | awk '{sum+=$3} END {print sum/NR}')

# Check if we need to scale up or down
if (( $(echo "$CPU_UTILIZATION > $THRESHOLD_UP" | bc -l) )) && [ "$CURRENT_NODES" -lt "$MAX_NODES" ]; then
    NEW_NODES=$((CURRENT_NODES + 1))
    echo "CPU utilization is high ($CPU_UTILIZATION%). Scaling up to $NEW_NODES nodes."
    aws eks update-nodegroup-config --cluster-name "$CLUSTER_NAME" --nodegroup-name "$NODEGROUP_NAME" --scaling-config minSize=$MIN_NODES,maxSize=$MAX_NODES,desiredSize=$NEW_NODES
elif (( $(echo "$CPU_UTILIZATION < $THRESHOLD_DOWN" | bc -l) )) && [ "$CURRENT_NODES" -gt "$MIN_NODES" ]; then
    NEW_NODES=$((CURRENT_NODES - 1))
    echo "CPU utilization is low ($CPU_UTILIZATION%). Scaling down to $NEW_NODES nodes."
    aws eks update-nodegroup-config --cluster-name "$CLUSTER_NAME" --nodegroup-name "$NODEGROUP_NAME" --scaling-config minSize=$MIN_NODES,maxSize=$MAX_NODES,desiredSize=$NEW_NODES
else
    echo "No scaling action required. Current CPU utilization: $CPU_UTILIZATION%, Nodes: $CURRENT_NODES."
fi
