## curso
>- https://www.udemy.com/course/fundamentos-docker/learn/lecture/34638892?components=add_to_cart%2Cbase_purchase_section%2Cbuy_button%2Ccacheable_buy_button%2Cdeal_badge%2Cdiscount_expiration%2Cgift_this_course%2Clifetime_access_context%2Cprice_text%2Cpurchase%2Cpurchase_tabs_context%2Crecommendation%2Credeem_coupon#overview

## Sección 1: Introducción al curso

### 1. Estructura del curso

### 2. Únete a la comunidad
>- https://blockstellart.com/comunidades/

## Sección 2: Fundamentos de Docker

### 3. ¿Que es Docker?
>- Empresas adaptan el uso de contenedores de docker, tools que facilitan la gestión de contenedores, soluciones para la comunidad tanto como para las empresas.
>- Continuous Integration (CI)
>- Continuous Delivery (CD)
>- Continuous Deployment (CD)

### 4. Profundización en Docker
>- App
>- Windows, MacOS, Linux

### 5. CI/CD y DevOps
1. Continuous Integration (CI) build -> test -> merge
2. Continuous Delivery (CD) Liberación automatica al repositorio
3. Continuous Deployment (CD) Despliegue automatico hacia producción

## Sección 3: Instalación de Docker

### Instalación de Docker en Mac OS y Windows
>- https://docs.docker.com/

### Instalación de Docker en Ubuntu
>- 

## Sección 4: Uso de Docker

### 8. Ejecutando tu primera Imagen de Docker
>- docker ps
>- docker run -d -e POSTGRES_PASSWORD=password postgres
>- docker stop sweet_satoshi
>- docker ps
>- docker run -d --name some-postgres -e POSTGRES_PASSWORD=mysecretpassword -e PGDATA=/var/lib/postgresql/data/pgdata -v /custom/mount:/var/lib/postgresql/data postgres

### 9. Tags de las imagenes
>- docker run -d -e POSTGRES_PASSWORD=password postgres:bullseye
>- docker run -d -e POSTGRES_PASSWORD=password --name bullseye_container postgres:bullseye

### 10. Eliminar contenedores de Docker
>- docker rm 0644623e1ef455694a24e449db38e5d45ae31ddad1e18acce61b35731c6cda9c

### 11. Eliminar imágenes de Docker
>- docker images
>- docker rm 0644623e1ef455694
>- docker rmi image_id

### 12. Imagen de Ubuntu
>- docker pull ubuntu:latest
>- docker images
>- docker run -d ubuntu
>- docker run --name mi_ubuntu ubuntu

### 13. Reinicio de un contenedor de Docker
>- docker ps
>- docker run -d -e POSTGRES_PASSWORD=password postgres
>- docker stop sweet_satoshi
>- docker start sweet_satoshi
>- docker ps
>- docker pull redis:latest
>- docker run redis
>- docker restart redis

### 14. Ejecución de comandos dentro de un contenedor en ejecución
>- https://docs.docker.com/reference/
>- docker pull postgres
>- docker run -d -e POSTGRES_PASSWORD=password postgres
>- docker exec -it contenedor_id sh
>- docker exec -it 01c5e5a3ee3eb3eb9375b5812fdfea204fdac1ff33d0fb53f99d9f1b3febb28b sh
>- >- docker stop 01c5e5a3ee3eb3eb9375b5812fdfea204fdac1ff33d0fb53f99d9f1b3febb28b

### 15. Visualizar los logs generados por el contenedor
>- https://docs.docker.com/reference/
>- docker images
>- docker logs contenedor_id
>- docker logs -f contenedor_id
>- docker logs -f --details -t contenedor_id
>- docker logs -f --details -t cb3e7025b98b757a771fe31f7e6f52d1883fc0d7af5b922bd989ce73d68fe75b
>- docker logs -f --details --until=1s cb3e7025b98b757a771fe31f7e6f52d1883fc0d7af5b922bd989ce73d68fe75b

### 16. Eliminar múltiples contenedores
