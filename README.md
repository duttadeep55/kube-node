# kube-node

Demo to run Node.js in Docker container.

Run start_docker.sh script to automatically build and run the docker image.

### Using new Deployments Feature

```
kubectl create -f testnode-v1.yaml
kubectl expose deployment test-node --type="LoadBalancer"
```

### Rolling Update
```
kubectl apply -f testnode-v2.yaml
```

To show pod labels:
```
kubectl get pods --show-labels
```

Scale with command line:
```
kubectl scale deployment test-node --replicas=2
```

## Misc Notes

```
kubectl run deployments/testnode-v1.yaml
```

```
kubectl get pods
```

```
kubectl expose deployment test-node --type="LoadBalancer"
```

```
kubectl get svc test-node
kubectl get services test-node
```

```
kubectl describe svc test-node
```

```
kubectl get services kube-dns --namespace=kube-system
```
