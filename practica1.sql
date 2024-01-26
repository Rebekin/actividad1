create database TechSolutionss;

use TechSolutionss;

create table cargos(
id_cargo int primary key auto_increment,
nombre_cargo varchar(25)
);

create table Empleados(
id_empleado int  primary key auto_increment,
nombre varchar(25),
Apellido varchar(25),
FechaInicio date,
id_cargo int,
id_departamento int,
constraint fk_cargo foreign key(id_cargo) references cargos(id_cargo),
constraint fk_departamento foreign key(id_departamento) references Departamentos(id_departamento)
);

create table Departamentos(
id_departamento int primary key auto_increment,
nombre_departamento varchar(20)
);



create table proyectos(
id_proyecto int primary key auto_increment,
nombre_proyecto varchar(35)
);

create table DetalleProyectos(
id_detalleProyecto int primary key auto_increment,
id_proyecto int,
id_departamento int,
constraint fk_proyecto foreign key(id_proyecto) references Proyectos(id_proyecto),
constraint fk_departamento foreign key(id_departamento) references Departamentos(id_departamento)
);

select * from Empleados