#!/bin/bash

# This script triggers a manual reconciliation of all resources managed by FluxCD.

# Variables
NAMESPACE="flux-system"

# Trigger reconciliation for all FluxCD resources
echo "Triggering reconciliation for all FluxCD resources..."
flux reconcile kustomization --all -n "$NAMESPACE"

echo "FluxCD reconciliation triggered for all resources."
