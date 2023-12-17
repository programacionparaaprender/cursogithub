
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

<p><strong>¿Qué es el lenguaje ubicuo?</strong></p>

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

### 6. Contextos Acotados
>- contexts_acotados3.png
>- Equipo Información del gimnasio
>- Equipo Información de pago
>- Equipo Información de reservas
>- Gym
>- Address
>- Class
>- Facility

#### Definición
>- Nueva forma de organizar el modelo y la lógica de negocio guiado por el dominio.
>- Un cotexto acotado es aquel que tiene un sentido especial en el dominio.
>- Cada uno tiene su lenguaje ubicuo propio.
>- Las entidades fuera del contexto pueden tener características ligeramente diferentes.
>- Tener definida la misma entidad en diferentes contextos no implica una duplicidad de código, si no una aclaración del mismo.
>- Compartiendo modelo entre contextos, se tiende a acumular detalles e información de todos ellos, poniendo en riesgo la integridad del modelo.

### 7. Mapeo de Contextos
<p><strong>Dependencias entre distintos contextos</strong></p>

>- A pesar de que es positivo separar nuestro modelo en contextos acotados, la lógica de un sistema software complejo implica interacción entre los distintos contextos.
>- Los contextos no son completamente independientes.
>- Debemos tener clara la interacción y dependencias entre los mismos.

#### Tipos de relaciones
>- Conformista (Conformist). No existe ninguna capacidad de negociación.
>- Cliente / Proveedor (Customer / Supplier). Dependencia con cierto grado de negociación. Necesidades en el cliente pueden implicar cambios en el proveedor.
>- Socio (Partnership). Ambos contextos colaboran por una meta en común, por lo que ambos lados de la relación tienen poder para influenciar al otro.
>- Núcleo compartido (Shared Kernel). Dos o más contextos comparten un mismo modelo. Todos necesitan estar de acuerdo para realizar cambios. Difícil de mantener.

#### Tipos de relaciones 2
>- Capa anticorrupción (Anticorruption Layer). Interfaz que utiliza Downstream para interactura con Upstream, sin importar los cambios realizados en el último.
>- Open Host Service / Published Language. Relaciones de tipo conformista en las que se provee de documentación al Downstream context. Además se proporcionan versiones y compatibilidades entre ellas.

### 8. Capas del Domain Driven Design

#### Capa de presentación
>- En el pasado, se construía la vista desde el servidor, por eso se consideraba parte de la presentación.
>- Ahora es muy común tener la vista separada. React, Angular, Vue etc.
>- API de entrada a nuestro sistema que da soporte a la interfaz de usuario.
>- Es la fachada e interactúa con los servicios de aplicación para iniciar los casos de uso.
>- @Controller en Spring


#### Capa de aplicación
>- Encargada de orquestar todos los casos de uso necesarios para el funcionamiento de nuestro sistema.
>- Interactúa con el dominio para ejecutar su lógica especificada.
>- Interactúa con la infraestructura para la persistencia, framework, logging etc.
>- Responde a la presentación con los datos formateados correctamente.
>- @Service en Spring

#### Dominio
>- Datos y lógica central de nuestro sistema, diseñada bajo los principios de DDD.
>- Debe estar lo más aislado posible del exterior. Se comunica con infraestructura si necesita algún aspecto como logging.
>- Se compone de entidades de dominio y servicios de dominio.
>- Entidades de dominio
>- Datos.
>- Lógica.
>- No son entidades de persistencia (@Entity en Spring).
>- Servicios de dominio
>- Lógica de dominio que no se pueda asignar a una entidad de dominio específica.
>- Siguen los principios del DDD.
>- @Service en Spring

#### Capa de infraestructura
>- Persistencia.
>- Objetos de ORMs (@entity etc).
>- Detalles del Framework
>- Clases de configuración
>- Arranque de la aplicación
>- Otros aspectos de infraestructura
>- Logging

#### Dependencias
>- Las flechas indican el flujo de la información, no la dependencia.
>- Es importante conseguir la IoC usando técnicas como la inyección de dependencias.

#### Dependencias 2
>- Es importante que el dominio sea lo más estable de nuestro sistema.
>- Nunca debemos modificar nuestro dominio para adaptarlo al exterior, como por ejemplo BBDD.
>- En ese caso, lo apropiado es adaptar la capa de infraestructura.

### 9. Modelo de Dominio
>- Entidades
>- Clases con datos y comportamiento
>- Value Objects
>- Clases con simplemente datos.
>- Sirven para representar de manera más clara los atributos de las entidades.
>- Deben ser inmutables
>- Aggregates
>- Grupos de entidades y Value Objects
>- Separan conceptos diferentes de nuestro dominio.
>- Como norma general, la comunicación entre distintos aggregates se debe hacer a través de la raíz de los mismos. Una raíz no puede acceder a otro elemento no raíz de un aggregate diferente.

