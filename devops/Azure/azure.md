### cursos
>- https://www.udemy.com/course/azure-devops-para-todos/learn/lecture/31987532#overview

## creación de function por comandos
https://learn.microsoft.com/es-es/azure/azure-functions/create-first-function-cli-java?tabs=bash%2Cazure-cli%2Cbrowser


## azure

´´´
https://learn.microsoft.com/es-es/azure/azure-functions/functions-run-local?tabs=v4%2Cwindows%2Cjava%2Cportal%2Cbash#v2
´´´

´´´
https://learn.microsoft.com/en-us/azure/azure-functions/functions-versions?pivots=programming-language-javascript&tabs=v4#minimum-extension-versions
´´´

´´´
https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azurite?tabs=npm
´´´

´´´
https://azure.microsoft.com/en-us/products/storage/storage-explorer/
´´´

# devops azure
>- https://gitlab.com/trainings2/aks-template.git
>- https://gitlab.com/trainings2/ado-dockeragent.git
>- git clone https://gitlab.com/trainings2/ado-dockeragent.git

´´´
export AZP_URL_VALUE=https://dev.azure.com/programacionparaaprender2
export AZP_TOKEN_VALUE=jmyzxeux3mdykggpcdth3aue4liq2c7dmwbdqkvyqm4gvdomyuuq
export AZP_AGENT_NAME_VALUE=midockeragent
docker build -t dockeragent:latest .
docker run -e AZP_URL=$AZP_URL_VALUE -e AZP_TOKEN=$AZP_TOKEN_VALUE -e AZP_AGENT_NAME=$AZP_AGENT_NAME_VALUE dockeragent:latest
´´´
