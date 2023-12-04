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