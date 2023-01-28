# Comandos para analizar + cobertura de pruebas con SonarQube Scanner para aplicaciones .NET 6 

## Instalar el paquete *dotnet-coverage*
> dotnet tool install --global dotnet-coverage

## Flujo de ejecución del análisis de calidad de código incluyendo la cobertura de pruebas

- Paso 1
~~~
dotnet sonarscanner begin /k:"EcommerceId" /d:sonar.login="sqp_103eb1811d79e68444ca64957ffbe677ed2acace" /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml
~~~
- Paso 2
~~~
dotnet build --no-incremental
~~~
- paso 3
~~~
dotnet-coverage collect 'dotnet test' -f xml  -o 'coverage.xml'
~~~
- Paso 4
~~~
dotnet sonarscanner end /d:sonar.login="sqp_103eb1811d79e68444ca64957ffbe677ed2acace"
~~~