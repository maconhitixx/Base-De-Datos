create database tienda;


use tienda;


create table productos
(
	id_producto int primary key auto_increment,
    nombre varchar(50) not null,
    descripcion varchar(40),
    precio decimal(10,2),
    stock int
);


create table clientes
(
	id_cliente int primary key auto_increment,
    Nombre varchar(50),
    Apellido varchar(50),
    correo varchar(50),
    direccion varchar(50)
);

create table pedidos
(
	id_pedido int primary key auto_increment,
	id_cliente int,
    fecha_pedido date,
    estado_pedido varchar(50),
    foreign key (id_cliente) references clientes(id_cliente)
);
