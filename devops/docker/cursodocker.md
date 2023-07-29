
### enlace udemy del curso
https://www.udemy.com/course/docker-para-entorno-de-desarrollo-web/learn/lecture/11410410#overview


### repositorio del curso
https://bitbucket.org/jcarreras/curso-docker-para-entornos-de-desarrollo/src/master/

# Manual de comandos

En Ã©ste documento se describen todos los comandos y cambios a ficheros necesarios
para seguir el curso de [Docker Para Entornos de Desarrollo](https://www.udemy.com/course/docker-para-entorno-de-desarrollo-web/?referralCode=63DB460320F0C03A1E87).

Si hay cualquier mejora o sugerencia, no dudes en abrir un ticket en el repositorio,
o mejor aÃºn clonar el repositorio, hacer cambios y crear un Pull Request.

## Para despuÃ©s del curso

Empezamos por el final. Cuando acabes el curso, quizÃ¡s quieres saber cÃ³mo continuar con tu
viaje en el mundo de Docker. Para ello voy escribiendo artÃ­culos en mi [Blog](https://krenel.org/recursos-interesantes-para-el-curso-de-docker-para-entornos-de-desarrollo/?ref=bitbucket).

AllÃ­ se menciona el canal de Discord donde podemos hablar de tÃº a tÃº, resolver dudas, y
proponer cambios en el curso, o sugerir nuevos cursos. Si te interesa, no dudes en unirte al club. 


## SecciÃ³n 2 - Instala dependencias de Laravel

### Clonando el proyecto de Laravel 5.0

	# Creamos un directorio donde trabajar (opcional)
	mkdir -p ~/udemy && cd ~/udemy
	# Clonamos Laravel 5.0
    git clone -b 5.5 https://github.com/laravel/laravel.git captacion
	# entramos en el directorio
    cd ./captacion

### Instalando las dependencias con composer

	docker run --rm -it -v "$(pwd)":/app composer composer install


#### Nota para usuarios de Windows:

Debido a que las variables funcionan algo diferente en Windows que en Linux/OSX el comando es diferente:

	docker run --rm -it -v ${PWD}:/app composer composer install
    
Todas las ocurrencias durante Ã©sta guÃ­a de `"$(pwd)"` deberÃ¡n ser cambiadas por `${PWD}` si utilizas Windows.


## SecciÃ³n 3 - Arranca el proyecto

### Descargar la imagen de PHP

Se recomienda encarecidamente a no usar "php" o "php:latest" ya que podÃ©is tener problemas con dependencias despuÃ©s. La Ãºltima versiÃ³n siempre aumenta, y por tanto aumenta el riesgo de que no sea compatible hacia atrÃ¡s. El curso se hizo con php7.2 (creo recordar) y habÃ­a hasta la versiÃ³n 7.3, y funciona todo bien:

	docker pull php:7.3

### Instala dependencias de Laravel con Dockerfile

> **Â¡Cuidado! El fichero ha cambiado con respecto al del curso. NÃ³tese que se especifica la versiÃ³n, se el nombre del cliente de MySQL ha cambiado y "zip" requiere de una dependencia adicional.**

Fichero que se tiene que guardar con nombre "Dockerfile" en la raÃ­z del proyecto.

	
	FROM php:7.3

	RUN apt-get update && apt-get install -y --no-install-recommends \
	libmcrypt-dev \
	default-mysql-client \
	libmagickwand-dev

	RUN pecl install imagick
	RUN docker-php-ext-enable imagick
	RUN docker-php-ext-install pdo_mysql
	RUN apt-get install -y --no-install-recommends libzip-dev
	RUN docker-php-ext-install zip

	WORKDIR /app

#### Haz la build de la imagen

	docker build -t captacion-php ./

### Levantar el proyecto de Laravel

	docker run --rm -it -p 8000:8000 -v "$(pwd)":/app captacion-php php artisan serve --host=0.0.0.0

## SecciÃ³n 4 - Configura Laravel

### Copiar el fichero .env

	 cp .env.example .env

### Generar una APP_KEY

	docker run --rm -it -p 8000:8000 -v "$(pwd)":/app captacion-php php artisan key:generate

## SecciÃ³n 5 - PresentaciÃ³n web

Como ejemplo, se utiliza el proyecto [Bootstrap-coming-soon](https://github.com/BlackrockDigital/startbootstrap-coming-soon). Para poder usarlo, tienes que copiar ficheros de Ã©ste repositorio al repositorio de Laravel:

    .
    â””â”€â”€ coming-soon-template
        â”œâ”€â”€ Coming\ Soon\ -\ Start\ Bootstrap\ Theme_files
        â”‚   â”œâ”€â”€ all.min.css
        â”‚   â”œâ”€â”€ bootstrap.bundle.min.js
        â”‚   â”œâ”€â”€ bootstrap.min.css
        â”‚   â”œâ”€â”€ coming-soon.min.css
        â”‚   â”œâ”€â”€ coming-soon.min.js
        â”‚   â”œâ”€â”€ css
        â”‚   â”œâ”€â”€ css(1)
        â”‚   â””â”€â”€ jquery.min.js
        â”œâ”€â”€ fa-brands-400.woff2
        â”œâ”€â”€ mp4
        â”‚   â””â”€â”€ bg.mp4
        â””â”€â”€ welcome.blade.php

Copia todos los ficheros del directorio coming-soon-template dentro del directorio `./public` del proyecto.

Ejecuta el siguiente comando en la raÃ­z del proyecto:

	mv public/welcome.blade.php resources/views/welcome.blade.php



## SecciÃ³n 6 - PresentaciÃ³n de Caso Real

### docker-compose.yml

El fichero se tiene que guardar a la raÃ­z del proyecto:

	version: '3.0'

	services:
	  web:
        image: 'captacion-php'
        ports:
          - '8000:8000'
        volumes:
          - "./:/app"
        command: php artisan serve --host=0.0.0.0

### Iniciar el proyecto con compose

	docker-compose up


## SecciÃ³n 7 - Instala MySQL

### Actualizar docker-compose.yml

    version: '3.0'
    
    services:
      web:
        image: 'captacion-php'
        ports:
          - '8000:8000'
        volumes:
          - "./:/app"
        command: php artisan serve --host=0.0.0.0
    
      mysql:
        image: 'mysql:5.7'
        ports:
          - '3306:3306'
        environment:
          - MYSQL_ROOT_PASSWORD=toor
        volumes:
          - mysql-data:/var/lib/mysql
    
    volumes:
      mysql-data:

### Volver a lanzar para levantar MySQL

	docker-compose up

### Crear la base de datos de captaciÃ³n

> Si no puedes ejecutar Ã©ste comando o no tienes una aplicaciÃ³n instalada para conectarte, no te preocupes. MÃ¡s adelante prepararemos un comando hay un comando que crearÃ¡ la BBDD si no la has creado ya.

	create database captacion;

### Hacer links entre containers

> **Â¡Cuidado! Ã‰ste paso ya no es requerido. Todo lo que haya en docker-compose estarÃ¡ lincado por defecto. Es mÃ¡s, en nuevas versiones de DockerCompose se deprecata el uso de Link, de modo que es mejor no usarlo**

> **Digamos que el equipo de docker simplificÃ³ Ã©sta parte y ya no hace falta.**


### Cambios en el .env

    DB_CONNECTION=mysql
    DB_HOST=mysql
    DB_PORT=3306
    DB_DATABASE=captacion
    DB_USERNAME=root
    DB_PASSWORD=toor



## SecciÃ³n 8 - Conectando Containers

	# Conectarse al container
	docker-compose exec web bash

Por si antes no has creado la base de datos. Si ya habÃ­as creado la BBDD puedes lanzar el comando y no romperÃ¡s nada.

	mysql -uroot -ptoor -hmysql -e 'create database IF NOT EXISTS captacion'

Comprueba el estado de las migraciones

	# Mirar el estado de las migraciones (darÃ¡ error)
	php artisan migrate:status
	# Lanzar las migraciones
	php artisan migrate
	# Mirar el estado de las migraciones (funcionarÃ¡)
	php artisan migrate:status

Modo alternativo de lanzar los comandos (no hace falta ejecutarlo):

	docker-compose exec web /app/artisan migrate:status

### Conectar en mysql

Entra en el container de MySQL y conectar al servidor de MySQL

	docker-compose exec mysql bash
	mysql -uroot -ptoor

Los dos pasos anteriores, a la vez:
	
	docker-compose exec mysql mysql -uroot -ptoor


	
## SecciÃ³n 9 - Cerrando la funcionalidad de la aplicaciÃ³n

> No hace falta que hagas todos los pasos de Ã©sta secciÃ³n si no quieres. Son muy especÃ­ficos de Laravel y no aportan tanto valor. Lo que aporta valor es ver cÃ³mo funciona todo y encajan las piezas, o sea, viendo los vÃ­deos. AÃºn asÃ­, si te sientes con ganas de replicar los vÃ­deos, vamos a ello.

> En Ã©sta secciÃ³n serÃ© especialmente verbose explicando por quÃ© haga cada uno de los puntos para que se entienda bien por quÃ© hacemos lo que hacemos. Si conoces Laravel serÃ¡ aburrido. Si no lo conoces serÃ¡ confuso. Otra vez, no hace falta que sigas Ã©stos pasos si no quieres.

### Crear una MigraciÃ³n para crear una nueva tabla

Necesitamos crear una tabla en MySQL para guardar los emails. Una forma de hacerlo es crear una Migration de Laravel. Crea un fichero en `./database/migrations/2020_03_26_221404_create_table_emails.php` con el contenido:

    <?php  
      
    use Illuminate\Support\Facades\Schema;  
    use Illuminate\Database\Schema\Blueprint;  
    use Illuminate\Database\Migrations\Migration;  
      
    class CreateTableEmails extends Migration  
    {  
      /**  
     * Run the migrations. * * @return void  
     */  public function up()  
     { Schema::create('emails', function (Blueprint $table) {  
      $table->increments('id');  
      $table->string('email', 100);  
      $table->timestamps();  
      });  
      }  
      
      /**  
     * Reverse the migrations. * * @return void  
     */  public function down()  
     { Schema::dropIfExists('emails');  
      }  
    }
	
	
Podemos ver las migraciones pendientes que hay, y ahora Ã©sta deberÃ­a aparecer en el listado como no ejecutada:

	docker-compose exec web /app/artisan migrate:status

La salida del comando deberÃ­a ser:

    +------+------------------------------------------------+
    | Ran? | Migration                                      |
    +------+------------------------------------------------+
    | Y    | 2014_10_12_000000_create_users_table           |
    | Y    | 2014_10_12_100000_create_password_resets_table |
    | N    | 2020_03_26_221404_create_table_emails          |
    +------+------------------------------------------------+

Podemos ejecutar la migraciÃ³n (creaciÃ³n de la tabla) ejecutando:

	docker-compose exec web /app/artisan migrate

El output del comando deberÃ­a ser:

    Migrating: 2020_03_26_221404_create_table_emails
    Migrated:  2020_03_26_221404_create_table_emails

Si vuelves a ejecutar el "status" verÃ¡s que ya no quedan migraciones por ejecutar. La tabla ha sido creada:

    docker-compose exec web /app/artisan migrate:status
    +------+------------------------------------------------+
    | Ran? | Migration                                      |
    +------+------------------------------------------------+
    | Y    | 2014_10_12_000000_create_users_table           |
    | Y    | 2014_10_12_100000_create_password_resets_table |
    | Y    | 2020_03_26_221404_create_table_emails          |
    +------+------------------------------------------------+
    	
> Â¿Todo esto se podrÃ­a haber arreglado con un "create table blahblah"? SÃ­, al 100%. Pero Ã©sta es la forma de hacerlo con Laravel. La ventaja de hacer Ã©stos ficheros es que los commiteas en el repositorio, y si un compaÃ±ero se descarga el repositorio basta que ejecute las migrations con el comando anterior y aplicarÃ¡ los cambios en el modelo. AsÃ­ todo el mundo tiene la Ãºltima versiÃ³n de todo, y estÃ¡ en el Sistema de Control de Versiones.

### Crea el fichero modelo Email

Crea el fichero `./app/Email.php` con el contenido:

    <?php  
      
    namespace App;  
      
    use Illuminate\Database\Eloquent\Model;  
      
    class Email extends Model  
    {  
      protected $table = 'emails';  
      
      protected $fillable = [  
      'email'  
      ];  
    }

Ã‰ste fichero define el objeto del ORM (Eloquent). Por esto define el nombre de la tabla que acabamos de crear, asÃ­ como que tiene un campo `email`.

### Crea una ruta para la URL "/email"

> Â¡Cuidado! En pro a la simplificaciÃ³n haremos una pequeÃ±a Ã±apa. Lo suyo serÃ­a crear una controladora, registrar la ruta, etc... Pero es mucho jaleo. Mejor simplificamos.

Editamos el fichero `./routes/web.php` con el contenido:

    <?php  
      
    /*  
    |--------------------------------------------------------------------------  
    | Web Routes  
    |--------------------------------------------------------------------------  
    |  
    | Here is where you can register web routes for your application. These  
    | routes are loaded by the RouteServiceProvider within a group which  
    | contains the "web" middleware group. Now create something great!  
    |  
    */  
      
    use Illuminate\Http\Request;  
      
    Route::get('/', function () {  
      return view('welcome');  
    });  
      
    Route::get('/email', function(Request $request) {  
      $email = App\Email::updateOrCreate($request->all());  
      return sprintf('Thanks for submitting your email, %s <a href="/">home</a>', $email->email);  
    });

Si nos centramos en el Ãºltimo bloque, asÃ­ muy rÃ¡pido, la primera lÃ­nea de la funciÃ³n lee todos los parÃ¡metros que nos han pasado por GET, y utiliza el modelo del ORM Email para crear un nuevo registro. La sintaxis es muy compacta (y un infierno cuando quieres hacer un test unitario, pero esto ya es otra historia para otro dÃ­a).

La segunda lÃ­nea imprime un mensaje guarro conforme la operaciÃ³n se ha realizado con Ã©xito.

### Utilizando el formulario

Si utilizamos el formulario se inserta un nuevo registro.

Para ver si un email se ha guardado en la base de datos correctamente podemos ejecutar el siguiente (horrendo) comando:

    docker-compose exec web mysql -hmysql -ptoor captacion -e'select * from emails;'
    +----+----------------------+---------------------+---------------------+
    | id | email                | created_at          | updated_at          |
    +----+----------------------+---------------------+---------------------+
    |  1 | contact@jcarreras.es | 2020-03-26 22:43:02 | 2020-03-26 22:43:02 |
    +----+----------------------+---------------------+---------------------+

Aunque es uno de los comandos mÃ¡s complejos y no se explica explÃ­citamente en el curso, ya deberÃ­a saber diseccionar todas las partes y saber quÃ© parÃ¡metros son de docker-compose, cuales se ejecutan dentro del container, quÃ© parÃ¡metros se le pasan al cliente de MySQL y quÃ© parte es la query. Complejo? Si. Pero entendible y reproducible en cualquier mÃ¡quina.

### Configurando mailtrap

AÃ±ade el siguiente bloque a `docker-compose.yml`:


    mailtrap:
    	image: 'eaudeweb/mailtrap'
    	ports:
    		- "8081:80"


Reinicia el stack de docker compose:

	docker-compose down
	docker-compose up

Ahora deberÃ­as poder entrar en http://localhost:8081 con el usuario `mailtrap` y contraseÃ±a `mailtrap`. 

### Adapta la aplicaciÃ³n para que mande el correo

Modifica el fichero `./routes/web.php` y adapta Ã©sta funciÃ³n, aÃ±adiendo las lÃ­neas de `\Mail::raw(...`:

    Route::get('/email', function(Request $request) {  
      $email = App\Email::updateOrCreate($request->all());  
      
      \Mail::raw('You have been subscribed', function($message) use ($email) {  
	      $message->to($email->email);  
      });  
      
      return sprintf('Thanks for submitting your email, %s <a href="/">home</a>', $email->email);  
    });

Con Ã©ste cambio, cuando un usuario se suscriba a las notificaciones, le mandaremos inmediatamente un correo.

### Ajustar el .env

Modifica el fichero .env, el bloque de `MAIL_*` para que quede tal que:

    MAIL_DRIVER=smtp  
    MAIL_HOST=mailtrap
    MAIL_PORT=25  
    MAIL_USERNAME=null  
    MAIL_PASSWORD=null  
    MAIL_ENCRYPTION=null

Para que los cambios del .env sean efectivos, deben reiniciar el Stack:

	docker-compose down
	docker-compose up