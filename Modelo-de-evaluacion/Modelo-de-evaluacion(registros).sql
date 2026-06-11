insert into clientes(Nombre,Apellido,correo,direccion)
values
('Agus','Fornite','soyagusfornai2008@gmail.com','elander4457'),
('Stiffy','Plug','meencantaelplug@gmail.com','laferrere6767'),
('Zell','Calvo','losñilfs@gmail.com','lapampa2345'),
('Elrafa','ElQuebrado','soyelrafaanakeve@yahoo.com','palermo69'),
('Pepu','Praim','SOYELPEPUREAL@hotmail.com','bochitadehelado40');

INSERT INTO Productos (nombre, descripcion, precio, stock) VALUES
('Teclado Mecánico', 'Teclado RGB switch azul', 45000.00, '9'),
('Mouse Gamer', 'Mouse óptico 12000 DPI', 25000.00, '123123'),
('Monitor 24"', 'Monitor Full HD 75Hz', 180000.00, '34'),
('Auriculares Inalámbricos', 'Auriculares con cancelacion ruido', 35000.00, '3'),
('Mouse Pad XL', 'Superficie de tela 90x40cm', 12000.00, '1');

INSERT INTO Pedidos (estado_pedido, fecha_pedido, id_cliente) VALUES
('Entregado', '2026-05-10', 1),
('Pendiente', '2026-06-01', 2),
('Cancelado', '2026-06-02', 3),
('En proceso', '2026-06-08', 4),
('Entregado', '2026-06-09', 1);
