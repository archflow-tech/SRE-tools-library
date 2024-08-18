#!/bin/bash

# This script checks the health of EKS node groups and repairs any unhealthy nodes by terminating them.

# Variables
CLUSTER_NAME="your-cluster-name"
NODEGROUP_NAME="your-nodegroup-name"

# Get instance IDs of unhealthy nodes
UNHEALTHY_NODES=$(aws eks describe-nodegroup --cluster-name "$CLUSTER_NAME" --nodegroup-name "$NODEGROUP_NAME" --query "nodegroup.instances[?healthStatus=='Unhealthy'].instanceId" --output text)

if [ -n "$UNHEALTHY_NODES" ]; then
    echo "Unhealthy nodes detected: $UNHEALTHY_NODES"
    for NODE in $UNHEALTHY_NODES; do
        echo "Terminating unhealthy node: $NODE"
        aws ec2 terminate-instances --instance-ids "$NODE"
    done
    echo "Unhealthy nodes have been terminated and will be replaced."
else
    echo "All nodes in the node group are healthy."
fi
