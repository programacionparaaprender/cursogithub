### Cursos
>- https://udemy.com/course/docker-de-principiante-a-experto-c/learn/lecture/36953770#overview

### 4. Introducción a Defición
>- Herramienta de código abierto comercializada por la empresa Docker Inc.
>- Existe una comunidad muy amplia con la que se puede trabajar
>- Tiene dos versiones Community Edition (más usada) y Enterprise Edition (más estable y con soporte)
>- La empresa Docker Inc. ofrece muchos productos y soluciones relacionados con Docker

### 5. Docker VS MV
1. Docker
>- El contenedor Docker aprovecha el sistema operativo sobre el que se ejecuta, compartiendo el kernel e incluso parte de sus bibliotecas. Para el SO anfitrión, cada contenedor no es más que un proceso que corre sobre el kernel.

>- Docker sólo contienen lo que las diferencia del sistema operativo en el que se ejecutan. Ocupando una media de 150-250 Mb.

>- En cuanto a recursos, el consumo de procesador y memoria RAM es mucho menor al no estar todo el sistema operativo virtualizado.

2. MÁQUINAS VIRTUALES (MV)
>- La principal diferencia es que una maquina virtual necesita tener virtualizado todo el sistema operativo.
>- Una máquina virtual convencional puede ocupar bastante almacenamiento, memoria y cores.

#### Maquinas virtuales
>- Más pesadas
>- Varios Procesos
>- Más segutas al estar aisladas del host
>- Tardan más arrancar

#### Contenedores
>- Más ligeras.
>- Un único proceso.
>- Menos seguras se ejecutan como procesos en el host.
>- Arranque muy rápido.

### 6. Características de Docker
>- Ligero
>- Portable
>- Inmutable

#### Escalabilidad
>- Capacidad del sistema informático de cambiar su tamaño o configuración para adaptarse a las circunstancias cambiantes

#### Portabilidad
>- Capacidad del producto o componente de ser transgerido de forma efectiva y eficiente de un entorno hardware. software, operacional o de utilización a otro.

### 7. ¿Por qué usar Docker?
>- Un hypervisor, conocido también como monitor de máquinas virtuales, es un proceso que crea y ejecuta máquinas virtuales. Un hypervisor permite que un ordenador hots preste soporte a varias máquinas virtuales invitadas mediante el uso compartido virtual de sus recursos, como la memoria y el procesamiento.

>- Un contenedor es un paquete.
>- Un paquete es una colección de archivos y directorios necesarios para un producto de software.
>- El contenedor es ejecutado directamente por el kernel del host.

### 8. Página oficial de Docker

### 9. Descargar docker
>- Download Docker Descktop
>- https://hub.docker.com/
>- https://www.docker.com/products/docker-desktop/

### 10. Docker con Rancher Desktop
>- https://rancherdesktop.io/
>- https://docs.rancherdesktop.io

### 11. Instalar Rancher Desktop (Docker)

### 15. Situación actual
#### La industria del software ha cambiado
##### Antes
>- aplicaciones monoloticas
>- largos ciclos de desarrollo
>- entorno único
>- escalando lentamente

##### Ahora
>- servicios desacoplados
>- mejoras rápidas e itinerativas
>- múltiples entornos
>- escalar rápidamente

#### La implementación se vuelve muy compleja
##### Muchos conocimientos diferentes:
>- lenguajes
>- frameworks
>- bases de datos
##### Muchos entornos diferentes:
>- Entornos de desarrollo individual
>- Preproducción, QA, integración
>- Producción: Cloud, hibrida.

### 16 Imágenes de Docker
>- Una imagen Docker es un archivo, compuesto por múltiples capas, que se utiliza para ejecutar código en un contenedor Docker.
>- Estas imágenes son las plantillas base desde la que partimos ya sea para crear una nueva imagen o crear nuevos contenedores para ejecutar las aplicaciones.
>- Las imágenes se utilizan para crear contenedores ya que éstas nunca van a cambiar, esto permite crear contenedores con diferentes capas de imágenes las cuales se van a superpones sobre otras.
>- Las imágenes las podemos encontrar en diferentes repositorios ya sea privados o públicos, el más conocido es el Docker Hub, donde vamos a encontrar todas las imágenes públicas que nosotros podemos utilizar para nuestros proyectos, básicamente lo que hacemos es descargar la imagen y empezar a utilizar las diferentes capas que necesitamos para que nuestra aplicación funcione.
<p><strong>Las imágenes están hechas de capas ordenadas.</strong></p>

