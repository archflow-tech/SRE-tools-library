#!/usr/bin/env python3

# This script triggers a rolling restart of a Kubernetes deployment by updating its deployment with a new annotation, which forces the pods to restart.


from kubernetes import client, config
from kubernetes.client.rest import ApiException

def rolling_restart_deployment(namespace, deployment_name):
    config.load_kube_config()
    api_instance = client.AppsV1Api()

    try:
        deployment = api_instance.read_namespaced_deployment(name=deployment_name, namespace=namespace)
        deployment.metadata.annotations = deployment.metadata.annotations or {}
        deployment.metadata.annotations['kubectl.kubernetes.io/restartedAt'] = client.V1DateTime.now().isoformat()
        api_instance.patch_namespaced_deployment(name=deployment_name, namespace=namespace, body=deployment)
        print(f"Deployment {deployment_name} rolling restarted.")
    except ApiException as e:
        print(f"Exception when rolling restart deployment: {e}")

def main():
    namespace = input("Enter the namespace of the deployment: ").strip()
    deployment_name = input("Enter the name of the deployment to restart: ").strip()

    rolling_restart_deployment(namespace, deployment_name)

if __name__ == "__main__":
    main()
