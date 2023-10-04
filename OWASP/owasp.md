

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
>- 