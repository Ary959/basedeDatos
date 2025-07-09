#Crear la base de datos renta de Autos
CREATE DATABASE RentaAutos;
USE RentaAutos;

#Crear Tabla Cliente 
CREATE TABLE Cliente
(
numCliente INT PRIMARY KEY,
nombre VARCHAR(20),
apellido1  VARCHAR(20),
CURP VARCHAR(20),
calle VARCHAR(50),
ciudad VARCHAR(50)
);

#Crear tabla Sucursal
CREATE TABLE Sucursal
(
numSucursal INT PRIMARY KEY,
nombre VARCHAR(20),
ubicacion VARCHAR(50),
ciudad VARCHAR(50),
colonia VARCHAR(50),
calle VARCHAR(20),
);

#Crear tabla Vehiculo
CREATE TABLE Vehiculo 
(
numVehiculo INT PRIMARY KEY,
numSucursal INT,
marca VARCHAR(20),
modelo VARCHAR(20),
color VARCHAR(20),
placas VARCHAR(20),
FOREIGN KEY (numSucursal) 
REFERENCES Sucursal(numSucursal)
);

# Crear Tabla Renta
CREATE TABLE Renta
(
numCliente INT,
numVehiculo INT,
fechaInicio Date,
fechaFin DATE,
lugarEntrega VARCHAR(50),
PRIMARY KEY (numCliente,numVehiculo,fechaInicio),
FOREIGN KEY (numCliente)
REFERENCES Cliente(numCliente),
FOREIGN KEY (numVehiculo) 
REFERENCES Vehiculo(numVehiculo)
);
