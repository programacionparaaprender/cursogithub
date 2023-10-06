## cursos
>- https://udemy.com/course/owasptop10api/learn/lecture/17989105#overview
>- https://www.udemy.com/course/owasp-top-10-2021-intro/learn/lecture/38988670#overview
>- https://indra.udemy.com/course/modelado-de-amenazas/learn/lecture/20900186#overview

### WebGoat
>- https://github.com/WebGoat/WebGoat/releases
>- https://github.com/WebGoat/WebGoat
>- https://hub.docker.com/r/webgoat/webgoat-7.1
>- docker pull webgoat/webgoat-7.1
>- docker pull webgoat/webgoat-7.1 
>- docker run -p 8080:8080 -t webgoat/webgoat-7.1
>- Aplicativo para pruebas de seguridad
>- http://127.0.0.1:8080/WebGoat/login.mvc
>- http://127.0.0.1:9090/home

### Pruebas de Injection
>- http://127.0.0.1:8080/WebGoat/start.mvc#lesson/SqlInjection.lesson/1

### pruebas Missing Function Level Access Control
>- http://127.0.0.1:8080/WebGoat/start.mvc#lesson/MissingFunctionAC.lesson/1

### Pruebas Cryptography
>- http://127.0.0.1:8080/WebGoat/start.mvc#lesson/Cryptography.lesson/1

### Pruebas CrossSiteScripting
>- http://127.0.0.1:8080/WebGoat/start.mvc#lesson/CrossSiteScripting.lesson/6


### OWASP
>- Este proyecto abierto que tiene como finalidad minimizar las brechas de seguridad en aplicaciones web, ocasionadas por malas prácticas en el desarrollo del software como:
>- Débil control de acceso.
>- Criptografía insegura.
>- Inyección de código.
>- https://owasp.org/Top10/es/

### ¿Por que la seguridad del software es muy importante?
>- Es la superficie de ataque principal hacia un sistema
>- Controla el acceso a los datos y fuentes de información
>- Sus procesos y operaciones son esenciales para alcanzar los objetivos y metas de la empresa

### Primeros 3 Conceptos Fundamentales: Triada CID
>- CF1: Confidencialidad.
>- CF2: Integridad.
>- CF3: Disponibilidad.

### CF1 Confidencialidad
1. Protección de acceso a la información.
2. Protección sobre la divulgación no autorizada.

#### Secretos / Discrción
>- Formula de productos
>- Contratos
>- Negociaciones de precios
>- Secretos de estado
>- Etc.

1. 1. Propiedad Intelectual
>- Investigación de mercado
>- Desarrollo de herramientas
>- Nuevo contenido
>- Etc.

1. 2. Planes de negocio
>- Marketing
>- Precios
>- Expansión
>- Etc.

1. 3. Secretos Militares
>- Estrategias
>- Planes
>- Armamento
>- Proveedores
>- Etc.

1. 4. Datos Personales administrados por Software
>- IIP Información de Identificación Personal
>- PDS Privacidad en Datos de Salud
>- DTP Datos de Tarjetas de Pago

2. 1. Divulgación no autorizada: Canal Abierto
2. 1. 1. ¿Intencional?
>- Pobre resguardo de datos visibles en aplicación: Sin máscara, planos, etc.
>- Personal comparte información entre ellos y con agentes externos.
>- Datos confidenciales en reportes: recibos, facturas, tarjetas de pago.
2. 1. 2. ¿Intencional o accidental?
>- Intentos de acceso no autorizado.
>- IP's externas.
>- Técnicas ofensivas de penetración.
>- Etc.

### Criterios de construcción de SW para proteger la confidencialidad
>- UI Enmascaramiento / Ofuscación
>- Implementación Encriptación
>- BdD Capa de Exposición / Acceso por Vistas

### Notas clave: perspectiva de requerimientos
>- Un requerimiento fundamental de seguridad es la protección de datos confidenciales y la divulgación no autorizada de los mismos.
>- El requerimiento debe ser parte del contrato legal.

### Clasificación de los datos según su estado en el tiempo
>- En uso: Datos que fueron obtenidos por el usuario
>- En reposo: En base de datos en sistemas de archivos
>- En movimiento: En medio de dos puntos conectados por redes de computadoras.

### Encriptación
1. Datos en reposo
>- Encriptado de disco
>- Encriptado de archivos
>- Encriptado por datos
>- Encriptado de base de datos
>- Encriptado por columnas
>- Encriptado por datos

2. Datos en movimiento
>- Certificados SSL (Secure Sockets Layer)
>- Certificados TLS (Transport Layer Security)
>- Túnel Seguro VPN (Virtual Private Network)

### Diagrama de Flujo de Datos DFD: Data Flow Diagram
>- Nomenclatura: Youdon & Coad
>- Entidad externa -> Proceso -> Almacen de datos -> Flujo de dato
>- DFD: Nivel 0. Diagrama de Contexto
>- DFD: Nivel 1 
>- DFD: Nivel 2

### CF2: Integridad
>- Protección de datos confidenciales.
>- Protección del procesamiento de datos.
>- Protección de modificaciones y/o alteraciones no autorizadas.
>- Modificaciones y/o alteraciones no autorizadas
>- Accidental Distorsión
>- Intencional Fraude

#### Precisión y exactitud
>- No autocorrección.
>- Validación de datos de entrada.
>- Manejo apropiado de excepciones.
>- Completitud de pasos / guía.

#### Técnicas comunes de control de integridad
>- Hashing
>- >- Criptografia
>- >- Datos -> Text
>- >- No reversible
>- >- No reproducible

#### Firma digital
>- >- Aplicado sobre activos digitales
>- >- Encriptado asimétrico (llaves pub/pri)
>- >- Prueba de identidad

#### Firmado de ejecutables
>- >- Firma digital de artefactos
>- >- Verifica autoria
>- >- Garantia de no modificaciones

### CF3: Disponibilidad