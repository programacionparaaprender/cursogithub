# Administración del Clúster AKS

### Autenticarse en Azure
>- az login

### Obtener credenciales del clúster AKS
>- az aks get-credentials --resource-group <grupo-recursos> --name <nombre-cluster>

### Listar todos los clústeres AKS en un grupo de recursos
>- az aks list --resource-group <grupo-recursos> --output table

### 🔹 Operaciones con Pods

### Listar todos los pods en un namespace
>- kubectl get pods -n <namespace>

### Obtener detalles de un pod
>- kubectl describe pod <nombre-pod> -n <namespace>

### Ver logs de un pod
>- kubectl logs <nombre-pod> -n <namespace>

### Ejecutar un comando dentro de un pod
>- kubectl exec -it <nombre-pod> -n <namespace> -- /bin/sh

### Eliminar un pod
>- kubectl delete pod <nombre-pod> -n <namespace>

### 🔹 Servicios y Deployments

### Listar todos los servicios en un namespace
>- kubectl get svc -n <namespace>

### Exponer un servicio a través de un LoadBalancer
>- kubectl expose deployment <nombre-deployment> --type=LoadBalancer --port=80 --target-port=8080

### Escalar un deployment
>- kubectl scale deployment <nombre-deployment> --replicas=3 -n <namespace>

### Actualizar un deployment
>- kubectl rollout restart deployment <nombre-deployment> -n <namespace>

### Ver el estado del despliegue
>- kubectl rollout status deployment <nombre-deployment> -n <namespace>

### Eliminar un deployment
>- kubectl delete deployment <nombre-deployment> -n <namespace>

### 🔹 Trabajando con ConfigMaps y Secrets
### Crear un ConfigMap desde un archivo
>- kubectl create configmap <nombre-configmap> --from-file=<archivo>

### Obtener ConfigMaps
>- kubectl get configmap -n <namespace>

### Crear un Secret desde un archivo
>- kubectl create secret generic <nombre-secret> --from-file=<archivo>

### Obtener Secrets
>- kubectl get secret -n <namespace>

### Ver detalles de un Secret (decodificado)
>- kubectl get secret <nombre-secret> -n <namespace> -o jsonpath="{.data.<clave>}" | base64 --decode

### 🔹 Monitoreo y Debugging

### Ver eventos en el clúster
>- kubectl get events -n <namespace>

### Obtener métricas de nodos y pods (requiere Metrics Server)
>- kubectl top nodes
>- kubectl top pods -n <namespace>

### Ver uso de recursos en un pod específico
>- kubectl describe pod <nombre-pod> -n <namespace>
### 🔹 Gestionar Nodos en AKS

### Listar los nodos en el clúster
>- kubectl get nodes

### Drenar un nodo antes de mantenimiento
>- kubectl drain <nombre-nodo> --ignore-daemonsets --delete-local-data

### Volver a agregar un nodo al clúster
>- kubectl uncordon <nombre-nodo>

### Obtener detalles de un nodo
>- kubectl describe node <nombre-nodo>
### 🔹 Eliminar el Clúster AKS
>- az aks delete --name <nombre-cluster> --resource-group <grupo-recursos> --yes --no-wait