### 10. Modelo de BBDD vs Modelo de Dominio

#### Modelo de persistencia
>- Modelo ligado totalmente a nuestro modelo de bases de datos.
>- Está orientado a que nos sea más fácil realizar las operaciones en base de datos.
>- Consultas
>- Inserciones
>- Modificaciones
>- Eliminaciones
>- Sólo contiene información, no comportamiento.
>- Se puede usar una herramienta de mapeo objecto-relacional.
>- Hibernate
>- Entity Framework

#### Modelo de dominio
>- Orientado a modelar el dominio del problema
>- Datos
>- Compontamiento
>- Es un modelo que se puede persistir.
>- Mapeo entre modelo de dominio y de persistencia.
>- No tiene ningún conocimiento sobre la BBDD.

### 11. Servicios de Dominio
>- Ejecutan lógica que no tiene cabida en ninguna de las entidades.
>- Suele ser para coordinar dos o más tipos de aggregates, pero no tiene por qué.
>- Son parte del dominio, no se crean de forma arbitraria.
>- Se identifican en las sesiones de brainstorming
>- Son parte del lenguaje ubicuo.
>- Acciones como save, delete, upsert no tienen cabida en los servicios de dominio.

#### Servicios de dominio
>- Estimación de la esperanza de vida para una persona.
>- Implementarlo en la entidad País.
>- No tiene sentido que el País calcule ese dato para una persona.
>- Implementarlo en la entidad Persona.
>- Podría tener sentido, pero violaríamos el SRP en esa entidad.
>- La mejor opción es implementar esa lógica en un servicio de dominio, que coordine ambos aggregates.

### 12. Resumen Domain Driven Design
<p><strong>La importancia del dominio</strong></p>

>- El DDD se centra en la importancia de entender bien el dominio de nuestro problema para crear buen software.
>- En contraste al enfoque tradicional, centrado en los datos que tratamos.
>- Para identificar los elementos del dominio se utiliza
>- Lenguaje ubicuo, brainstorming.
>- Identificación de los contextos acotados.
>- Mapeo de contextos.
>- Todo esto se hace con el fin de separar la lógica de aplicación (casos de uso) de la lógica de dominio.
>- Los casos de uso varían mucho más frecuentemente.

#### Modelar el dominio
1. Entidades.
>- Elementos del dominio con entidad propia.
>- Comportamiento + datos.

2. Value Objects.
>- Elementos que almacenan solo datos.
>- Creados para representar de forma más clara los atributos de las entidades.

3. Aggregates.
>- Conjunto de entidades y value objects con un sentido común.

4. Domain Services.
>- Elementos del dominio con lógica que no tiene cabida en ninguna de las entidades.

### 13. Pros y Contras Domain Driven Design

#### Aspectos positivos
>- Lenguaje común compartido por todos los integrantes del proyecto. Perfiles técnicos y no técnicos.
>- Al tener lógica de aplicación y dominio separadas, el coste de realizar modificaciones suele ser menor, ya que el dominio cambia con poca frecuencia.
>- El código del dominio es autoexplicativo.
>- Mayor velocidad de desarrollo a medio y largo plazo. Mucho más mantenible.

#### Aspectos negativos
>- Mucho más lento al principio de un proyecto.
>- Requiere tener expertos en el dominio del problema.
>- Cambio de mentalidad de los desarrolladores para enfocarse en la funcionalidad más que en los datos.
>- Los frameworks actuales nos "empujan" a un modelo anémico y a pensar centrándonos en los datos.

#### Cuándo usar
>- Proyectos complejos con un largo tiempo de vida esperado.
>- Incertidumbre en los casos de uso. Previsión de cambios en el futuro.
>- Problemas con una lógica de dominio presente.
>- Si lo único que necesitas es un CRUD, no tiene sentido.
>- Disponibilidad de un equipo comprometido en analizar detalladamente el dominio.

#### Introducción a CQRS
##### Comandos y consultas
1. Comandos.
>- Acciones que realizan una modificación en el estado del sistema y que no devuelven información.
>- Ejemplo: Iniciar un partido de tenis.
 2. Consultas.
 >- Acciones que no alteran el estado del sistema, tan sólo devuelven datos.
 >- Ejemplo: Obtener los últimos diez partidos de tenis.

 ### 15. CQRS Avanzado
 ¿Qué sucede si necesitamos eficiencia en las lecturas pero no queremos sacrificar tiempo en las escrituras?

#### Métodos de sincronización
1. Consistencia inmediata.
>- Método síncrono.
2. Consistencia eventual.
>- Sincronización asíncrona.
3. Consistencia programada.
>- Sincronización a ciertas horas del día.
4. Consistencia bajo demanda.
>- Se realiza la sincronización cuando se determine necesaria.

### 16. Ejemplo Practico CQRL

