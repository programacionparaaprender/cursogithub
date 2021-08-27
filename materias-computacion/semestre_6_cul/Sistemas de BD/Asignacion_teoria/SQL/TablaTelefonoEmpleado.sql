CREATE TABLE TelefonoE
(
Telefono varchar(20) not null
,Cedula int not null
,constraint pk_TelefonoE PRIMARY KEY(Telefono,Cedula)
,constraint fk_TelefonoE FOREIGN KEY(Cedula) references Empleado(Cedula)
);
INSERT INTO TelefonoE(Telefono,Cedula) 
VALUES('02812345880',10000000);
INSERT INTO TelefonoE(Telefono,Cedula)  
VALUES('02812345870',11000000);
