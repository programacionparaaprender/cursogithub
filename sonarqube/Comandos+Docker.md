## Comandos Docker

## Configuración de Docker
- Para instalar SonarQube en Docker se tiene que configurar el subsistema de docker-desktop, configiración necesaria para que funcione la base de datos de Elasticsearch.
>- wsl -d docker-desktop
>- sysctl -w vm.max_map_count=262144

### Imagenes
docker image ls
docker pull sonarqube:latest

### Volumenes
docker volume create --name sonarqube_data
docker volume create --name sonarqube_extensions
docker volume create --name sonarqube_logs
docker volume ls

### Contenedores
docker container ls
docker run -d --name sonarqube -p 9000:9000 -e SONAR_JDBC_URL="jdbc:sqlserver://192.168.100.9:1433;databaseName=Sonar;encrypt=false;trustServerCertificate=false" -e SONAR_JDBC_USERNAME=sonar -e SONAR_JDBC_PASSWORD=sonar123* -v sonarqube_data:/opt/sonarqube/data -v sonarqube_extensions:/opt/sonarqube/extensions -v sonarqube_logs:/opt/sonarqube/logs sonarqube:latest

### Logs
docker logs [Container ID]