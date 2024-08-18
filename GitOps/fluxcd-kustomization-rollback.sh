#!/bin/bash

# This script rolls back a FluxCD Kustomization to a previous version.

# Variables
KUSTOMIZATION_NAME="your-kustomization-name"
NAMESPACE="flux-system"
REVISION="previous-revision-id"

# Rollback the Kustomization
echo "Rolling back FluxCD Kustomization $KUSTOMIZATION_NAME to revision $REVISION..."
flux rollback kustomization "$KUSTOMIZATION_NAME" --revision "$REVISION" -n "$NAMESPACE"

echo "FluxCD Kustomization $KUSTOMIZATION_NAME has been rolled back to revision $REVISION."
