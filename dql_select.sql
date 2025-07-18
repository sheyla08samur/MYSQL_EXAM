--Encuentra el cliente que ha realizado la mayor cantidad de alquileres en los últimos 6 meses.
SELECT c.id_cliente AS cliente_id, c.nombre, COUNT(a.id_alquiler) AS cantidad
FROM cliente
JOIN alquiler a ON a.id_cliente = c.id_cliente
WHERE a.fecha_alquiler >= DATE_SUB(NOW(), INTERVAL 6 MONTH)
GROUP BY c.id_cliente
ORDER BY cantidad DESC
LIMIT 1;

--Lista las cinco películas más alquiladas durante el último año.
SELECT p.titulo, COUNT(a.id_alquiler) AS cantidad_alquileres
FROM pelicula p
JOIN inventario i ON i.id_pelicula = p.id_pelicula
JOIN alquiler a ON a.id_inventario = i.id_inventario
WHERE a.fecha_alquiler >= DATE_SUB(NOW(), INTERVAL 1 YEAR)
GROUP BY p.id_pelicula, p.titulo
ORDER BY cantidad_alquileres DESC
LIMIT 5;

--Obtén el total de ingresos y la cantidad de alquileres realizados por cada categoría de película.
SELECT cat.nombre, SUM(p.rental_rate) AS total_ingresos
FROM categoria cat
JOIN pelicula_categoria pc ON cat.id_categoria = pc.id_pelicula
JOIN pelicula p ON pc.id_pelicula = p.id_pelicula
JOIN alquiler a ON a.

--I GIVE UP 4 NOW
--I NEED MORE MF TIME
--SORRY :C