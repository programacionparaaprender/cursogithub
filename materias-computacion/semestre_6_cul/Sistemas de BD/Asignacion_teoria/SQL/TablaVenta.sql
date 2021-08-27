CREATE TABLE Venta
(
Fecha datetime not null
,CedulaC int not null
,CedulaE int not null
,Codigo varchar(20) not null
,Pago real not null
,constraint pk_Fecha PRIMARY KEY (Fecha,CedulaC,CedulaE,Codigo)
,constraint fk_CedulaC FOREIGN KEY(CedulaC) references Cliente(Cedula)
,constraint fk_CedulaE FOREIGN KEY(CedulaE) references Empleado(Cedula)
,constraint fk_Codigo FOREIGN KEY(Codigo) references CD(Codigo)
);
INSERT INTO Venta(Fecha,CedulaC,CedulaE,Codigo,Pago) 
VALUES(12/03/13,19888888,10000000,'123',300);
INSERT INTO Venta(Fecha,CedulaC,CedulaE,Codigo,Pago) 
VALUES(12/03/13,19888889,10000000,'123',300);
INSERT INTO Venta(Fecha,CedulaC,CedulaE,Codigo,Pago) 
VALUES(12/03/13,19888887,10000000,'123',300);
INSERT INTO Venta(Fecha,CedulaC,CedulaE,Codigo,Pago) 
VALUES(12/03/13,21888887,10000000,'125',300);
INSERT INTO Venta(Fecha,CedulaC,CedulaE,Codigo,Pago) 
VALUES(12/03/13,12342161,11000000,'125',300);
INSERT INTO Venta(Fecha,CedulaC,CedulaE,Codigo,Pago) 
VALUES(12/03/13,21808880,11000000,'125',300);