>- Se puede pensar en una capa como un conjunto de cambios en el sistema de archivos, cuando tomas todas las capas y las apilas obtienes una nueva imagen  que contiene todos los cambios acumulados, ¿pero entonces cómo se gestionan las imágenes?, para ello en el almacenamiento hay varios controladores que soportan este tipo de creación de capas como lo son: AUFS, BTRFS, y overlays.
>- Ahora cada vez que creamos una capa para las imágenes hay que tener en cuenta el orden de cómo se están creando estas capas y que va a contener cada una de ellas.
>- Lo que mantiene el seguimiento de las capas que creamos para una imagen es un limite, esta establecido de 127 capas, además tenemos que tener en cuenta es que cada capa va sumando al tamaño final de nuestra imagen.

### 17. Contenedores de Docker
<p><strong>Capa de contenedor.</strong></p>

>- Cada vez que Docker lanza un contenedor desde una imagen, agrega una capa de escritura, llamada capa de contenedor, que almacena todos los cambios realizados en el contenedor en tiempo de ejecución.
>- Dado que esta capa es la única diferencia entre un contenedor operativo en vivo y la propia imagen de Docker de origen, un número ilimitado de contenedores similares puede compartir el acceso a la misma imagen subyacente mientras mantiene su propio estado individual.

### 18.. Imagen Base
<p><strong>Imagen base.</strong></p>

>- En términos simples, una imagen base es una primera capa vacia, que le permite construir sus imágenes Docker desde cero.
>- Las imágenes base le dan control total sobre el contenido de las imágenes, pero generalmente están destinadas a usuarios de Docker más avanzados.

### 19. Docker Manifest
<p><strong>Docker Manifest.</strong></p>

>- docker manifest inspect --verbose hello-world
>- Junto con un conjunto de archivos de capa individuales, una imagen de Docker también incluye un archivo adicional conocido como manifiesto.
>- Esta es esencialmente una descripción de la imagen en formato JSON y comprende información como etiquetas de imagen, una firma digital y detalles sobre cómo configurar el contenedor para diferentes tipos de plataforma de host.

### 20. Algunos comandos Docker
>- docker images: Este comando se utiliza para listar todas las imágenes Docker que se han descargado en el sistema.
>- docker pull: Este comando se utiliza para descargar una imagen Docker desde un registro público o privado.
>- docker push: Este comando se utiliza para subir una imagen Docker a un registro público o privado.
>- docker build: Este comando se utiliza para construir una imagen Docker a partir de un archivo Dockerfile.
>- docker tag: Este comando se utiliza para etiquetar una imagen Docker con un nombre y una versión específicos.
>- docker rmi: Este comando se utiliza para eliminar una imagen Docker que ya no se necesita.
>- docker history: Este comando se utiliza para ver el historial de capas que componen una imagen Docker.
>- docker save: Este comando se utiliza para guardar una imagen Docker en un archivo tar.
>- docker load: Este comando se utiliza para cargar una imagen Docker desde un archivo tar.
>- docker manifest inspect --verbose hello-world

### 21. Registros de Docker
<p><strong>Registros de docker</strong></p>

>- Los registros Docker sirven para almacenar las diversas imágenes Docker que utilicemos en nuestro sistema. De esta forma podremos subir imágenes nuevas a los registros, o descargarlas cuando las necesitemos en alguna maquina Docker.
>- La forma más fácil de hacer que nuestras imágenes Docker estén disponibles para cuando las necesitemos, es usar un registro Docker, como Docker hub, Docker Cloud o Github Docker, o incluso ejecutando nuestro propio registro privado de Docker.
>- Existen registros (repositorios) públicos de imágenes Docker. Registros donde podemos encontrar imágenes Docker:
>- Docker Cloud
>- Docker Hub
>- Github Docker
>- Registro privado

