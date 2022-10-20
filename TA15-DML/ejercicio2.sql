DROP DATABASE IF EXISTS piezaProveedor;
CREATE DATABASE piezaProveedor;

USE piezaProveedor;

DROP TABLE IF EXISTS piezas;

CREATE TABLE piezas (
  codigo int NOT NULL AUTO_INCREMENT,
  nombre varchar(100) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

DROP TABLE IF EXISTS proveedores;

CREATE TABLE proveedores (
  id int NOT NULL AUTO_INCREMENT,
  nombre varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS suministra;

CREATE TABLE suministra (
  codigoPieza int NOT NULL,
  idProveedor int NOT NULL,
  precio int DEFAULT NULL,
  PRIMARY KEY (codigoPieza,idProveedor),
  FOREIGN KEY (codigoPieza) REFERENCES piezas (codigo) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (idProveedor) REFERENCES proveedores (id) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

-- INSERCION DE DATOS --

insert into piezas (nombre) values
	("Pieza1"),
    ("Pieza2"),
    ("Pieza3"),
    ("Pieza4"),
    ("Pieza5"),
    ("Pieza6"),
    ("Pieza7"),
    ("Pieza8"),
    ("Pieza9"),
    ("Pieza10");
    
insert into proveedores (nombre) values
	("Proveedor1"),
    ("Proveedor2"),
    ("Proveedor3"),
    ("Proveedor4"),
    ("Proveedor5"),
    ("Proveedor6"),
    ("Proveedor7"),
    ("Proveedor8"),
    ("Proveedor9"),
    ("Proveedor10");
    
insert into suministra (codigoPieza, idProveedor, precio) values
	(1, 1, 10),
    (2, 2, 20),
    (3, 3, 30),
    (4, 4, 40),
    (5, 5, 50),
    (6, 6, 60),
    (7, 7, 70),
    (8, 8, 80),
    (9, 9, 90),
    (10, 10, 100);