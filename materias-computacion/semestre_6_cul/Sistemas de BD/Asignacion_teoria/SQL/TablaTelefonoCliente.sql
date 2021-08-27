CREATE TABLE TelefonoC
(
Telefono varchar(20) not null
,Cedula int not null
,constraint pk_TelefonoC PRIMARY KEY(Telefono,Cedula)
,constraint fk_TelefonoC FOREIGN KEY(Cedula) references Cliente(Cedula)
);
INSERT INTO TelefonoC(Telefono,Cedula)
VALUES('02812389456',19888888);
INSERT INTO TelefonoC(Telefono,Cedula)
VALUES('02812345861',19888889);
INSERT INTO TelefonoC(Telefono,Cedula)
VALUES('02812345862',19888887);
INSERT INTO TelefonoC(Telefono,Cedula)
VALUES('02812342863',21888887);
INSERT INTO TelefonoC(Telefono,Cedula)
VALUES('02818488787',12342161);
INSERT INTO TelefonoC(Telefono,Cedula)
VALUES('02812320191',21808880);
