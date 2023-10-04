
## cursos
>- https://udemy.com/course/owasptop10api/learn/lecture/17989105#overview

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

#### API2. Autenticación insegura

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
>- Las API
