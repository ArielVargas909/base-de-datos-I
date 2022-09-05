create database tarea;
use tarea;
CREATE TABLE consecionario(
nombre varchar(20) PRIMARY KEY,
ciudad varchar(20),
ubicacion varchar(50),
numero_de_local integer
);
select* from consecionario;
insert into consecionario(nombre,ciudad,ubicacion,numero_de_local)
values('CN PREDITO','La Paz','AV. Costanera',2910);


CREATE TABLE cliente1(
nombre varchar(20),
apellidos varchar(20),
CI varchar(20) PRIMARY KEY,
ciudad_de_procedencia varchar(20),
ocupacion varchar(50),
);
select* from cliente1;
insert into cliente1(nombre,apellidos,CI,ciudad_de_procedencia,ocupacion)
values('Tomas','Valdez Nu�es','235678 LP','El Alto','Medico Cirujano');
select* from cliente1;
insert into cliente1(nombre,apellidos,CI,ciudad_de_procedencia,ocupacion)
values('Javier','Herrera Gomez','129744 LP','La Paz','Arquitecto');
select* from cliente1;
insert into cliente1(nombre,apellidos,CI,ciudad_de_procedencia,ocupacion)
values('Juan','Mamani Peres','2674588 SC','Cochabamba','ingeniero');

create table venta_de_vehiculo(
nombre varchar(20),
CI varchar(20),
cod_vehiculo integer PRIMARY KEY,
modelo varchar(30),
precio varchar(50),
color varchar(20),

FOREIGN KEY (nombre) REFERENCES consecionario (nombre),
FOREIGN KEY (CI) REFERENCES cliente1 (CI)
);



select* from venta_de_vehiculo;
insert into venta_de_vehiculo(cod_vehiculo,modelo,precio,color)
values(25089,'HONDA CIVIC','35.000$','negro metalico');

CREATE TABLE cliente2(
nombre varchar(20),
apellidos varchar(20),
CI varchar(20) PRIMARY KEY,
ciudad_de_procedencia varchar(20),
ocupacion varchar(50),
);
select* from cliente2;
insert into cliente2(nombre,apellidos,CI,ciudad_de_procedencia,ocupacion)
values('Javier','Herrera Gomez','129744 LP','La Paz','Arquitecto');


create table venta_de_vehiculo2(
nombre varchar(20),
CI varchar(20),
cod_vehiculo integer PRIMARY KEY,
modelo varchar(30),
precio varchar(50),
color varchar(20),

FOREIGN KEY (nombre) REFERENCES consecionario (nombre),
FOREIGN KEY (CI) REFERENCES cliente2 (CI)
);
CREATE TABLE cliente3(
nombre varchar(20),
apellidos varchar(20),
CI varchar(20) PRIMARY KEY,
ciudad_de_procedencia varchar(20),
ocupacion varchar(50),
);
select* from cliente3;
insert into cliente3(nombre,apellidos,CI,ciudad_de_procedencia,ocupacion)
values('Juan','Mamani Peres','2674588 SC','Cochabamba','ingeniero');


create table venta_de_vehiculo3(
nombre varchar(20),
CI varchar(20),
cod_vehiculo integer PRIMARY KEY,
modelo varchar(30),
precio varchar(50),
color varchar(20),

FOREIGN KEY (nombre) REFERENCES consecionario (nombre),
FOREIGN KEY (CI) REFERENCES cliente1 (CI)
);
