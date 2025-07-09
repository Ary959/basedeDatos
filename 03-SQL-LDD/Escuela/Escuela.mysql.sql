# Crear la Base de Datos Escuela

CREATE DATABASE Escuela;
USE Escuela;

#Tabla Estudiante 
CREATE TABLE Estudiante 
(
numEstudiante INT PRIMARY KEY,
numMatricula INT,
nombrePila VARCHAR(20),
apellido1 VARCHAR(20),
apellido2 VARCHAR(20)
);

CREATE TABLE Curso (
numCurso INT PRIMARY KEY,
nombre VARCHAR(20),
codigo VARCHAR(20)
);

#Tabla Inscripcion
CREATE TABLE Inscripcion (
numEstudiante INT,
numCurso INT,
fechaInscripcion DATE,
PRIMARY KEY (numEstudiante,numCurso),
FOREIGN KEY(numEstudiante) 
REFERENCES Estudiante(numEstudiante),
FOREIGN KEY(numCurso) 
REFERENCES Curso(numCurso)
);

