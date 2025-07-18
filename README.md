## EL SAKILA
# Sistema de Alquiler de Películas 🎬

Este proyecto consiste en el desarrollo de consultas, funciones, triggers y eventos SQL para un sistema de alquiler de películas, con el objetivo de mejorar la gestión de datos y análisis en una base de datos relacional.

## 📁 Estructura del Proyecto

El proyecto se compone de los siguientes bloques principales:

1. **Consultas SQL**
2. **Funciones SQL**
3. **Triggers**
4. **Eventos SQL**

Cada bloque está documentado y explicado para garantizar comprensión, trazabilidad y mantenimiento.

---

## 🔧 Prerrequisitos

- Sistema de gestión de bases de datos: **MySQL** (recomendado v8.0+)
- Acceso a la base de datos provista: [Enlace a la base de datos e inserciones]
- Cliente SQL para ejecutar los scripts (MySQL Workbench, DBeaver, phpMyAdmin, etc.)

---

## 🔍 1. Consultas SQL

Se desarrollaron consultas para obtener métricas relevantes del sistema. Estas incluyen:

- Cliente con más alquileres en los últimos 6 meses.
- Películas más alquiladas en el último año.
- Ingresos y alquileres por categoría.
- Alquileres por idioma y mes.
- Clientes que han alquilado todas las películas de una categoría.
- Ciudades con más clientes activos.
- Categorías menos alquiladas.
- Días promedio de devolución de películas.
- Empleados con más alquileres en "Acción".
- Informe de clientes recurrentes.
- Costo promedio por idioma.
- Películas más largas alquiladas.
- Clientes que más alquilan "Comedia".
- Total de días alquilados por cliente en el último mes.
- Alquileres diarios por almacén.
- Ingresos por almacén.
- Alquiler más caro por cliente.
- Categorías con más ingresos.
- Alquileres por idioma.
- Clientes inactivos en el último año.

📝 Cada consulta está acompañada de una explicación detallada sobre su lógica y propósito.

---

## ⚙️ 2. Funciones SQL

Se crearon funciones para facilitar el análisis dinámico de datos. Incluyen:

- `TotalIngresosCliente(cliente_id, año)`
- `PromedioDuracionAlquiler(pelicula_id)`
- `IngresosPorCategoria(categoria_id)`
- `DescuentoFrecuenciaCliente(cliente_id)`
- `EsClienteVIP(cliente_id)`

🔧 Estas funciones permiten cálculos reutilizables y encapsulan lógica repetitiva.

---

## 🔁 3. Triggers

Se desarrollaron triggers para mantener la integridad de datos y realizar auditorías automáticas:

- `ActualizarTotalAlquileresEmpleado`
- `AuditarActualizacionCliente`
- `RegistrarHistorialDeCosto`
- `NotificarEliminacionAlquiler`
- `RestringirAlquilerConSaldoPendiente`

🛡️ Cada trigger garantiza que los procesos críticos se ejecuten automáticamente al producirse un evento en la base de datos.

---

## ⏱️ 4. Eventos SQL

Se automatizan tareas periódicas y condiciones de negocio mediante eventos programados:

- `InformeAlquileresMensual`
- `ActualizarSaldoPendienteCliente`
- `AlertaPeliculasNoAlquiladas`
- `LimpiarAuditoriaCada6Meses`
- `ActualizarCategoriasPopulares`

📅 Estos eventos permiten mantener actualizada la información clave y mejorar la eficiencia operativa.

---

## 📦 Entregables

- `consultas.sql` → Contiene todas las consultas SQL del examen.
- `funciones.sql` → Funciones definidas para análisis de clientes, ingresos y películas.
- `triggers.sql` → Triggers para auditoría, restricciones y actualizaciones automáticas.
- `eventos.sql` → Definiciones de eventos programados para mantenimiento y reportes.
- `README.md` → Este documento explicativo.

---

## ✅ Recomendaciones

- Verifica que el `EVENT Scheduler` de MySQL esté activado (`SET GLOBAL event_scheduler = ON;`).
- Ejecuta los scripts en el orden sugerido: funciones → triggers → eventos → consultas.
- Asegúrate de tener privilegios suficientes para crear TRIGGERS y EVENTOS.

---

## ✍️ Autor

Este proyecto fue desarrollado como parte de un examen práctico de SQL orientado a la administración de un sistema de alquiler de películas. Todas las soluciones fueron diseñadas para ser eficientes, claras y fácilmente mantenibles.