### 22. Docker hub
>- https://hub.docker.com/_/postgres/tags
>- docker pull postgres:latest

### 23. Comandos para subir/descargar imágenes de un registro
>- Podemos subir imagenes Docker a nuestro registro con: docker pull image
>- Y descargar imagenes de nuestro registro con: docker push image
>- registro docker imagenes
#### PASOS NECESARIOS PARA SUBIR IMAGENES DOCKER A NUESTRO REGISTRO
##### 1 – Autenticarnos en nuestro registro:
>- docker login --username username --password password
##### 2 – Etiquetar la imagen:
>- docker tag my-image username/my-repo
##### 3 – Subir la imagen al registro:
>- docker push username/my-repo
#### 1 – Autenticarnos en nuestro registro Docker:
##### El primer paso es configurar la variable de entorno DOCKER_ID_USER como nuestro nombre de usuario (por ej. en Docker Cloud).
>- export DOCKER_ID_USER="username"
##### y luego hacer login:
>- docker login
>- docker login
#### 2. Etiquetar una imagen Docker
#### Si ejecutamos docker tag en la terminal, podremos ver la ayuda del comando:
>- docker tag
>- docker tag

##### 2.1.2 a) Sintaxis para etiquetar imagenes Docker:
>- docker tag [OPTIONS] IMAGE[:TAG] [REGISTRYHOST/][USERNAME/]NAME[:TAG]

##### Veamos ejemplos:
##### según la terminal:
>- docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]

##### por ejemplo:
>- docker tag hypriot/armhf-hello-world:latest hypriot/armhf-hello-world:hello-world

##### También es posible que otras versiones de Docker requieran hacerlo de esta forma:
>- docker tag my_image $DOCKER_ID_USER/my_image
>- docker tag image

#### 3. Subir imagenes a registro Docker con “docker push“
#### según la ayuda de la terminal. la sintaxis correcta es:
>- docker push [OPTIONS] NAME[:TAG] [flags]

#### También puede funcionar esta otra versión del comando (dependerá del registro que estemos utilizando; más comúnmente Docker Cloud)
>- docker push $DOCKER_ID_USER/my_image
>- Ejemplo de funcionamiento de docker tag y docker push:

>- root@black-pearl:~# docker tag f897b028160c DOCKER_ID_USER/test:hello-world2
>- root@black-pearl:~# docker push DOCKER_ID_USER/test
#### The push refers to repository [docker.io/DOCKER_ID_USER/test]
#### 5f70bf18a086: Mounted from hypriot/armhf-hello-world
#### 3c547ef8d13b: Mounted from hypriot/armhf-hello-world
#### hello-world2: digest: sha256:f3ebad346b9f4ba1455b8c8831b2507f0b7131e2153b67350b16a87233031a74 size: 730

### 24. Volúmenes de Docker
<p><strong>Volúmenes de Docker</strong></p>

>- Los volúmenes Docker son una característica del tiempo de ejecución del contenedor Docker que permite que los contenedores conserven los datos mediante el montaje de un directorio desde el sistema de archivos del host.
>- Linux: Los volúmenes de Docker los administra Docker, y se crea un directorio en /var/lib/docker/volumes en la instancia de contenedor que contiene los datos del volumen.
>- Windows: En una instalación predeterminada, las capas se almacenan en C:\ProgramData\docker y se distribuyen en los directorios "image" y "windowsfilter". Puedes cambiar la ubicación donde se almacenan las capas con la configuración docker-root, tal y como se indica en la documentación de Docker Engine en Windows.

### 25. Crear y ejecutar un contenedor de Docker
>- docker pull postgres
>- docker images
>- docker run postgres
>- docker run -e POSTGRES_PASSWORD=password postgres
>- docker run -e POSTGRES_PASSWORD=password postgres:bullseye

### 26. Trabajar con contenedores
>- docker pull postgres:alpine3.17
>- docker run -e POSTGRES_PASSWORD=password postgres:alpine3.17
>- docker ps