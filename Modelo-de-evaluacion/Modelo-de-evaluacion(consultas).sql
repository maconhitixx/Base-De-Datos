-- aca seleccione los productos que valen mas de 50000 porque sino muestra todos los productos
-- consulta 1
select*from productos 
where precio > 50000;

-- consulta 2
SELECT *
FROM Clientes c
INNER JOIN Pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.Nombre, c.Apellido, c.correo, c.direccion;

-- Consulta 3

SELECT C.Nombre, C.Apellido, P.fecha_pedido
FROM clientes C
INNER JOIN pedidos P ON c.id_cliente = p.id_cliente
where p.estado_pedido = 'Entregado';

-- Consulta 4

SELECT P.estado_pedido, C.correo
from clientes c
inner join pedidos p on c.id_cliente = p.id_cliente;

-- Consulta 5

SELECT c.Nombre, c.Apellido, max(p.fecha_pedido)
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente;

-- Consulta 6

SELECT c.Nombre, c.Apellido, p.fecha_pedido, p.estado_pedido
FROM clientes c
inner join pedidos p on c.id_cliente = p.id_cliente
where p.estado_pedido = 'Pendiente';


-- Consulta 7

SELECT nombre, MAX(precio)
FROM Productos