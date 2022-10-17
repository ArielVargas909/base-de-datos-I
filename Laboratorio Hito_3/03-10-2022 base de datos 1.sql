create database universidad;
use universidad;
create table escuela(
id_esc integer identity primary key not null,
nombre varchar (100) not null,
direccion varchar(100) not null
);

create table materias(
id_mat integer identity primary key not null,
nombre_mat varchar(100)not null,
cod_mat varchar(100) not null
);


create table periodo(
id_per integer identity primary key not null,
ano_gestion integer not null,
semestre varchar(50) not null
);                         

create table estudiantes909 (
id_est_cedula integer primary key not null,
nombres varchar (100) not null,
apellido varchar (100) not null,
genero varchar (10) not null,
direccion varchar (200) not null,
telefono integer not null,
email varchar (50) not null,
edad integer not null,
id_esc integer not null

foreign key(id_esc)references escuela (id_esc)
);

create table kardex(
id_kar integer primary key not null,
nota_num integer not null,
nota_alfabe varchar(100) not null,
estado varchar(10) not null,
id_mat integer not null,
id_est_cedula integer not null,
id_per integer not null

foreign key(id_mat)references materias(id_mat),
foreign key(id_est_cedula)references estudiantes909(id_est_cedula),
foreign key(id_per)references periodo(id_per)

);
drop table kardex;
drop table estudiantes;

select* from kardex;
select* from escuela;
select* from estudiantes909;
select* from materias;
select* from periodo;


INSERT INTO escuela (nombre, direccion) VALUES ('San Felipe Asturias II', 'Zona Illampu Av. Prol. San Lorenzo');






INSERT INTO estudiantes909 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc)
VALUES(6775644, 'Ximena', 'Arias Ballesteros', 'femenino', 'Av. 6 de Agosto', 79617575, 'xime@gmail.com', 25, 1);
INSERT INTO estudiantes909 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc) 
VALUES(6775655, 'Saul', 'Montes Valenzuela', 'masculino', 'Av. 6 de Agosto', 79617576, 'saul@gmail.com', 24, 1);
INSERT INTO estudiantes909 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc)
VALUES(6775666, 'Carla', 'Mavir Uria', 'femenino', 'Av. 6 de Agosto', 79617577, 'carla@gmail.com', 28, 1);
INSERT INTO estudiantes909 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc) 
VALUES(6775677, 'Joel', 'Castillo Fuentes', 'masculino', 'Av. 6 de Agosto', 79617578, 'joel@gmail.com', 21, 1);
INSERT INTO estudiantes909 (id_est_cedula, nombres, apellido, genero, direccion, telefono, email, edad, id_esc)
VALUES(6775688, 'Augusto', 'Copar Copar', 'femenino', 'Av. 6 de Agosto', 79617579, 'augusto@gmail.com', 20, 1);

select est.noombres, est.apellido,







INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Introduccion a la Arquitectura','ARQ-101');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Urbanismo y Diseno','ARQ-102');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Dibujo y Pintura Arquitectonico','ARQ-103');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Matematica discreta','ARQ-104');
INSERT INTO materias (nombre_mat, cod_mat) VALUES ('Fisica Basica','ARQ-105');






INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2016, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 1');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2017, 'Semestre 2');
INSERT INTO periodo (ano_gestion, semestre) VALUES (2018, 'Semestre 1');


