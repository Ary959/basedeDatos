-- Crear la base de Datos Empresa;
CREATE DATABASE Empresa;
USE Empresa;

--Crear Tabla Employee

CREATE TABLE EMPLOYEE (
ssn INT PRIMARY KEY,
firstname VARCHAR(20),
lastname VARCHAR(20),
address VARCHAR(100) NOT NULL,
birthdate DATE NOT NULL,
salary MONEY NOT NULL, 
sex VARCHAR(20),
numberdepto INT,
supervisor VARCHAR(20)
);
GO
--Crear Tabla Department
CREATE TABLE Department 
(
numberDepartment INT PRIMARY KEY,
nameDepartment VARCHAR(20),
ssn Int,
startDate DATE,
FOREIGN KEY (ssn)
REFERENCES Employee(ssn)
);
GO
--Tabla Project
CREATE TABLE Project
(
numberProject INT PRIMARY KEY,
nameProject VARCHAR(30),
location VARCHAR(30),
numberdeport  INT,
FOREIGN KEY (numberdeport)
REFERENCES Department(numberdepartment)
);

--Tabla Dependent

CREATE TABLE Dependent (
ssn INT,
name VARCHAR(20),
relationship VARCHAR(10),
birthdate DATE,
FOREIGN KEY (ssn)
REFERENCES Employee(ssn)
);
GO
--Tabla DeptoLocation
CREATE TABLE DeptLocation 
(
numberDeport INT,
Dlocation VARCHAR(50),
FOREIGN KEY (numberdeport) 
REFERENCES Department(numberDepartment)
);
GO

--Tabla WorkOn
CREATE TABLE WorkOn
(
ssn INT,
numberProject Int,
hours INT,
PRIMARY KEY(ssn,numberProject),
FOREIGN KEY(ssn)
REFERENCES Employee(ssn),
FOREIGN KEY(numberProject) 
REFERENCES Project(numberProject)
);
GO





