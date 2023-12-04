### cursos
>- https://udemy.com/course/devops-las-artes-marciales-del-software/learn/lecture/26928814#overview

### recursos
>- https://drive.google.com/file/d/1ML4NpDbJY3jsVrnqd7DWfIU3TPikXXBr/view
>- https://jjruescas.com/es/home/

### Devops y su propósito
>- Devops es la unión de personas, procesos y productos para lograr la entrega de valor continuo para los usuarios finales.
>- Donovan Brown - Principal Devops Manager Microsoft

### Devops y su propósito
>- Nueva funcionalidad
>- Corrección de errores
>- Calidad en el servicio
>- Resiliencia a imprevistos

### Desarrolladores vs Operaciones
>- Desarrolladores (Pro-Cambio)
>- Operaciones (Pro-estabilidad)

### Devops día a día
1. Sin Devops
>- Errores encontrados en Producción.
>- Deployments dolorosos.
>- Fragilidad en la infraestructura.
>- Estado de constante urgencia.
2. Con Devops
>- Errores encontrados en Desarrollo
>- Mínimo fallo en Deployments
>- Infraestructura automatizada
>- Monitoreo y acción proactiva

### kai (change) zen (good) = mejora continua

### Dev (Negocio) Ops (Clientes)


### Las 3 vías, Todo se conecta con todo lo demás - alguien muy sabio

1. Primera vía
>- Exceso de confianza en testeo -> Impacto en usuarios
>- Consulta simple -> Consumo excesivo de memoria
>- Cambio de contraseña -> Caída de la infraestructura

2. Segunda vía
>- Incrementa los Flujos de Feedback
>- Plan -> Code -> Test -> Deploy -> Feedback - antes
>- code -> build -> release -> deploy -> operate -> measure -> plan -> code | ahora

3. Tercera vía
>- Cultura de experimentación y aprendizaje continuos

### CAMS
>- Cultura
>- Automatización
>- Medición
>- Colaboración (Sharing)
>- DevOpsDays MountainView 2010 J. Willis & D. Edwards
1. Cultura = Hábitos
>- Comunicación Abierta
>- F.A.L.L.A Rápido
<p>
<strong>F</strong>acilita el
<strong>A</strong>prendizaje de
<strong>L</strong>ecciones
<strong>L</strong>ibre de 
<strong>A</strong>ngustia
<strong>¡Rápido!</strong>
</p>

2. Automatización
"1ra:... aplicada a una operación eficiente magnificará su eficiencia.
<hr />
2da:... de una operación ineficiente magnificará su ineficiencia."
<hr />
Bill Gates
<hr />
¿Por qué hacemos esto?

3. Medición
>- "Lo que puedes medir, puedes manejar" | Peter Drucker
>- Releases por mes
>- Bugs en Producción
>- Calidad de código
>- Memoria en el Servidor
>- Satisfacción de usuarios
>- "Métricas de Vanidad" | Eric Ries

4. Colaboración (Sharing)
>- "No compartas todo lo que sabes" | ...alguien con miedo
>- Diagramas
>- Código
>- IaC
>- Wikis
>- Hackatones

### Tuberias | Pipeline | CI\CD
>- Continuous Integratión
>- Continuous Delivery

### definición CI \CD
>- Líneas de ensamblaje

### Malas practicas en CI \ CD
1. Procesos manuales comunes
>- Compilación
>- Deployment a Producción
>- Testeo
>- Creación de Ambientes

2. Costo de la falta de Automatización
>- Creación de "expertos"
>- Desperdicio de creatividad

### Regla para la automatización
>- Proceso repetido 3 veces por mes = Proceso candidato para automatización

### Beneficios
>- Evitamos procastinación en la integración
>- Disponibilidad constante de Release a Producción

### Pipeline CI \ CD
1. Orquestación
>- git clone MyRepo
>- npm tests
>- npm build MyApp
2. Pipeline-as-Code
>- Código en el cual se establece la secuencia de ejecución de comandos

### CI - Control de Versiones
>- "¡Perdí los cambios que realicé esta semana!"
>- "¡No encuentro el backup del código!"
1. Conceptos
>- Repositorio: Contiene el código de una aplicación.
>- Versionar: Agregar archivos al repositorio para mantener un historico de sus cambios.
>- Check-in / commit: Guardar los cambios realizados hasta un momento dado.
>- Branch: Una copia del repositorio hasta un punto dado en el tiempo.
2. ¿Que versionar?
>- Código fuente de tus aplicaciones
>- Test automatizados
>- Pipeline-as-Code
>- Deployment scripts
>- Infraestructure-as-code
>- Wikis (Documentación, Diagramas, instrucciones)
3. ¿Que no versionar?
>- Archivos binarios (.dll, .exe, .doc, .mp3, .etc).
>- Dependencias del proyecto
>- Passwords
>- Artefactos de compilación
>- Resultados de tests

