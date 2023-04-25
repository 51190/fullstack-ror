BEGIN;


CREATE TABLE IF NOT EXISTS peliculas
(
    id serial,
    nombre character varying(150) NOT NULL,
    genero character varying(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS actores
(
    id serial,
    nombre character varying(100)[] NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS peliculas_actores
(
    id_pelicula integer NOT NULL,
    id_actor integer NOT NULL
);

ALTER TABLE peliculas_actores
    ADD FOREIGN KEY (id_pelicula)
    REFERENCES peliculas (id)
    NOT VALID;


ALTER TABLE peliculas_actores
    ADD FOREIGN KEY (id_actor)
    REFERENCES actores (id)
    NOT VALID;

END;