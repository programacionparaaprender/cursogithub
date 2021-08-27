use Tienda;
CREATE TABLE CD
(
Codigo varchar(20) not null
,Nombre varchar(50) not null
,Precio real not null
,constraint pk_Codigo PRIMARY KEY(Codigo)
);
INSERT INTO CD(Codigo,Nombre,Precio)
VALUES('123','Guitarra Electrica',300);
INSERT INTO CD(Codigo,Nombre,Precio)
VALUES('124','Violin',300);
INSERT INTO CD(Codigo,Nombre,Precio)
VALUES('125','Cuatro',300);
