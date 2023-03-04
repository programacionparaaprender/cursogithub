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
git push origin --delete rama

### crear una bifurcación
https://www.spanishnewsnow.com/como-bifurcar-un-repositorio-de-github/


### agregar un tag
git rm -r --cached .
git tag v1.0.0

### pruebas de capture

<img src="img/docker3.png" alt="Size Limit logo by Anton Lovchikov" width="500" height="200">

<img src="img/docker2.png" alt="Size Limit logo by Anton Lovchikov" width="500" height="200">

<img src="img/azure2.png" alt="Size Limit logo by Anton Lovchikov" width="600" height="300">
<img src="img/azure.png" alt="Size Limit logo by Anton Lovchikov" width="500" height="500">
<img src="img/docker.png" alt="Size Limit logo by Anton Lovchikov" width="200" height="50">


