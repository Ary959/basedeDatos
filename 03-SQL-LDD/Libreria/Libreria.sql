--Crear Base de datos Libreria

CREATE DATABASE Libreria;

USE  Libreria;

--Crear tabla Lector
CREATE TABLE Lector 
(
numLector INT PRIMARY KEY,
nombre VARCHAR(20),
apellido1 VARCHAR(20),
apellido2 VARCHAR(20),
numMembresia INT
);
GO

--Crear tabla Libro
CREATE TABLE Libro
(
numLibro INT PRIMARY KEY,
titulo VARCHAR(50),
autor VARCHAR(50),
ISBN INT
);
GO
 --Crear Tabla Presta 
 CREATE TABLE Presta
 (
 numLibro INT,
 numLector INT,
 PRIMARY KEY (numLibro, numLector),
 FOREIGN KEY(numLibro)
 REFERENCES Libro(numLibro),
 FOREIGN KEY (numLector) REFERENCES Lector(numLector)
 );

 GO
