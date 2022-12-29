drop database crud22566;

create database crud22566;
use crud22566;

set sql_mode = "NO_AUTO_VALUE_ON_ZERO";
START transaction;
SET TIME_ZONE = "+00:00";

create table socios (
idSocio int(11) not null auto_increment,
nombre varchar(40) not null,
apellido varchar(40) not null,
direccion varchar(40) not null,
localidad varchar(40) not null,
fnac date not null,
email varchar (25) not null unique,
telefono varchar(25) not null,
activo boolean not null,
primary key(idSocio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into socios values (
1,'Cecilia','Perez','Sarmiento 644 14A','Cordoba', '1991-02-14', 'cecilia@gmail.com','3512879809', true 
);

insert into socios values (
2,'Manuel','Juarez','Urquiza 1122','Cordoba', '1982-04-03', 'manuel.j@gmail.com','351767899', true 
);

insert into socios values (
3, 'Jose', 'Martinez', 'Isabel La Católica 3257', 'Cordoba', '1999-09-21', 'martinez.theboy@gmail.com','0116789493', true
);

insert into socios values (
4, 'Abigail', 'Jason', 'Cervantes 756', 'Neuquen', '1991-06-01', 'abi.jason@gmail.com','45465768', true
);

insert into socios values (
5, 'Maria', 'Russo', 'Fragueiro 3490', 'Salta', '1989-07-22', 'russo.streams@gmail.com','98908656', true
);

insert into socios values (
6, 'Marcelo', 'Marchesi', 'Colon 57', 'Cordoba', '1983-01-04', 'elmejorprimo@gmail.com','3517878909', true
);

insert into socios values (
7, 'Kieron', 'Baden', 'Argelia 3909 piso 9', 'Buenos Aires', '1993-03-11', 'kieron.b@gmail.com','0117897453', true
);

insert into socios values (
8, 'Natalia', 'Funes', 'Pitagoras 43', 'Mendoza', '1992-10-01', 'nat.funes@gmail.com','978954534', true
);

insert into socios values (
9, 'Helena', 'Torres', 'Arquimedes 970', 'Cordoba', '2000-06-06', 'helen.oftroy@gmail.com','878534213', true
);

insert into socios values (
10, 'Morena', 'Reartes', 'Callao 7675', 'Buenos Aires', '1998-08-22', 'more.thegirl@gmail.com','0115646890', true
);

select * from socios;

insert into socios values (
11, 'Alina', 'Reed', 'Martin Garcia 809', 'Mendoza', '1958-07-22', 'alina.r@gmail.com','94892309', true
);

insert into socios values (
20, 'Anastasia', 'Mónaco', 'Eriberto Garcia 89', 'Córdoba', '1998-04-22', 'anastasia@gmail.com','867864538', true
);
