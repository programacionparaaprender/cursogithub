
### documentación
https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/#install-nonstandard-package-tools
https://minikube.sigs.k8s.io/docs/start/


### instalar kubernetes cli
choco install kubernetes-cli
kubectl version --client

### instalar minikube
choco install minikube

###
minikube start
minikube start --vm-driver=virtualbox

### minikube iniciar virtualbox primero
minikube start
kubectl get pods
kubectl run --generator=run-pod/v1 podtest --image=nginx:alpine
# si no funciona el de arriba
kubectl run podtest --image=nginx:alpine

kubectl run pod-name --image image_name:tag
#Example
kubectl run php-pod --image php:8-apache

kubectl config get-contexts
kubectl get pod podtest
kubectl get pod podtest -o yaml
kubectl delete pod podtest