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
>- docker ps -a

### 28. Logs y Docker start
>- docker ps -a
>- docker start contenedor_id
>- docker stop contenedor_id
>- docker logs contenedor_id

### 29. Docker Exec
>- docker exec -it contenedor_id sh

### 30. Docker stop y ejecución de contenedores en background
>- docker ps
>- docker run -d -e POSTGRES_PASSWORD=password postgres
>- docker stop sweet_satoshi
>- docker ps

### 31. Dockerfile
<p><strong>Dockerfile</strong></p>

>- Un Dockerfile es un archivo o documento de texto simple que incluye una serie de instrucciones que se necesitan ejecutar de manera consecutiva para cumplir con los procesos necesarios para la creación de una nueva imagen.
>- A este conjunto de instrucciones se le conoce como línea de comandos y serán los encargados de indicar los pasos a seguir para el ensamblaje de una imagen en Docker, es decir, los elementos necesarios para el desarrollo de un contenedor en Docker.
>- De manera que las imágenes en Dockerfile se crean a partir de un comando en específico denominado docker build, que se encargará de ofrecer las herramientas para que el sistema siga las instrucciones que el usuario haya indicado en la línea de comandos.
<p><strong>Dockerfile</strong></p>

>- Dentro de las características de un Dockerfile se encuentra su ejecución, que se lleva a cabo siguiendo ciertos pasos de facil aplicación, iniciando con la indicación de las instrucciones que el usuario considere necesario para la creación de la imagen. Después de esto, se debe ejecutar el comando docker build, que hará que el Dockerfile esté disponible para su uso y crear contenedores. Esto implica que esta herramienta funciona bajo el esquema Dockerfile > Docker image -> Docker Container.
>- Además de esto, un Dockerfile se caracteriza por definir las instrucciones para crear una nueva imagen, pero siempre inicia con una imagen base que ya existe en el sistema. De manera que la imagen creada surge partir de esta bse, pero cuenta con una serie de diferencias y propiedades distintas que distingue una de la otra.

### 32. Funcionamiento de Dockerfile
>- Funcionamiento de Dockerfile
>- En lo que respecta al funcionamiento de un archivo de texto Dockerfile, es posible agregar que cada una de las instrucciones incluidas en esta herramienta para crear una imagen se ubica en una línea distinta y se ejecutan una tras otra, es decir, de forma consecutiva como si se tratara de un script por lotes.
>- De modo que la creación de una imagen de Docker depende de las instrucciones del Dockerfile. Estas, a su vez, se inician una vez se ejecute el comando docker build dentro de la plataforma de contenedores.
>- Para el funcionamiento de Dockerfile se debe tener en cuenta también el llamado contexto docker build context, es decir, la herramienta que se encarga de indicar cuáles son los archivos, directorios y ficheros a los que tiene acceso la opción de docker build. Por tanto, los datos e información pertenecientes al directorio fuente se transfieren al docker daemon una vez se ejecute el comando docker build. Esto significa que, para la serie de pasos incluidas en un Dockerfile, podrán tener acceso a la información relacionada con los archivos del build context.
>- En los casos donde el usuario no necesite utilizar la totalidad de archivos incluidos en el directorio fuente local en el build context, puede acudir a la herramienta de .dockerignore, que se encargará de excluir los elementos que no requiera la imagen final.

### 33. Opciones de Dockerfile
>- Dentro de las opciones más relevantes para un Dockerfile se encuentran herramientas encargadas de labores, como el establecimiento de la imagen base, el cambio de usuario o los elementos preestablecidos para el arranque de un contenedor en Docker, entre otros.
>- Algunas de estas opciones son:
>- FROM: es una opción de Dockerfile que debe presentarse como la primera instrucción. Cumple con la función de establecer la imagen sobre la que los pasos e imágenes siguientes se desarrollan en el sistema. La imagen mínima que da origen al resto de imágenes en Docker es llamada scratch.
>- ENV: hace referencia a la opción que indica las variables de entorno que se necesitan en el proceso de construcción de una imagen en Docker y permite la ejecución de los contenedores y sus labores en el sistema.
>- USER: esta herramienta se utiliza en los archivos de instrucciones de Dockerfile con el objetivo de cambiar el usuario y su pertenencia a un grupo determinado. Una vez se ejecute esta opción, se aplicará a la totalidad de instrucciones siguientes.
>- RUN: es una de las opciones de mayor importancia y popularidad en Dockerfile. Cumple la labor de ejecutar una instrucción incluida en la línea de comandos de la imagen durante su proceso de construcción. Dockerfile RUN puede escribirse en formato SHELL o bajo la opción de escritura EXEC.
>- ADD: este elemento se encarga de las tareas relacionados con la copia de ficheros, directorios y archivos de una imagen en Dockerfile. Se debe tener en cuenta que el uso de la instrucción ADD implica la creación de una nueva capa de imagen, por lo que debes ser cuidadoso al implementar esta opción.
>- EXPOSE: es la opción que tiene como labor la definición de las asignaciones referentes a los puertos para los contenedores de la plataforma que se encuentren en su etapa de ejecución.

### 35. Preparar proyecto NodeJS

### 36. Ejemplo de Dockerfile para imagen Node
>- mkdir node-docker
>- cd node-docker
>- npm init -y
>- npm install ronin-server ronin-mocks
>- docker build --tag node-docker .
>- docker tag node-docker:latest node-docker:v1.0.0
#### eliminar
>- docker rmi node-docker:v1.0.0
### 37. Publicar puertos
>- docker run --publish 8000:8000 node-docker
>- docker stop node-docker
>- docker stop 44aaf40a0015
>- docker run -dp 8000:8000 node-docker
>- docker restart 089b5da79a8a
>- docker stop 089b5da79a8a

### 38. ¿Que son los ficheros YAML?

>- YAML es un acrónimo que significa Ain't Markup Language (YAML no es un lenguaje de marcas).
>- Se trata de un estándar de serialización de datos amigable para todos los lenguajes de programación.
>- Más info yaml.org

### 39. Docker Compose

>- Docker Compose es una herramienta que nos permitirá definir y ejecutar aplicaciones Docker empleando varios contenedores.
>- Con Compose haremos uso de un fichero de texto con la extensión YAML en el que realizaremos la configuración de los servicios (imágenes), redes y volúmes para persistencia de datos que requieran nuestras aplicaciones.

### 40. Comunicación entre contenedores
>- docker volume create mongodb
>- docker volume create mongodb_config
>- docker network create mongodb
>- 23a594c3128937537fc4d19270910cc8e052297d35cef4478a0b17966b8ef91d
>- docker network rm mongodb
>- docker run -it --rm -d -v mongodb:/data/db -v mongodb_config:/data/configdb -p 27017:27017 --network mongodb --name mongodb mongo
>- b1437f64a1ace7e685d4e946c2d8eb589d5b454bfab192c59f54f6371248abdf
>- npm install ronin-database
>- docker build --tag node-docker .
>- docker run -it --rm -d --network mongodb --name rest-server -p 8000:8000 -e CONNECTIONSTRING=mongodb://mongodb:27017/notes node-docker
>- df288c61b17904a24ab5a1953aa05597dcc8d4fa7d16bacab68be8bfce59bbaa
>- docker ps
>- http://localhost:8000/test



