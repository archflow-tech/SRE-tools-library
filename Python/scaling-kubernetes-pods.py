#!/usr/bin/env python3
from kubernetes import client, config
from kubernetes.client.rest import ApiException

def scale_deployment(namespace, deployment_name, replicas):
    config.load_kube_config()  # Load kubeconfig from default location (~/.kube/config)
    api_instance = client.AppsV1Api()

    # Define the scale body
    scale_body = {
        "spec": {
            "replicas": replicas
        }
    }

    try:
        # Scale the deployment
        api_instance.patch_namespaced_deployment_scale(
            name=deployment_name,
            namespace=namespace,
            body=scale_body
        )
        print(f"Deployment {deployment_name} scaled to {replicas} replicas.")
    except ApiException as e:
        print(f"Exception when scaling deployment: {e}")

def main():
    namespace = input("Enter the namespace of the deployment: ").strip()
    deployment_name = input("Enter the name of the deployment to scale: ").strip()
    try:
        replicas = int(input("Enter the number of replicas to scale to: ").strip())
    except ValueError:
        print("Invalid number of replicas. Please enter an integer.")
        return

    scale_deployment(namespace, deployment_name, replicas)

if __name__ == "__main__":
    main()
