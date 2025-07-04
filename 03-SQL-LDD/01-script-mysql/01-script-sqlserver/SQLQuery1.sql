--Lenguaje SQL-LDD( create,alter,drop)

--Crear la base de datos empresag2
CREATE DATABASE empresag2;
GO 
-- Utilizar la base de datos 
USE empresag2;
--Crear la tabla categoria

CREATE TABLE Categorias
(
	Categoriaid int primary key,
	nombrecategoria nvarchar(30) not null unique
);

GO

--Crear tabla Empleado
CREATE TABLE Empleado
(
  EmpleadoId int not null identity(1,1),
  Nombre nvarchar(20) not null,
  ApellidoPaterno nvarchar(15) not null,
  curp char(18) not null,
  telefono char(15)null,
  sexo char(1)not null,
  activo bit not null,
  CONSTRAINT pk_empleado 
  PRIMARY KEY (EmpleadoId),
  CONSTRAINT unique_curp
  UNIQUE(curp),


);
GO




