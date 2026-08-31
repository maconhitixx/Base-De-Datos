create database EcoMove;
use EcoMove;

create table Organizaciones(
	id_organizacion int primary key auto_increment,
	Nombre varchar(30)
);




create table Vehiculos(
	id_vehiculo int primary key auto_increment,
    id_organizacion int,
    
    foreign key (id_organizacion) references Organizaciones(id_organizacion)
);




create table Tecnicos(
	id_tecnico int primary key auto_increment,
    Nombre varchar(25),
    Tipo_servicio varchar(30),
    id_organizacion int,
    
    foreign key (id_organizacion) references Organizaciones(id_organizacion)
);


create table Revisiones(
	id_revision int primary key auto_increment,
    id_vehiculo int,
    id_tecnico int,
    Costo decimal (9,2),
    fecha date,
    estado_vehiculo varchar(30),
    niv_bateria INT,
    foreign key (id_vehiculo) references Vehiculos(id_vehiculo),
    foreign key (id_tecnico) references Tecnicos(id_tecnico)
);

create table PiezasRemplazadas(
	id_piezaremp int primary key auto_increment,
    id_revision int,
    Nombre varchar(30),
    
    foreign key (id_revision) references Revisiones(id_revision)
);


INSERT into Organizaciones(nombre) values
('JohnyCorp'),
('Remax'),
('PedidoPlus'),
('PedidosMenos');

INSERT into Vehiculos(id_organizacion) values
('1'),
('3'),
('4');

INSERT INTO Tecnicos(Nombre,Tipo_Servicio,id_organizacion) Values
('Jmala','Preventivo','1'),
('Pablo','Correctivo','3'),
('Johny','Preventivo','4');

INSERT INTO Revisiones(id_vehiculo,id_tecnico,costo,fecha,estado_vehiculo,niv_bateria) Values
('2','3','2000','1/1/2001','Bien','60'),
('3','1','10000','5/8/2010','Dañado','90'),
('3','2','1000','5/12/2020','Perfecto','67');

INSERT INTO PiezasRemplazadas(id_revision,Nombre)  Values
('2','Carburador'),
('2','Radiador'),
('1' ,'Motor');


Select o.Nombre, v.id_vehiculo
from Organizaciones o
inner join Vehiculos v ON id_organizacion = id_organizacion
inner join 


Select o.Nombre, v.id_vehiculo
from Organizaciones o
inner join Vehiculos v ON id_organizacion = id_organizacion
where vehiculo(select avg(niv_bateria) from )







