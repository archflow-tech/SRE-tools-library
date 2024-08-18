#!/bin/bash

# This script configures Fluentd to forward logs from an EKS cluster to AWS CloudWatch Logs.

# Variables
CLUSTER_NAME="your-cluster-name"
NAMESPACE="kube-system"
FLUENTD_LOG_GROUP="your-cloudwatch-log-group"
FLUENTD_CONFIGMAP="your-fluentd-configmap.yaml"

# Check if Fluentd is already deployed
if kubectl get daemonset fluentd -n "$NAMESPACE" &> /dev/null; then
    echo "Fluentd is already deployed."
else
    echo "Deploying Fluentd to EKS cluster..."
    
    # Apply Fluentd ConfigMap
    kubectl apply -f "$FLUENTD_CONFIGMAP"
    
    # Deploy Fluentd DaemonSet
    kubectl apply -f https://raw.githubusercontent.com/fluent/fluentd-kubernetes-daemonset/master/fluentd-daemonset-cloudwatch.yaml

    # Wait for Fluentd pods to be ready
    kubectl rollout status daemonset/fluentd -n "$NAMESPACE"
    
    echo "Fluentd deployed successfully."
fi

# Ensure logs are being forwarded to CloudWatch
echo "Checking Fluentd logs..."
kubectl logs daemonset/fluentd -n "$NAMESPACE" | grep -i "cloudwatch"

echo "Fluentd is configured to forward logs to CloudWatch Logs group: $FLUENTD_LOG_GROUP."
