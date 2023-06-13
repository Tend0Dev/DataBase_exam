create database tienda;

use tienda;

create table fabricante (
id_fabricante int,
nombre varchar(45),
primary key (id_fabricante)
);
-- se me olvido agregar el auto increment
alter table fabricante modify column id_fabricante int auto_increment;

insert into fabricante (nombre) values ('Asus');
insert into fabricante (nombre) values ('Lenovo');
insert into fabricante (nombre) values ('Hewlett-Packard');
insert into fabricante (nombre) values ('Samsung');
insert into fabricante (nombre) values ('Seagate');
insert into fabricante (nombre) values ('Crucial');
insert into fabricante (nombre) values ('Gigabyte');

 
create table productos (
id_producto int not null auto_increment,
nombre varchar(45) not null,
precio double not null,
creado_por int not null,

primary key (id_producto),
foreign key (creado_por) references fabricante (id_fabricante)
);

insert into productos (nombre, precio, creado_por)
values
	('Disco duro SATA3 1TB', 86.99, 5),
    ('Memoria RAM DDR4 8GB', 120, 6),
	('Disco SSD 1 TB', 150.99, 4),
	('GeForce GTX 1050Ti', 185, 7),
    ('GeForce GTX 1080 Xtreme', 755, 6),
    ('Monitor 24 LED Full HD', 202, 1),
    ('Monitor 27 LED Full HD', 245.99, 1),
    ('Portátil Yoga 520', 559, 2),
    ('Portátil Ideapd 320', 444, 2),
    ('Impresora HP Deskjet 3720', 59.99, 3),
    ('Impresora HP Laserjet Pro M26nw', 180, 3);
    
    
-- 1
select nombre from productos;

-- 2 
select nombre, precio from productos;

-- 3 
select nombre, precio  from productos where precio < 100;

-- 4 
 select nombre, precio from productos where precio > 100 ;

-- 5
select nombre from productos where nombre like 'M%';
select nombre from productos where nombre like 'P%';