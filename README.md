## páginas
www.aulafacil.com
https://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History


## obtener ultimo pull
git log -p -2

## subir una actualización

git add archivo 
git add *

git commit -m "Comentario"

git push origin master


## agregar un repositorio nuevo
echo "# cursogithub" >> README.md
git init
git add README.md
git commit -m "first commit"
git commit --author="Luis Correa <correo@programacionparaaprender.com>" -m "first commit" 

## permite ver el nombre del commit
git log

git remote add origin https://github.com/luis13711/cursogithub.git
git push -u origin master

## Repositorio ya existente

git remote add origin https://github.com/luis13711/cursogithub.git
git push -u origin master

## Clonar repositorio publico

git clone https://github.com/luis13711/cursogithub.git

## Clonar un repositorio privado 

git clone https://username:password@github.com/nombredeusuario/cursogithub.git

## Agregar globalmente usuario

git config --global user.email "correo"
git config --global user.name "nombreusuario"

## Crear ramas

git branch
git branch rama


## Movernos entre ramas

git checkout rama

## que un archivo vuelva a su estado anterior
git checkout -- index.html


## Al modificar el .gitignore

git rm -r --cached .
git add *
git commit -m "Verificando gitignore"
git push origin rama

## volver a un commit
git checkout codigocommit


## hacer merge con una rama cuando da conflictos
git merge origin/master


## visualizar todos los commit
git remote -v

## Extras
git log

git commit -m "" 
git commit -a
git commit 


### cambios realizados
git diff

### eliminar una rama local
git branch -D rama

### eliminar rama en la nube
>- git push origin --delete rama

### crear una bifurcación
>- https://www.spanishnewsnow.com/como-bifurcar-un-repositorio-de-github/


### agregar un tag
>- git rm -r --cached .
>- git tag v1.0.0
>- git push origin master --tags

### habilitar scripts
>- https://stackoverflow.com/questions/69605313/vs-code-terminal-activate-ps1-cannot-be-loaded-because-running-scripts-is-disa


### pruebas de capture

<img src="img/docker3.png" alt="Size Limit logo by Anton Lovchikov" width="500" height="200">

<img src="img/docker2.png" alt="Size Limit logo by Anton Lovchikov" width="500" height="200">

<img src="img/azure2.png" alt="Size Limit logo by Anton Lovchikov" width="600" height="300">
<img src="img/azure.png" alt="Size Limit logo by Anton Lovchikov" width="500" height="500">
<img src="img/docker.png" alt="Size Limit logo by Anton Lovchikov" width="200" height="50">



### CLONAR UN REPOSITORIO
>- git clone URL-REPOSITORIO

### si quieres Clonar un repositorio e ir directo a una rama en especifico
>- git clone -b RAMA URL-REPOSITORIO

### CAMBIAR DE RAMA		
#### ver todas las ramas q hay en el repositorio
>- git branch -vva
			
#### cambiar de rama
>- git checkout RAMA
			
#### CREAR UNA NUEVA RAMA
>- git checkout -b NUEVA-RAMA 
			
### SUBIR TUS CAMBIOS A TU REPOSITORIO		
#### ver que clases hicistes cambios
>- git status
			
### agregar todas tus clases que hiciste cambios
>- git add .
			
### si quieres agregar una sola clase que hiciste cambio
>- git add CLASE-MODIFICADA
				
### comitear tus cambios
>- git commit -m 'feat : new change'

### subir tus cambios al repositorio
>- git push origin TU-RAMA
		
### ACTUALIZAR TU RAMA
>- git pull origin RAMA-DE-LA-CUAL-ACTUALIZARAS

### UNIR COMITS
### comando para definir cuantos comits uniras. ejemplo 5
>- git reset --soft HEAD~5
			
### comando para definir cuantos comits uniras. ejemplo 2
>- git reset --soft HEAD~2
		
### descripcion del commit 
>- git commit -m 'feat :10543 implementacion de logica para descarga de archivos de reclamos CMS y guardado en base de datos'
			
### subir comit	
>- git push --force origin NOMBRE-RAMA
>- git push --force origin feature-topic

### COMANDO PARA CERTIFICADO SSL
>- git config --global http.sslVerify false

### COMANDO UTILIZADO PARA CAMBIAR DE AUTOR AL MOMENTO DE SUBIR LOS CAMBIOS AL REPOSITORIO
>- git config --global user.name ""
>- git config --global user.email ""
			
### enviar y obtener datos de un repositorio original luego de hacer fork
>- git remote add upstream https://github.com/original-usuario/repositorio-original.git
>- git remote -v
>- git fetch upstream
>- git checkout main
>- git merge upstream/main
>- git push origin main
>- git branch -d nombre-de-la-rama


### obtener datos de un fork desde otro fork
>- git remote -v
>- git remote add aliasfork git@repo.empresa.com:nombre.apellido/repositorio1-fork.git
>- git fetch aliasfork
>- git checkout -b rama-forkpersonal aliasfork rama-repositorio-fork
>- git pull aliasfork aliasfork rama-repositorio-fork


### GENERAR WAR E  INDICAR QUE PROPERTIES USAR 
>- mvn -P PROPERTIES-DESEADO clean install


		


