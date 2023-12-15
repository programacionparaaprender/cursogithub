
### 1. Introducción al curso
<p><strong>Arquitectura Convencional</strong></p>

<p>Forma convencional de organizar el software.</p>
>- Monolitos.
>- Desestructurado y difícil de mantener.
>- Modelos muy dependientes del diseño de base de datos.
>- Muy poca organización.

#### Event Driven Design
>- Producción y reacción a eventos.
>- Tratamiento de acciones de forma asíncrona.
>- La parte que produce y la parte que consume están desacopladas.

#### Event Sourcing
>- Los cambios en el sistema se almacenan como eventos en BBDD.
>- Estado Actual = repetición de eventos desde un punto en el pasado.
>- Ideal para saber el estado exacto en un momento en el pasado.

#### Microservicios
>- División del sistema en pequeños dominios o subdominios.
>- Total independencia entre microservicios.
>- Cada microservicio vive en un entorno separado de los demás.
>- Máquina (física o virtual) propia.
>- Base de datos.
>- Otros recursos.
>- Comunicación mediante protocolos ligeros (HTTP, mensajería etc).
>- Posibilidad de formar equipos para cada uno de ellos.

#### Otros patrones y estilos de arquitectura
>- Arquitectura hexagonal.
>- Microkernel architecture.
>- Arquitectura testable.
>- Evolving architecture.
>- Sacrificial architecture.

### 2. Arquitectura Convencional
>-  Hace 50 o 60 años la mayoría del software era mucho más sencillo que hoy en día.
>- Necesidad de automatizar tareas.
>- CRUDs simples.
>- etc.
>- Esto llevó a software del siguiente tipo.
>- Pequeños scripts de automatización.
>- Monolitos.
>- Muchas interdependencias entre los componentes internos.
>- Código desestructurado y difícil de mantener.
>- Monolitos

#### Modelo Anémico
>- Clases que no almacenan lógica, únicamente datos.
>- Muy comunes en CRUD's
>- Lógica necesaria se implementa en servicios.
>- Considerado un antipatrón de diseño

#### Dependencia entre componentes
>- En monolitos y arquitecturas convencionales es muy común tener componentes muy acoplados. El siguiente escenario es muy común:
>- Componente A necesita un componente Z. Lo implementamos.
>- Surge una necesidad de ciertas funcionalidades de Z en el componente B.
>- Pasa lo mismo en C, D...
>- Con el tiempo, las necesidades evolucionan, y se adapta Z para que abarque todo lo que necesiten A, B, C y D.
>- !Este tipo de decisiones hacen que nuestra arquitectura sea rígida y difícil de modificar¡

### 3. Pros y Contras de la Arquitectura Convencional

<p><strong>Aspectos positivos</strong></p>
>- Mayor velocidad de desarrollo al inicio del proyecto.
>- Menor complejidad, arquitectura muy sencilla.
>- Cualquier desarrollador sin experiencia se puede adaptar rápidamente.
>- Puede ser más fácil de testear que otras arquitecturas.
>- Compilación y despliegue sencillos.

<p><strong>Aspectos negativos</strong></p>
>- Difícil de mantener a largo plazo.
>- Tendencia a una gran dependencia entre los distintos componentes.
>- Arquitectura rígida y difícil de modificar en el futuro.
>- Mayor dificultad a la hora de repartir el trabajo.
>- Si queremos actualizar el sistema, debemos desplegarlo de nuevo completamente.

<p><strong>Aspectos negativos</strong></p>
>- Proyecto pequeños, con pocos requisitos y claramente definidos.
>- Sistemas con un corto tiempo de vida.
>- Equipo con muy poca experiencia.
>- !Una arquitectura convencional no significa que no sea necesario preocuparse por escribir código de buena calidad¡
>- Se debe escribir buen código para que, en caso de que el sistema crezca, nos podamos adaptar, cambiar de arquitectura etc.


<p><strong>Arquitectura centrada en los datos</strong></p>
>- Se piensa primero en los datos que se necesitan almacenar.
>- Se recopilan requisitos para tener claras las reglas de negocio.
>- Diseño del modelo de datos.
>- Diseñamos y construimos nuestro sistema para trabajar con los datos.
>- Como consecuencia, tenemos una arquitectura de software totalmente dependiente de los datos.

### 4. ¿Qué es el Domain Driven Design?
>- Se piensa primero en el dominio del problema.
>- El objetivo es ser expertos en el dominio.
>- Se modelan todas las entidades y reglas especificas del dominio.
>- A partir de ahí, se implementan los casos de uso que queremos resolver.


#### Tiempo de desarrollo
>- Centrada en el dominio <-> Centrada en los datos
>- EL dominio es invariable, no depende del problema.
>- Los casos de uso son mucho más inestables, tienden a cambiar con el tiempo.
>- Separando los casos de uso y las reglas del dominio conseguimos independizar dos partes con inestabilidades muy diferentes.
>- Esto hace que nuestro sistema sea mucho más flexible.

##### Centrada en el dominio
>- EL dominio es invariable, no depende del problema.
>- Los casos de uso son mucho más inestables, tienden a cambiar con el tiempo.
>- Separando los casos de uso y las reglas del dominio conseguimos independizar dos partes con inestabilidades muy diferentes.
>- Esto hace que nuestro sistema sea mucho más flexible.

##### Centrada en los datos


### 5. Lenguaje Ubicuo

<p><strong>Qué es el lenguaje ubicuo</strong></p>

>- Vocabulario común que describe el dominio del problema Verbos, nombres, adjetivos etc.
>- Es compartido por todos los interesados del proyecto. PMs, programadores, expertos de dominio, clientes etc.
>- Se debe usar siempre para evitar malentendidos.
>- Evitamos usar sinónimos del mundo real que podrían significar otra cosa en nuestro dominio
>- El objetivo es utilizar un lenguaje común, independientemente del rol desempeñado.

#### Características de lenguaje ubicuo
>- Se crea a partir de sesiones de brainstorming y análisis del dominio.
>- Se documenta y debe ser claro y lo menos ambiguo posible.
>- Es parte de un proceso iterativo.
>- El lenguaje ubicuo evoluciona según vamos aprendiendo más sobre el dominio
>- Ubicuo: "Que está presente a un mismo tiempo en todas partes."
>- Se debe usar en conversaciones, emails, historias de usuario y código.

#### Ejemplo
>- "Como monitor del gimnasio, quiero que los usuarios con tarifa completa se puedan registrar y asistir a clases particulares."
>- Monitor
>- Gimnasio
>- Usuario
>- Tarifa
>- Registrar 
>- Asistir
>- Clase particular

### Contextos Acotados
>- Gym
>- Address
>- Class
>- Facility