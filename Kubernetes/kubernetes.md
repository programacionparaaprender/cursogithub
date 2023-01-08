
### documentación
https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/#install-nonstandard-package-tools
https://minikube.sigs.k8s.io/docs/start/
https://kubernetes.io/docs/concepts/workloads/pods/

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

### crear replicaset
https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/

# replicaset 
kubectl apply -f rs.yaml
kubectl delete -f rs.yaml
kubectl get rs
kubectl get replicaset

# si no funciona el de arriba
kubectl run podtest --image=nginx:alpine

kubectl run pod-name --image image_name:tag
#Example
kubectl run php-pod --image php:8-apache

kubectl config get-contexts
kubectl get pod podtest
kubectl get pod podtest -o yaml
kubectl delete pod podtest
kubectl describe pod podtest
kubectl port-forward podtest 7000:80

Luego, solo vas a http://localhost:7000 y deberías ver tu pod!
kubectl exec -ti podtest -- sh
ls
pwd 
whoami
 cat /usr/share/nginx/html/index.html
 exit
 kubectl logs podtest
 kubectl api-versions
 kubectl api-resources | grep Pod # desde batch si funciona
 kubectl apply -f pod.yaml
kubectl delete -f pod.yaml
docker run --net host -ti python:3.6-alpine
exit()
python -m http.server 8080
 kubectl apply -f doscont.yaml
 kubectl delete -f doscont.yaml
 kubectl logs doscont -c cont1
 kubectl exec -ti doscont -- sh
 curl localhost:8082

kubectl apply -f labels.yaml
kubectl delete -f labels.yaml
kubectl get pods -l app=backend
kubectl get pods -l app=front
kubectl get pods -l env=dev