insert into kardex(id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
values(1,51,'cincuenta y uno', 'aprobado',1,6775644,1);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
values(2,31,'treinta y uno', 'reprobado',2,6775655,2);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
values(3,61,'sesenta y uno', 'aprobado',3,6775666,3);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
values(4,41,'cuarenta y uno', 'reprobado',4,6775677,4);
insert into kardex (id_kar,nota_num,nota_alfabe,estado,id_mat,id_est_cedula,id_per)
values(5,81,'ochenta y uno', 'aprobado',5,6775688,5);



SELECT est.nombres, est.apellido
from estudiantes AS est
where est.edad>=24 AND est.genero = 'masculino';








SELECT est.nombres, est.apellido,kar.nota_num
FROM kardex AS kar, estudiantes AS est
WHERE kar.id_est_cedula = est.id_est_cedula AND
      kar.nota_num >= 51;




select per.semestre, est.edad
from estudiantes AS est, periodo As per
where est.id_est_cedula=6775688;


 select est.nombres, est.apellido, kar.nota_num
from estudiantes as est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num<51;

 select est.nombres, est.apellido, kar.nota_num,est.edad
from estudiantes as est
inner join kardex as kar on kar.id_est_cedula = est.id_est_cedula
where kar.nota_num<51 AND est.genero='masculino';


create table letras_A(
letras varchar (1) primary key 
);


create table letras_B(
letras2 varchar(1) primary key
);

select* from letras_A;
select* from letras_B;



insert into letras_A(letras)
values('D');
insert into letras_A(letras)
values('F');
insert into letras_A(letras)
values('H');
insert into letras_A(letras)
values('G');
insert into letras_A(letras)
values('E');

drop table letras_A;
drop table letras_B;



insert into letras_B(letras2)
values('A');
insert into letras_B(letras2)
values('B');
insert into letras_B(letras2)
values('E');
insert into letras_B(letras2)
values('H');
   
   
   select lA.letras, lB.letras2
   from letras_A as lA
   inner join letras_B as lB on lA.letras=lB.letras2;


   create table numeroA(
   numa integer
   );

    create table numeroB(
   numb integer
   );
  

  select* from numeroA;
  select* from numeroB;
  


 insert into numeroA(numa) values(1);
 insert into numeroA(numa) values(2);
 insert into numeroA(numa) values(3);
 insert into numeroA(numa) values(4);
 insert into numeroA(numa) values(5);
 insert into numeroA(numa) values(6);
 insert into numeroA(numa) values(7);


insert into numeroB(numb) values(4);
insert into numeroB(numb) values(6);
insert into numeroB(numb) values(8);
insert into numeroB(numb) values(9);
insert into numeroB(numb) values(7);
insert into numeroB(numb) values(5);
 
select na.numA,nb.numB
from numeroA as na
inner join numeroB as nb on na.numa = nb.numb;

select na.numA,nb.numB
from numeroA as na
inner join numeroB as nb on na.numa = nb.numb
where numa>5 and numb>5;

select na.numA,nb.numB
from numeroA as na
inner join numeroB as nb on na.numa = nb.numb
where numa>5;
create table paralelo1(
nota integer
);
create table paralelo2(
nota2 integer
);
create table paralelo3(
nota3 integer
);
 select*from paralelo1;
 select*from paralelo2;
 select*from paralelo3;

 insert into paralelo1(nota) values(51),(40),(60),(75),(30);
 insert into paralelo2(nota2) values(60),(51),(100);
 insert into paralelo3(nota3) values(20),(21),(23),(48),(51),(60);
 
 
 
 select na.numA,nb.numB
from numeroA as na
inner join numeroB as nb on na.numa = nb.numb;
 
 
 select pa1.nota,pa2.nota2,pa3.nota3
 from paralelo1 as pa1
 inner join paralelo2 as pa2 on pa1.nota=pa2.nota2
 inner join paralelo3 as pa3 on pa2.nota2=pa3.nota3;
 
 select pa1.nota,pa2.nota2,pa3.nota3
 from paralelo1 as pa1
 inner join paralelo2 as pa2 on pa1.nota=pa2.nota2
 inner join paralelo3 as pa3 on pa2.nota2=pa3.nota3
 where nota>50 and nota<100;
 
 
select pa1.nota,pa2.nota2,pa3.nota3
 from paralelo1 as pa1
 inner join paralelo2 as pa2 on pa1.nota=pa2.nota2
 inner join paralelo3 as pa3 on pa2.nota2=pa3.nota3
 where nota>50 and nota<100 and nota2>50 and nota2<100 and nota3>50 and nota3<100;


create table(

);

create table(

);


create table(

);


create table(

);


create table(

);
 select est.nombres, est.apellido,kar.nota_num,est.edad
from kardex as kar
inner join estudiantes909  as est on kar.id_est_cedula  = est.id_est_cedula
inner join materias as mat on kar.id_mat = mat.id_mat
where kar.nota_num>=51 and mat.nombre_mat='Fisica Basica';

 select est.nombres, est.apellido,kar.nota_num,est.edad
from kardex as kar
inner join estudiantes909  as est on kar.id_est_cedula  = est.id_est_cedula
where kar.nota_num>=51 and est.edad>25;


 select kar.id_est_cedula,per.semestre,per.ano_gestion
from kardex as kar
inner join periodo as per on kar.id_per = per.id_per
where kar.id_est_cedula='6775644';




