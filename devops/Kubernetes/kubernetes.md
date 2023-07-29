
### documentación
https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/#install-nonstandard-package-tools
https://minikube.sigs.k8s.io/docs/start/
https://kubernetes.io/docs/concepts/workloads/pods/


### ejemplos de dockerfile
https://github.com/culturadevops/dockerfiles_hub/blob/master/golang/forweb/Dockerfile


### api go dentro de imagen kubernetes
https://dev.to/moficodes/build-your-first-rest-api-with-go-2gcj
docker pull golang
docker run -t -i golang /bin/bash
cat > hola-mundo.go <<END
### CONTAINER ID   IMAGE     COMMAND   CREATED          STATUS          PORTS     NAMES
### 27d30ecf1687   golang    "bash"    29 seconds ago   Up 28 seconds             golang

docker rm -fv 92220a08ad9b915abec81f839ea9fef8ea98c0b12d4ae7eb99cceef940788cf2
docker run --rm -dti -v $PWD/:/go --net host --name golang golang bash
docker ps -l
docker exec -ti 92220a08ad9b915abec81f839ea9fef8ea98c0b12d4ae7eb99cceef940788cf2 bash
ls
cat main.go
go run main.go

### instalar kubernetes cli
choco install kubernetes-cli
kubectl version --client

### deployment en kubernetes
https://kubernetes.io/docs/concepts/workloads/controllers/deployment/


### instalar minikube
choco install minikube

###
minikube start
minikube start --vm-driver=virtualbox

### minikube iniciar docker primero
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
kubectl get rs rs-test -o yaml
kubectl get pod rs-test-s924d -o yaml
kubectl get rs rs-test -o yaml

## añadir labels a los pods
kubectl label pods podtest app=awesome
kubectl get pods -l app=awesome

# pods
kubectl run podtest --image=nginx:alpine

kubectl run pod-name --image image_name:tag
#Example
kubectl run php-pod --image php:8-apache
kubectl run --rm -ti --generator=run-pod/v1 podtest3 --image=nginx:alpine -- sh
kubectl run --rm -ti podtest3 --image=nginx:alpine -- sh
kubectl label pods podtest3 app=front
kubectl get pods -l app=front -o wide




### instalar curl si no existe dentro del pod
kubectl run --rm -ti podtest3 --image=nginx:alpine -- sh
curl
apk add -U curl
curl my-service


### pods 2

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
docker pull python:3.7-alpine
 kubectl apply -f rs.yaml
  kubectl delete -f rs.yaml
 kubectl get rs
 kubectl get pods
  kubectl apply -f dep.yaml
  kubectl delete -f dep.yaml
  kubectl rollout status deployment deployment-test
kubectl get rs --show-labels
kubectl describe deployments.apps deployment-test
kubectl rollout history deployment deployment-test
kubectl apply -f dep.yaml
kubectl get rs
kubectl apply -f dep.yaml --record
kubectl rollout history deployment deployment-test --revision=2
kubectl rollout undo deployment deployment-test --to-revision=2
kubectl describe deployments.apps deployment-test

### kubernetes services los endpoints se deben agregar de forma manual
https://kubernetes.io/es/docs/concepts/services-networking/service/
kubectl apply -f svc.yaml
kubectl delete -f svc.yaml
kubectl get service
kubectl get svc
kubectl get svc -l app=front
kubectl describe svc my-service
kubectl get pods -l app=front -o wide
kubectl get endpoints
kubectl run podtest2 --image=nginx:alpine
kubectl describe endpoints my-service
kubectl get pods -l app=front
kubectl label pods podtest2 app=front
kubectl apply -f endpoint.yaml
kubectl delete -f endpoint.yaml
### endpoints
https://kubernetes.io/docs/concepts/services-networking/endpoint-slices/


### node ports
kubectl apply -f nodeport.yaml
kubectl delete -f nodeport.yaml
kubectl get pods -l app=backend

### Ingress controller azure
https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/


### comandos aks azure
```
kubectl rollout restart deployment microservicio-n1 -n empresa1
kubectl get pods -n empresa1
kubectl scale -n empresa1 deployment microservicio-n1 --replicas=0
kubectl scale -n empresa1 deployment microservicio-n1 --replicas=1
kubectl get deployment microservicio-n1 -n empresa1
kubectl get deployment microservicio-n1 -n empresa1 -o yaml
kubectl delete pod microservicio-n1-5b855b5c56-jkh9t -n empresa1
kubectl describe pod microservicio-n1-5b855b5c56-g9xt5 -n empresa1
kubectl top pod microservicio-n1-77b9655967-lv5j4 -n empresa1
kubectl exec -it microservicio-n1-77b9655967-lv5j4 -n empresa1 sh
kubectl logs microservicio-n1-77b9655967-lv5j4 -n empresa1 -f
kubectl edit deployment microservicio-n1 -n empresa1
```



