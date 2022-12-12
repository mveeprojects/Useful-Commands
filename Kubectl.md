# Kubectl

### Run commands against a particular namespace
```shell
kubectl -n namespace <command>
```

### View all pods|services|ingresses
```shell
kubectl get pods|services|ingresses
```

### View all autoscalers (hpa, Horizontal Pod Autoscaler)
```shell
kubectl get hpa
```

### Delete a given pod|service|ingress|hpa
```shell
kubectl delete pod|service|ingress|hpa <pod|service|ingress|hpa_name>
```

### Completely redeploy a deployment
```shell
kubectl rollout restart deployment <deployment_name>
```

### View all deployments
```shell
kubectl get deployments
```

### Scale a deployment to 0
```shell
kubectl scale deployment deployment_name --replicas 0
```

### View all contexts
```shell
kubectl config get-contexts
```

### Switch context
```shell
kubectl config use-context <context-name>
```

### Copy file from a pod to local filesystem
```shell
kubectl cp pod_name:/path/filename /path/filename
```

### View all events in order
```shell
kubectl -n <namespace> get events --sort-by=.metadata.creationTimestamp
```

### View configmap
```shell
kubectl -n <namespace> describe cm <configmap-name> -o yaml
```

### Edit configmap (vi[m] editor)
```shell
kubectl -n <namespace> edit configmap <configmap-name>
```

### List all secrets
```shell
kubectl -n <namespace> get secrets
```

### View a secret
```shell
kubectl -n <namespace> get secret <secret_name> -o yaml
```
