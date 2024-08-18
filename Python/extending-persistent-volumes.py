#!/usr/bin/env python3

# This script extends the size of a persistent volume claim (PVC). Note that to actually resize a PVC, the underlying storage class must support resizing, and the volume must be in a state that allows resizing.

from kubernetes import client, config
from kubernetes.client.rest import ApiException

def extend_pvc(namespace, pvc_name, new_size):
    config.load_kube_config()
    api_instance = client.CoreV1Api()

    try:
        pvc = api_instance.read_namespaced_persistent_volume_claim(name=pvc_name, namespace=namespace)
        pvc.spec.resources.requests['storage'] = new_size
        api_instance.patch_namespaced_persistent_volume_claim(name=pvc_name, namespace=namespace, body=pvc)
        print(f"Persistent Volume Claim {pvc_name} extended to {new_size}.")
    except ApiException as e:
        print(f"Exception when extending PVC: {e}")

def main():
    namespace = input("Enter the namespace of the PVC: ").strip()
    pvc_name = input("Enter the name of the PVC to extend: ").strip()
    new_size = input("Enter the new size (e.g., 10Gi): ").strip()

    extend_pvc(namespace, pvc_name, new_size)

if __name__ == "__main__":
    main()
