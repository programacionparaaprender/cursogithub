# cursogithub

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

git clone https://username:password@github.com/luis13711/cursogithub.git

## Agregar glabalmente usuario

git config --global user.email "correo"
git config --global user.name "nombreusuario"

## Crear ramas

git branch
git branch rama


## Movernos entre ramas

git checkout rama

## Regresar cambio

git chechout --index.html
git diff index.html


## Al modificar el .gitignore

git rm -r --cached .
git add *
git commit -m "Verificando gitignore"
git push origin rama

## Extras

git log

git commit -m "" 
git commit -a
git commit 

