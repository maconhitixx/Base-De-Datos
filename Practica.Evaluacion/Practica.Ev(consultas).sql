-- Consulta 1
SELECT nombre_serie, Creador
FROM Series
ORDER BY nombre_serie ASC;

-- Consulta 2
SELECT nombre_personaje, rol
FROM Personajes
WHERE nombre_personaje LIKE 'B%'
OR nombre_personaje LIKE 'F%';

-- Consulta 3
SELECT *
FROM Episodios
WHERE duracion_minutos > 11
AND rating_audiencia > 8.5;

-- Consulta 4
SELECT *
FROM objetos_misticos
WHERE nombre_objeto LIKE '%Espada%'
OR nombre_objeto LIKE '%Anillo%';

-- Consulta 5
SELECT
MIN(nivel_energia) AS energia_minima,
MAX(nivel_energia) AS energia_maxima
FROM personajes
WHERE rol= 'Antagonista';

-- Consulta 6
SELECT
tipo_habilidad,
COUNT(*) AS cantidad
FROM habilidades_especiales
GROUP BY tipo_habilidad;

-- Consulta 7
SELECT
nombre_personaje,nivel_energia
FROM personajes
ORDER BY nivel_energia DESC, nombre_personaje ASC;

-- Consulta 8
SELECT
id_personaje_duenio,
SUM(valor_subasta) AS total_recaudado
FROM objetos_misticos
WHERE valor_subasta > 5000
GROUP BY id_personaje_duenio
ORDER BY total_recaudado DESC;

-- Consulta 9
SELECT
id_serie,
AVG(rating_audiencia) AS promedio_rating
FROM episodios
GROUP BY id_serie
HAVING AVG(rating_audiencia) > 7.5;


-- Consulta 10

SELECT
id_serie,
COUNT(*) AS cantidad_personajes
FROM personajes
WHERE nivel_energia > 50
GROUP BY id_serie;

-- Consulta 11
SELECT
AVG(e.duracion_minutos) AS promedio_duracion
FROM episodios e
INNER JOIN series s ON e.id_serie = s.id_serie
WHERE s.anio_estreno > 2010;

-- Consulta 11
SELECT id_personaje, COUNT(*) AS cantidad_habilidades
FROM habilidades_especiales
GROUP BY id_personaje
HAVING COUNT(*) > 3;

-- Consulta 12
SELECT * FROM enemigos_historicos
WHERE encuentros_totales > 15
ORDER BY encuentros_totales DESC;

-- Consulta 13

SELECT
id_personaje_duenio, MAX(valor_subasta) AS objeto_mas_costoso
FROM objetos_misticos
GROUP BY id_personaje_duenio
HAVING MAX(valor_subasta) > 100000;

-- Consulta 14
SELECT
id_serie, COUNT(*) AS cantidad_episodios
FROM episodios
GROUP BY id_serie
ORDER BY cantidad_episodios DESC;