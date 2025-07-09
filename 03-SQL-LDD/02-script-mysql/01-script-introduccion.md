```sql
-Lenguaje SQL-LDD( create,alter,drop)

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

--creacion de primary keys compuestas

CREATE TABLE Tabla1
(
Tabla1id1 int not null,
Tabla1id2  int not null,
Nombre nvarchar(20)not null,
CONSTRAINT pk_Tabla1
PRIMARY KEY (Tabla1id1,Tabla1id2)
);
GO

--Rzon de cardinalidad 1:N 
CREATE TABLE tabla2(
Tabla2id int not null identity(1,1),
Nombre varchar(20),
Tabla1id1 int,
Tabla1id2 int,
CONSTRAINT pk_tabla2
PRIMARY KEY(Tabla2id),
CONSTRAINT fk_tabla2_tabla1
FOREIGN KEY (Tabla1id1,Tabla1id2)
REFERENCES tabla1(Tabla1id1,Tabla1id2)
);
go
--Razon de cardinalidad 1:1 (Fidelidad)
CREATE TABLE Employee
(
id int not null identity(1,1),
Nombre varchar(20) not null,
Ap1 varchar(15) not null,
Ap2 varchar(15),
sexo char(1) not null,
Salario money not null,
CONSTRAINT pk_employee
PRIMARY KEY(Id),
CONSTRAINT chk_Sexo2
CHECK(sexo in ('M','F')),
CONSTRAINT chk_salario
CHECK(Salario>0.0)

);
GO

CREATE TABLE Department
(
Id int not null identity(1,1),
NombreProyecto varchar(20) not null,
Ubicacion varchar(15) not null,
FechaInicio date not null,
IdEmployee int not null,
CONSTRAINT pk_department
PRIMARY KEY(Id),
CONSTRAINT unique_nombreproyecto
UNIQUE(NombreProyecto),
CONSTRAINT unique_idemployee
UNIQUE(IdEmployee),
CONSTRAINT fk_department_employee
FOREIGN KEY(IdEmployee)
REFERENCES Employee(Id)

);

go

CREATE TABLE Project
(
ProjectId int not null,
Nombre varchar(20)
CONSTRAINT pk_projectid
PRIMARY KEY  (ProjectId),
);

CREATE TABLE  Work_On 
(
ProjectId int not null,
IdEmployee int not null,
CONSTRAINT pk_tableWorkOn
PRIMARY KEY (ProjectId,IdEmployee),
CONSTRAINT pk_projectid
FOREIGN KEY (projectid)
REFERENCES (ProjectId),
CONSTRAINT pk_IdEmployee
FOREIGN KEY(IdEmployee)







);
go

--Razon de Cardinalidad M:N 
CREATE TABLE Proyect(
proyectid int not null identity(1,1),
NameProyect varchar(20) not null,
CONSTRAINT pk_proyect
PRIMARY KEY(
```