### Buenas practicas
>- Mantén repositorios pequeños
>- Utiliza los commits IDs para rastrear cambios
>- Realiza commits con frecuencia
>- Aplica el modelo de desarrollo llamado "GitFlow"
>- Utiliza Wikis
>- Versionamiento de base de datos

### preguntas
>- ¿Qué herramientas de versionamiento utilizas tú?
>- ¿Cuáles archivos mantienes en el repositorio y cuáles otros no?

### Compilación
#### Fases
>- Descarga del código fuente
>- Administración de Dependencias (nvm, mvn, npm, bower, nuget)
>- Compilación (webpack, gradle, maven, visualstudio)
>- Almacenamiento del artefacto
>- Docker creación de la imagen

### Repositorio de artefactos
>- jFrog Artifactory
>- Sonatype Nexus
>- archiva

### Análisis estático de código
>- Sonarqube
>- ReSharper
>- Coverity

### Pruebas 
 <p>
<strong>F</strong>acilita el
<strong>A</strong>prendizaje de
<strong>L</strong>ecciones
<strong>L</strong>ibre de 
<strong>A</strong>ngustia
<strong>¡Rápido!</strong>
</p>

### Pruebas en fases
>- code (Unit tests, static code analysis)
>- build (Integration, user acceptance)
>- release 
>- deploy (Pen-Test, Stress, Performance)
>- operate (Chaos Engineering)
>- measure 
>- plan

### Estrategias para Unit Tests fase code (Unit tests, static code analysis)
>- Mocks
>- Stubs
>- Virtual Services

### Tipos de Tests de Integración fase build (Integration, user acceptance):
>- Verticales
>- Horizontales
>- UAT: User Acceptance Tests

### Tipos de Tests de Seguridad fase deploy (Pen-Test, Stress, Performance)
>- Pen - Testing
>- Escaneo de Vulnerabilidades
>- Ethical Hacking
>- DevSecOps

### Tests de Antifragilidad fase operate (Chaos Engineering)
>- Detectar puntos debiles en la base de datos

### Pruebas
>- Revisión esporádica
>- Revisión continua

### Continuous Testing (CT)
<p>¿Qué se requiere?</p>
<p>1. Creación de Tests Automatizados</p>
<p>2. Estratégia de CT</p>

### Proporción de Tests
<p>UAT</p>
<p>Integración</p>
<p>Unit Tests</p>

### CT en acción (jmeter)
<p>1. Ejecución de todos los Unit Tests</p>
<p>2. Ejecución del Análisis estático de código</p>
<p>3. Deployment a un ambiente de pruebas</p>
<p>4. Ejecución del Smoke Test</p>

### ¿Cómo crear el hábito de Continuous Testing?
>- Test Driven Development

1. Estrategias
>- Escribir un test que falle
>- Pasar el test
>- Refactor

2. Prueba
>- Test Validar: Sumar(2, 1) = 3
>- Code Sumar(a, b){Return (a+b);}
>- Result Success

### Continuous Delivery
1. Plataformas
>- Data Centers
>- Microsoft Azure
>- Amazon web services
>- Google Cloud Platform

2. Ambientes
>- Desarrollo
>- Pre-Producción
>- Producción

3. Recomendaciones
>- Utiliza herramientas (jenkins, go, chef, puppet labs, ansible).
>- Versiona las Pipelines.
>- CD Pipelines/scripts deben recibir parámetros según el ambiente.
>- Upgrade de Bases de Datos es parte del Pipeline
>- Encadena Tests luego de los deployments
>- Histórico de Deployments + Rastreo de Builds

4. Evita estas situaciones
>- CD != CD + Calidad 
<p>
Cont. Delivery + Cont. Testing es lo correcto
</p>
>- Poca frecuencia de Releases
<p>
Cadencia: 2 semanas a 2 meses
</p>
<p>
Técnicas: Feature Toggles y Dark Launch
</p>
>- Releases de Viernes por la noche
<p>
Continuous Deployment
</p>
>- Continuous Delivery vs Continuous Deployment
<p>Cont. Integration</p>
<p>Build -> Deployment to development -> Integration Tests -> Deployment to PreProduction -> UAT Security Tests Manual -> Deployment to Production</p>
<p>Cont. Delivery</p>
<p>Build -> Deployment to development -> Integration Tests -> Deployment to PreProduction -> UAT Security Tests Auto -> Deployment to Production</p>
<p>Cont. Deployment</p>

