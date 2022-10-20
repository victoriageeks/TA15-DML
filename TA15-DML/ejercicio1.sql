CREATE SCHEMA Directores_t14_7;
USE Directores_t14_7;
CREATE TABLE Despachos(
numero INT NOT NULL AUTO_INCREMENT,
capacidad INT,
KEY(numero)
);
CREATE TABLE Directores(
dni VARCHAR(8),
nombre_apellidos VARCHAR(255),
dni_jefe VARCHAR(8),
despacho INT,
KEY(dni),
FOREIGN KEY (dni_jefe) REFERENCES Directores(dni),
FOREIGN KEY (despacho) REFERENCES Despachos(numero)
);

USE directores_t14_7;
INSERT INTO despachos(capacidad) VALUES(20);
INSERT INTO despachos(capacidad) VALUES(6);
INSERT INTO despachos(capacidad) VALUES(7);
INSERT INTO despachos(capacidad) VALUES(10);
INSERT INTO despachos(capacidad) VALUES(21);
INSERT INTO despachos(capacidad) VALUES(16);
INSERT INTO despachos(capacidad) VALUES(30);
INSERT INTO despachos(capacidad) VALUES(20);
INSERT INTO despachos(capacidad) VALUES(56);
INSERT INTO despachos(capacidad) VALUES(50);

INSERT INTO directores(dni,nombre_apellidos,despacho) VALUES("23456789","Ramon el del Barco",1);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("12345678","Juansito Perez","23456789",7);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("34567891","Rosalva Loza","23456789",6);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("45678912","Joaquin Villalba","12345678",3);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("56789123","Joqui Juarez","45678912",2);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("67891234","Sofia Luna","56789123",4);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("78912345","Marta Marita","45678912",5);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("89123456","Julio Boca","78912345",5);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("91234567","Nome Sale","89123456",1);
INSERT INTO directores(dni,nombre_apellidos,dni_jefe,despacho) VALUES("01234567","Yano SemeOcurre","34567891",8);