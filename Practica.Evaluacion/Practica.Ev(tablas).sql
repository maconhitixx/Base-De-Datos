CREATE DATABASE cartoon_network_universe;
USE cartoon_network_universe;

CREATE TABLE series (
    id_serie INT PRIMARY KEY,
    nombre_serie VARCHAR(100) NOT NULL,
    anio_estreno INT,
    creador VARCHAR(100)
);

CREATE TABLE personajes (
    id_personaje INT PRIMARY KEY,
    nombre_personaje VARCHAR(100) NOT NULL,
    id_serie INT,
    rol VARCHAR(50),
    nivel_energia INT,
    FOREIGN KEY (id_serie) REFERENCES series(id_serie)
);

CREATE TABLE episodios (
    id_episodio INT PRIMARY KEY,
    titulo_episodio VARCHAR(100),
    id_serie INT,
    duracion_minutos INT,
    rating_audiencia DECIMAL(3,1),
    FOREIGN KEY (id_serie) REFERENCES series(id_serie)
);

CREATE TABLE habilidades_especiales (
    id_habilidad INT PRIMARY KEY,
    id_personaje INT,
    nombre_habilidad VARCHAR(100),
    tipo_habilidad VARCHAR(50),
    FOREIGN KEY (id_personaje) REFERENCES personajes(id_personaje)
);

CREATE TABLE enemigos_historicos (
    id_rivalidad INT PRIMARY KEY,
    id_heroe INT,
    id_villano INT,
    encuentros_totales INT,
    FOREIGN KEY (id_heroe) REFERENCES personajes(id_personaje),
    FOREIGN KEY (id_villano) REFERENCES personajes(id_personaje)
);

CREATE TABLE objetos_misticos (
    id_objeto INT PRIMARY KEY,
    nombre_objeto VARCHAR(100),
    id_personaje_duenio INT,
    valor_subasta DECIMAL(12,2),
    FOREIGN KEY (id_personaje_duenio) REFERENCES personajes(id_personaje)
);
