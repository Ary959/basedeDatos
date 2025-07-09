--Lenguaje SQL-LDD( create,alter,drop)

--Crear la base de datos empresag2
CREATE DATABASE empresag2;


-- Utilizar la base de datos 
USE empresag2;
#Crear la tabla categoria

CREATE TABLE Categorias
(
	Categoriaid int primary key,
	nombrecategoria nvarchar(30) not null unique
);



#Crear tabla Empleado
CREATE TABLE Empleado
(
  EmpleadoId int not null auto_increment ,
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

  ;
  #creacion de primary keys compuestas

CREATE TABLE Tabla1
(
Tabla1id1 int not null,
Tabla1id2  int not null,
Nombre nvarchar(20)not null,
CONSTRAINT pk_Tabla1
PRIMARY KEY (Tabla1id1,Tabla1id2)
);

  #Razon de cardinalidad 1:N 
CREATE TABLE tabla2(
Tabla2id int not null auto_increment,
Nombre varchar(20),
Tabla1id1 int,
Tabla1id2 int,
CONSTRAINT pk_tabla2
PRIMARY KEY(Tabla2id),
CONSTRAINT fk_tabla2_tabla1
FOREIGN KEY (Tabla1id1,Tabla1id2)
REFERENCES tabla1(Tabla1id1,Tabla1id2)
);






#creacion de primary keys compuestas

CREATE TABLE Tabla1
(
Tabla1id1 int not null,
Tabla1id2  int not null,
Nombre nvarchar(20)not null,
CONSTRAINT pk_Tabla1
PRIMARY KEY (Tabla1id1,Tabla1id2)
);







