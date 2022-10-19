create database unifranzitos;
use unifranzitos;
create table campeonato(
id_campeonato varchar(12) primary key not null,
nombre_campeonato varchar(30) not null,
sede varchar(20)
);

create table equipo(
id_equipo varchar(12) primary key not null,
nombre_equipo varchar(30) not null,
categoria varchar(8) not null,
id_campeonato varchar(12),
foreign key(id_campeonato)references campeonato(id_campeonato)
);

create table jugador(
id_jugador varchar(12) primary key not null,
nombres varchar(30) not null,
apellidos varchar(50)not null,
ci varchar(15) not null,
edad integer,
id_equipo varchar(12)
foreign key(id_equipo)references equipo(id_equipo)
);
create table enlace(
id_campeonato varchar(12) not null,
id_equipo varchar(12)not null,
id_jugador varchar(12) not null,
foreign key(id_campeonato)references campeonato(id_campeonato),
foreign key(id_equipo)references equipo(id_equipo),
foreign key(id_jugador)references jugador(id_jugador)
);
select* from campeonato;
select* from equipo;
select* from jugador;

insert into campeonato(id_campeonato,nombre_campeonato,sede)
values
('camp-111','Campeonato Unifranz','El Alto'),
('camp-222','Campeonato Unifranz','Cochabamba')

insert into equipo(id_equipo,nombre_equipo,categoria,id_campeonato)
values
('equ-111','Google','VARONES','camp-111'),
('equ-222','404 Not found','VARONES','camp-111'),
('equ-333','girls unifranz','MUJERES','camp-111')

insert into jugador(id_jugador,nombres,apellidos,ci,edad,id_equipo)
values
('jug-111','Carlos','Villa','8997811LP',19,'equ-222'),
('jug-222','Pedro','Salas','8997822LP',20,'equ-222'),
('jug-333','Saul','Araj','8997833LP',21,'equ-222'),
('jug-444','Sandra','Solis','8997844LP',20,'equ-333'),
('jug-555','Ana','Mica','8997855LP',23,'equ-333')


select jug.nombres,jug.apellidos
from jugador as jug
inner join equipo as equ on jug.id_equipo=equ.id_equipo
where jug.id_equipo='equ-222'

select jug.nombres,jug.apellidos
from jugador as jug
inner join equipo as equ on jug.id_equipo=equ.id_equipo
inner join campeonato as cam on equ.id_campeonato=cam.id_campeonato
where cam.sede='El Alto'

select jug.nombres,jug.edad
from jugador as jug
inner join equipo as equ on jug.id_equipo=equ.id_equipo
where jug.edad>=21 and equ.categoria='VARONES'

select jug.nombres
from jugador as jug
where jug.nombres like '[S]%'

select equ.nombre_equipo
from equipo as equ
inner join campeonato as cam on equ.id_campeonato=cam.id_campeonato
where equ.id_campeonato='camp-111' and equ.categoria='MUJERES'

select equ.nombre_equipo
from equipo as equ 
inner join jugador as jug on jug.id_equipo=equ.id_equipo
where jug.id_jugador='jug-333'

select cam.nombre_campeonato
from campeonato as cam
inner join equipo as equ on cam.id_campeonato=equ.id_campeonato
inner join jugador as jug on equ.id_equipo=jug.id_equipo
where jug.id_jugador='jug-333'	

select count(*)
from equipo as equ
select count(*)
from equipo as equ
inner join jugador as jug on equ.id_equipo=jug.id_equipo
where categoria='VARONES'
select count(*)
from equipo as equ
inner join jugador as jug on equ.id_equipo=jug.id_equipo
where categoria='MUJERES'
