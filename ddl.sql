CREATE DATABASE exam;
USE exam;

CREATE TABLE IF NOT EXISTS pago(
    id_pago SMALLINT PRIMARY KEY UNSIGNED,
    id_cliente SMALLINT UNSIGNED,
    id_empleado TINYINT UNSIGNED,
    id_alquiler INT,
    total DECIMAL (5,2),
    fecha_pago DATETIME,
    ultima_actualización TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
    FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler)
);

CREATE TABLE IF NOT EXISTS alquiler(
    id_alquiler INT PRIMARY KEY,
    fecha_alquiler DATETIME,
    id_inventario MEDIUMINT UNSIGNED,
    id_cliente SMALLINT UNSIGNED,
    fecha_devolucion DATETIME,
    id_empleado TINYINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
    FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario)
);

CREATE TABLE IF NOT EXISTS cliente(
    id_cliente SMALLINT UNSIGNED PRIMARY KEY,
    id_almacen TINYINT UNSIGNED,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    id_direccion SMALLINT UNSIGNED,
    activo TINYINT(1),
    fecha_creacion DATETIME,
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
);

CREATE TABLE IF NOT EXISTS almacen(
    id_almacen TINYINT PRIMARY KEY UNSIGNED,
    id_direccion SMALLINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_almacen)
);

CREATE TABLE empleado_almacen(
    id_almacen TINYINT,
    id_empleado TINYINT,
    PRIMARY KEY (id_almacen, id_empleado),
    FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

CREATE TABLE empleado(
    id_empleado TINYINT PRIMARY KEY UNSIGNED,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    id_direccion SMALLINT UNSIGNED,
    imagen BLOB,
    email VARCHAR(50),
    id_almacen TINYINT UNSIGNED,
    activo TINYINT(1),
    username VARCHAR(16),
    password VARCHAR(40),
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion),
    FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen)
);

CREATE TABLE direccion(
    id_direccion SMALLINT PRIMARY KEY UNSIGNED,
    direccion VARCHAR(50),
    direccion2 VARCHAR(50),
    distrito VARCHAR(50),
    id_ciudad SMALLINT UNSIGNED,
    codigo_postal VARCHAR(10),
    telefono VARCHAR(20),
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE ciudad(
    id_ciudad SMALLINT PRIMARY KEY UNSIGNED,
    nombre VARCHAR(20),
    id_pais VARCHAR(50),
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);

CREATE TABLE pais(
    id_pais SMALLINT PRIMARY KEY UNSIGNED,
    nombre VARCHAR(50),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE idioma(
    id_idioma TINYINT PRIMARY KEY UNSIGNED,
    nombre VARCHAR(50),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE pelicula(
    id_pelicula SMALLINT PRIMARY KEY UNSIGNED,
    titulo VARCHAR(255),
    descripcion TEXT,
    anyo_lanzamiento YEAR,
    id_idioma TINYINT UNSIGNED,
    id_idioma_original TINYINT UNSIGNED,
    duracion_alquiler TINYINT UNSIGNED,
    rental_rate DECIMAL(4,2),
    duracion SMALLINT UNSIGNED,
    replacement_cost DECIMAL(5,2),
    clasificacion ENUM('G','PG','PG-13','R','NC-17'),
    caracteristicas_especiales SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes'),
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma),
    FOREIGN KEY (id_idioma_original) REFERENCES idioma_original(id_idioma_original)
);

CREATE TABLE actor(
    id_actor SMALLINT PRIMARY KEY UNSIGNED,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE inventario(
    id_inventario MEDIUMINT PRIMARY KEY UNSIGNED,
    id_pelicula SMALLINT UNSIGNED,
    id_almacen TINYINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen)
);

CREATE TABLE pelicula_categoria(
    id_pelicula SMALLINT UNSIGNED,
    id_categoria TINYINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    PRIMARY KEY (id_pelicula, id_almacen),
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE categoria(
    id_categoria TINYINT PRIMARY KEY UNSIGNED,
    nombre VARCHAR(25),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE pelicula_actor(
    id_actor SMALLINT UNSIGNED,
    id_pelicula SMALLINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    PRIMARY KEY(id_actor, id_pelicula),
    FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    FOREIGN KEY (id_actor) REFERENCES actor(id_actor)
);

CREATE TABLE film_text(
    film_id SMALLINT PRIMARY KEY,
    title VARCHAR(255),
    description TEXT
);






