CREATE TABLE Empleado
(
Cedula int not null
,Nombre varchar(20) not null
,Apellido varchar(20) not null
,Direccion varchar(40) not null
,Salario real not null
,constraint pk_idEmpleadoC primary key (Cedula)
);
INSERT INTO Empleado(Cedula,Nombre,Apellido,Direccion,Salario) 
VALUES(10000000,'Manuel','Martinez','Lecheria',8000);
INSERT INTO Empleado(Cedula,Nombre,Apellido,Direccion,Salario) 
VALUES(11000000,'Gabriela','Rosales','Iglesia San Jorge',8000);
