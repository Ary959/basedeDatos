--Crear Base de Datos Hospital
CREATE DATABASE Hospital;

USE Hospital

--Crear tabla Doctores 
CREATE TABLE Doctores 
(
numDoctor INT PRIMARY KEY,
nombreP VARCHAR(20),
apellido1 VARCHAR(20),
apellido2 VARCHAR(20),
numCedula INT
);
GO
--Tabla Paciente
CREATE TABLE Paciente 
(
numPaciente INT PRIMARY KEY,
Diagnostico VARCHAR(100),
nombreP VARCHAR(20),
apellido1 VARCHAR(20),
apellido2 VARCHAR(20)
);

CREATE TABLE Atender 
(
numDoctor INT, 
numPaciente INT,
fechaConsulta DATE,
Diagnostico VARCHAR(100),
PRIMARY KEY(numDoctor,numPaciente, fechaConsulta),
FOREIGN KEY (numDoctor) 
REFERENCES Doctores(numDoctor),
FOREIGN KEY (numPaciente)
REFERENCES Paciente(numPaciente)
);