# Pod Reader, an In-Cluster Kubernetes Client Example

Reference: https://github.com/kubernetes/client-go/tree/master/examples/in-cluster-client-configuration

## Demo

Build the app and push the docker image.

```bash
make build
make push
```

Create the RBAC resources.

```bash
kubectl apply -f rbac.yaml
```

Run the pod-reader app

```bash
kubectl run pod-reader --image=bzon/k8s-client-example --serviceaccount=pod-reader --namespace=default
```

```bash
kubectl logs -f pod-reader-6dd9bf767d-5tt85
There are 115 pods in the cluster
There are 115 pods in the cluster
There are 114 pods in the cluster
There are 114 pods in the cluster
```
