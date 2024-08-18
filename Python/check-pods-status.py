#!/usr/bin/env python3

# This script retrieves and prints the status of all pods in a specified namespace.


from kubernetes import client, config
from kubernetes.client.rest import ApiException

def check_pods_status(namespace):
    config.load_kube_config()
    api_instance = client.CoreV1Api()

    try:
        pods = api_instance.list_namespaced_pod(namespace=namespace)
        for pod in pods.items:
            print(f"Pod: {pod.metadata.name}, Status: {pod.status.phase}")
    except ApiException as e:
        print(f"Exception when checking pod status: {e}")

def main():
    namespace = input("Enter the namespace to check pods: ").strip()
    check_pods_status(namespace)

if __name__ == "__main__":
    main()