### 13. Infraestructura como Código (IaC)
>- Creación manual de Servidores
>- Desvío de Configuración
>- Copo de Nieve
>- Infraestructura Jenga
>- "Infraestructura como Código (IaC)
...es la utilización tecnologías de la Era Cloud para construir y administrar infraestructura dinámica. ...trata a la infraestructura, a las herramientas y servicios que manejan la infraestructura misma, como a software."
>- Kief Morris (Infrastructure-as-Code, O'Reilly, 2016)

1. Los Principios de IaC
>- Reproducibilidad
>- Consistencia
>- Repetibilidad
>- Desechabilidad
>- Continuidad de Servicios
>- Versionamiento total
2. Ciclo de Vida de un Servidor
>- Creación de Template -> Creación de Servidor -> Actualización -> Eliminación
>- Creación de Template -> Creación de Servidor -> Actualización -> Reemplazo -> Actualización
3. Infraestructura Inmutable
"... creación de nueva infraestructura reflejando los cambios deseados de configuración en lugar de realizar dichos cambios en la configuración de infraestructura existente."
>- Kief Morris (Infraestructure-as-Code, O'Reilly, 2016)

4. IaC para todos
>- Google Cloud Platform
>- Amazon Web Services
>- Digital Ocean
>- Alibaba Cloud
>- Rackspace
>- Microsoft Azure
>- Data Centers

5. IaC para todos
>- Para la nube (Terraform, CloudFormation)
>- Para la nube y DataCenter locales: (CHEF, puppet,ANSIBLE, SALTSTACK
>- Para el desarrollo (Vagrant)
6. IaC en CI/CD
>- terraform apply
>- Build -> Unit Tests -> Provisión UAT Environment -> Execute UAT -> Delete UAT Environment -> 

### 14. Operaciones 
>- Llamadas a las 3am
>- Trabajar en fines de semana
>- Restar tiempo a la familia
>- Constante estrés

1. Ops
<p>
"[Ops]...es un término general para ingenieros de sistemas, administradores de sistemas, personal de operaciones, ingenieros de Release, Administradores de Bases de Datos, ingenieros de red, profesionales de seguridad y varias otras subdisciplinas y títulos laborales."
</p>
<p>Ernest Mueller, "What is DevOps?"</p>
<p>The Agile Admin, 2010</p>

2. Ops y el cambio
<p>
"La especie que sobrevive no es la más fuerte, ni tampoco la más inteligente, sino aquella que responde más rápidamente al cambio."
</p>
<p>Charles Darwin</p>

3. ¿Donde empezar?
>- Elimina los privilegios para realizar cambios
>- Crea ventanas de mantenimiento
>- Al resolver problemas, analiza los cambios recientes.
>- Crea un CAB (Change Advisory Board)
>- Utiliza un Sistema de Administración de Cambios

4. Requerimientos No Funcionales
>- Aprovisionamiento y configuración
>- Configuración de balanceadores de carga
>- Escalamiento horizontal y vertical de recursos

### 15. Monitoreo
<p><strong>2da vía:</strong></p> Incrementa los flujos de feedback

1. Tipos de monitoreo
>- libro Practical Monitoring  Mike Julian
>- Negocio
>- Aplicaciones
>- Servidores
>- Red (ancho de banda, rendimiento, latencia)

2. Instrumentación
<p>
"La habilidad de monitorear o medir el nivel de perfonmance de tu producto, de diagnosticar errores y de escribir información de rastreo" - M. Julian
</p>

3. Instrumentación en acción
>- Agregación de logs (splunk>, graylog)
>- Health Endpoints(Prometheus, DATADOG, influxdata, grafana, kibana)

4. ¿Que monitorear?
<p>
"Si se mueve, se monitorea. Caso contrario, se monitorea de todas maneras, por si decide moverse." - Ingenieros de Etsy
</p>
<p>
"Lo que puedes medir, puedes manejar." - Peter Drucker
</p>

5. ¿Por dónde empezar?
>- Users <-> Load Balancer <-> Web & App Servers <-> Databases
>- Users
>- Load Balancer
>- Web & App Servers
>- Databases
>- Empezar por los Usuarios

6. Alertas - Recomendaciones
>- No Email
>- Elimina las que no son útiles
>- Auto-curación

### 16. Modelo de Madurez
>- Cultura (Negro, Azul, Verde, Amarillo, Blanco)
>- Procesos (Negro, Azul, Verde, Amarillo, Blanco)
>- Tecnología (Negro, Azul, Verde, Amarillo, Blanco)

1. Cultura:
>- Habitos.

2. Procesos:
>- Codificar.
>- Monitorear.
>- Crear Infraestructura.

3. Tecnología:
>- Herramientas para el proyecto.

#### Cinturon blanco (Ad hoc):
##### Cultura
>- Comunicación nula.
>- Cultura de acusación.
>- Equipos organizados por habilidades.

##### procesos
>- Procesos manuales.
>- Requerimientos guiados por intuición.
>- Conocimiento tribal.
>- Monitoreo nulo.
>- Comportamiento reactivo.

##### tecnología:
>- Automatización y herramientas nulas.
>- Incosistentes entre ambientes.
>- Versionamiento inexistente.

#### Cinturon amarillo (Repetible)
##### Cultura
>- Comunicación inicial
>- Apertura limitada del conocimiento

##### Procesos
>- Procesos escritos (documentación)
>- Desarrollo guiado por SCRUM
>- Reportes Tácticos

##### Tecnología
>- Adopción de herramientas
>- Estandarización de Ambientes
>- Tests automatizados por cada User Story
>- Deployment a Producción dolorosos pero repetibles

#### Cinturon verde (Definido)

##### Cultura
>- Comunicación fluida
>- Toma de decisiones y responsabilidad de resultados compartidos

##### Procesos
>- Orquesración simple.
>- Automatización suplanta a documentación.
>- Monitoreo en tiempo real.

##### Tecnología
>- Compilación y testeo automatizados al 100%
>- Deplotymentes automáticos a todos los Ambientes (excepto Producción)
>- Creación automatizada de Ambientes

#### Cinturon Azul (Deliverado)

##### Cultura
>- Decisiones basadas en métricas
>- Colaboración continua
>- Equipos organizados por Producto
>- Andon Cord

##### Procesos
>- Orquestación compleja
>- Entregas recurrentes en tiempos cortos
>- Visibilidad y previsibilidad en las Operaciones

##### Tecnología
>- Deployments automáticos a Producción (Rollback posible).
>- Monitoreo permite encontrar patrones.
>- Auto - curación.

#### Cinturon negro (Optimizado)

##### Cultura
>- Aprendizaje y Mejora continuas
>- Constante transferencia de conocimiento
>- Equipos multi-disciplinarios

##### Procesos
>- Rxperimentación constante
>- Testeo y Entrega Continua

##### Tecnología
>- Cero perdida de servicio en Deployments
>- Ingeniería del Caos
>- Feedback inmediato

##### ¿En qué cinturón se encuentra tu equipo?
##### ¿Qué acciones puedes tomar en este momento para avanzar al siguiente nivel?

### 17. Espera Turbulencia
>- Miedo a la Automatización
>- Miedo al cambio
>- Apego a las Herramientas
>- Cultura del Dedo

### 18. Tácticas de Adopción
Automatiza los tests
1. Funcionalidad + Tests
2. Prioriza un área a la vez
<p>Tests Automatizados = </p>
<p>
<strong>F</strong>acilita el
<strong>A</strong>prendizaje de
<strong>L</strong>ecciones
<strong>L</strong>ibre de 
<strong>A</strong>ngustia
<strong>¡Rápido!</strong>
</p>
3. Adopta una Herramienta
>- Orquestador
>- Scripts de automatización
>- Andon Cord
<p>
"Si algo esta roto, no lo envíes a la siguiente persona."
</p>

3. Aprovecha los Agentes de Cambio
>- Comparte el Sufrimiento
>- Releases dolorosos
>- Productos defectuosos
>- Infraestructura frágil

4. Se o No Ser...
>- Escuafrón Kaizen CAMS.
>- SRE = Software Reliability Engineer.
>- Reduce los silos.
>- Acepta el fallo.
>- Implementa cambios graduables.
>- Aprovecha herramientas y automatización.
>- Mídelo todo.

5. Crea un equipo ¡DevOps!
>- Contrata consultores
>- Dev + Ops 
<p>Equipo SRE</p>
<p>Empresa DevOps</p>

### 20. Caso de Uso #1
<p>A tomar en cuenta:</p>
>- Nivel de madurez tecnológico
>- Cultura del Equipo de Desarrollo
>- Recursos económicos y de tiempo
<p>Caso de Uso 1</p>
<p>Fase 1: Aseguramiento de la Calidad</p>
>- Bitbucket Pipelines -> Unit Tests
<p>Fase 2: Continuous Delivery</p>
<p>HostGator</p>
<p>Testing - Producción</p>

### 21. Caso de Uso 2
<p>
"...al evitar realizar actividades que consumen excesivo tiempo y esfuerzo, olvidamos que..."
</p>
>- Incrementamos la deuda técnica.
>- La automatización está a nuestro favor.

#### Limitaciones
>- Velocidad en la ejecución de Tests

#### Esfuerzo en Devs & QA
>- Build -> Unit Tests -> Creación Ambiente UAT -> Deployment a Ambiente UAT -> Ejecución de UATs -> Deployment a Producción
>- Emplea Jenkins

