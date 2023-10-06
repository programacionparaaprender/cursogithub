## cursos
>- https://udemy.com/course/owasptop10api/learn/lecture/17989105#overview
>- https://www.udemy.com/course/owasp-top-10-2021-intro/learn/lecture/38988670#overview


### OWASP
>- Este proyecto abierto que tiene como finalidad minimizar las brechas de seguridad en aplicaciones web, ocasionadas por malas prácticas en el desarrollo del software como:
>- Débil control de acceso.
>- Criptografía insegura.
>- Inyección de código.
>- https://owasp.org/Top10/es/

### OWASP y sus Beneficios
>- Dentro de sus beneficios tenemos:
>- Busca prevenir que los programadores realicen fallas en su programación, reduciendo el impacto en sus vulnerabilidades.
>- Es un marco de referencia y consulta a la hora de seguir líneas bases en programación segura.
>- Aplicar estas buenas prácticas impacta de manera positiva en los gastos incurridos por arreglar vulnerabilidades.
>- El proyecto se actualizar constantemente y muestra en el top por orden de importancia.

#### A01:2021 - Pérdida de Control de Acceso
>- Los usuarios pueden ejecutar acciones fuera del rango de lo permitido, las aplicaciones no realizan el debido cuidado al momento de controlar los servicios y recursos, se ejecutan acciones no controladas y se exponen todos los sistemas
>- Ejemplo falta validar los perfiles de usuario

#### A02:2021 - Fallas Criptográficas
>- Los algoritmos de cifrado son dédiles o muchas veces obsoletos, las contraseñas usadas se pueden recuperar fácilmente por ataques de diccionario o con herramientas automatizadas.

#### A03:2021 - Inyección
>- 

### lista de OWASP top 10 API Riesgos de seguridad
1. API1. Autorización insegura a nivel de objeto
2. API2. Autenticación insegura
3. API3. Excesiva exposición de datos
4. API4. Falta de recursos y limites de uso
5. API5. Autorización insegura a nivel de funciones
6. API6. Asignación masiva
7. API7. Configuración de seguridad incorrecta
8. API8. Inyección
9. API9 Gestión inadecuada de activos
10. API10. Monitoreo y registro insuficiente


#### API1. Autorización insegura a nivel de objeto
>- Las API's suelen procesar sus funcionalidades a traves del uso de identificadores de objetos. Cuando estos identificadores son predecibles y no se evalua adecuadamente la autorización, un atacante puede intentar ejecutar funcionalidades que afecte a objetos y datos de otros usuarios modificando los identificadores que envia el API.
>- Ejemplo de error se muestren documentos sin autorización del usuario dueño

#### API2. Autenticación insegura
>- Es común que los mecanismos de autenticación estén afectados por las debilidades clásicas, pero a esto suma que el panorama actual de amenazas obliga a las organizaciones a no solo desarrollar código seguro sino también a implementar mecanismos de detección y bloqueo que reduzcan el éxito de ataques automáticos sobre los métodos de autenticación.
>- Ataques de fuerza bruta o de diccionario.
>- El atacante manda valores hasta logarar tener una contraseña correcta

#### API3. Excesiva exposición de datos
>- Los desarrolladores tienden a exponer demasiadas propiedades de los objetos sin tener en cuenta su sencibilidad individual u protección por regularizaciones.
>- Para maximizar la reutilización de activos y confiando el filtrado de datos a la aplicación client antes de mostrarlo al usuario.
>- Ejemplo información de un usuario, información de una tarjeta de credito.

#### API4. Falta de recursos y limites de uso
>- La API frecuentemente no imponen ninguna restricción sobre el tamaño o la cantidad de recursos que puede solicitar un cliente o usuario. Esto puede afectar el rendimiento del API, lo que lleva a la Denegación de servicio (DoS).
>- Ejemplo muchas peticiones por segundo

#### API5. Autorización insegura a nivel de funciones
>- Las políticas complejas de control de acceso tienden a tener diferentes jerarquias, grupos y roles lo que da pie a que existan errores de implementación o configuración que provoquen acceso no autorizado.
>- Ejemplo eliminar usuarios por error, crear orden de compra debe requerir aprobación

#### API6. Asignación masiva
>- Existe una fuerte disposición de que las aplicaciones se desarrollen enlazando los objetos JSON directamente a los modelos de datos. Esta nueva forma de desarrollo, implica que no siempre se tome en cuenta el filtrado de propiedades asignables utilizando listas blancas, logrando que puedan añadirse propiedades a las cuales pueden asignarse valores con fines maliciosos.
>- Ejemplo colocar una validación para los parametros que se ingresen antes de guardarlos

#### API7. Configuración de seguridad incorrecta
>- Las configuraciones incorrectas de seguridad suelen ser el resultado de configuraciones predeterminadas, configuraciones inseguras o permisivas, open cloud storage, cabeceras HTTP mal configuradas, métodos HTTP innecesarios y mensajes de error detallados que contienen información confidencial.
>- Configuraciones permisivas, que los header del response, muestren la información del servidor si es asp.net, se tenga una ip en lugar de una dns o dominio

#### API8. Inyección
>- Los efectos de inyección, como SQL, NoSQL, Inyección de comandos, etc., ocurren cuando se procesan comandos sin validar adecuadamente los valores de entrada. Un atacante podría ingresar valores de entrada maliciosos para engañar al procesador para que ejecute comandos no deseados o acceda a los datos sin la autorización adecuada.
>- Ejemplo 1 colocar código sql malicioso en la api, select * from usuario;update ususario set name='otro' where idusuario=1;
>- Ejemplo 2 colocar código malisioso en los comandos SqlCommand cmd = new SqlCommand("select * from producto where city='"+ p_productoid + "'"); esto permite inyección de sql también
>- Correcto es SqlParamenter param = new SqlParameter();param.ParameterName = "@productoid";param.Value=p_productoid;
>- inyección de comandos {"fecha":"abc.jpg && format c:"}
>- código vulnerable string shell_exec("del " + $parameter)
>- código seguro unlink($parameter); string shell_exec("del " + securefilter($parameter));

#### API9 Gestión inadecuada de activos
>- Las API's tienen que tener una mayor cantidad de endpoints que las aplicaciones web tradicionales y cambian mucho más frecuentemente que estas debido a los CI/CD, lo que provoca que el control y documentación se pierda debido al cambio constante y la cantidad de activos a manejar. Esta situción provoca que endpoints obsoletos no sean retirados y los endpoints de prueba puedan pasar a producción.
>- Ejemplo endpoints de prueba no borrados que permiten por ejemplo el logeo sin restricciones

#### API10. Monitoreo y registro insuficiente
>- El registro y la supervisión insuficientes, junto con la integración ineficaz con los equipos de respuesta a incidentes, permite a los atacantes, establecer persistencia y saltar hacia otros sistemas para manipular, extraer o destruir datos. La mayoria de los estudios de incumplimiento demuestran que el tiempo para detectar un incumplimiento es superior a 200 días, generalmente detectado por partes externas en lugar de procesos internos o monitoreo.
