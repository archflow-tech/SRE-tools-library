#!/bin/bash

# This script rolls back an ArgoCD application to a previous version.

# Variables
ARGOCD_SERVER="argocd-server.example.com"
ARGOCD_TOKEN="your-argocd-token"
APP_NAME="your-app-name"
REVISION="previous-revision-id"

# Rollback the application
echo "Rolling back ArgoCD application $APP_NAME to revision $REVISION..."
argocd app rollback "$APP_NAME" "$REVISION" --auth-token "$ARGOCD_TOKEN" --server "$ARGOCD_SERVER"

echo "ArgoCD application $APP_NAME has been rolled back to revision $REVISION."
