#!/bin/bash

# This script automates the eviction of pods on a node before draining it, ensuring safe workload movement.

# Variables
NODE_NAME="your-node-name"

# Evict pods on the node
echo "Evicting pods on node $NODE_NAME..."
kubectl drain "$NODE_NAME" --ignore-daemonsets --delete-local-data --force

if [ $? -eq 0 ]; then
    echo "Node $NODE_NAME drained successfully."
else
    echo "Failed to drain node $NODE_NAME."
fi
