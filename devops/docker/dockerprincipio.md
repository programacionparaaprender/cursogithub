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

