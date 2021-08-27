CREATE TABLE Cliente
(
Cedula int not null
,Nombre varchar(50) not null
,Apellido varchar(50) not null
,Direccion varchar(60) not null
,constraint pk_Cliente PRIMARY KEY(Cedula)
);
INSERT INTO Cliente(Cedula,Nombre,Apellido,Direccion)
VALUES(19888888,'Luis','Correa','Hospital');
INSERT INTO Cliente(Cedula,Nombre,Apellido,Direccion)
VALUES(19888889,'Ana','Correa','Hospital');
INSERT INTO Cliente(Cedula,Nombre,Apellido,Direccion)
VALUES(19888887,'Patricia','Correa','Hospital');
INSERT INTO Cliente(Cedula,Nombre,Apellido,Direccion)
VALUES(21888887,'Jorge','Garcia','Lecheria');
INSERT INTO Cliente(Cedula,Nombre,Apellido,Direccion)
VALUES(12342161,'Adel','Diaz','Pto la Cruz');
INSERT INTO Cliente(Cedula,Nombre,Apellido,Direccion)
VALUES(21808880,'Cesar','Diaz','Morro Humbolt');
