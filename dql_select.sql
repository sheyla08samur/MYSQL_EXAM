--Encuentra el cliente que ha realizado la mayor cantidad de alquileres en los últimos 6 meses.
SELECT c.id_cliente AS cliente_id, c.nombre, COUNT(a.id_alquiler) AS cantidad
FROM cliente
JOIN alquiler a ON a.id_cliente = c.id_cliente
GROUP BY c.id_cliente
HAVING A.fecha_alquiler = DATESUB(BETWEEN NOW() INTERVAL 6 MONTH)
ORDER BY cantidad DESC
LIMIT 1;

--Lista las cinco películas más alquiladas durante el último año.

--Obtén el total de ingresos y la cantidad de alquileres realizados por cada categoría de película.

--Calcula el número total de clientes que han realizado alquileres por cada idioma disponible en un mes específico.

--Encuentra a los clientes que han alquilado todas las películas de una misma categoría.

--Lista las tres ciudades con más clientes activos en el último trimestre.

--Muestra las cinco categorías con menos alquileres registrados en el último año.

--Calcula el promedio de días que un cliente tarda en devolver las películas alquiladas.

--Encuentra los cinco empleados que gestionaron más alquileres en la categoría de Acción.

--Genera un informe de los clientes con alquileres más recurrentes.

--Calcula el costo promedio de alquiler por idioma de las películas.

--Lista las cinco películas con mayor duración alquiladas en el último año.

--Muestra los clientes que más alquilaron películas de Comedia.

--Encuentra la cantidad total de días alquilados por cada cliente en el último mes.

--Muestra el número de alquileres diarios en cada almacén durante el último trimestre.

--Calcula los ingresos totales generados por cada almacén en el último semestre.

--Encuentra el cliente que ha realizado el alquiler más caro en el último año.

--Lista las cinco categorías con más ingresos generados durante los últimos tres meses.

--Obtén la cantidad de películas alquiladas por cada idioma en el último mes.

--Lista los clientes que no han realizado ningún alquiler en el último año.