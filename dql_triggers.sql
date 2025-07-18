--ActualizarTotalAlquileresEmpleado: Al registrar un alquiler, actualiza el total de alquileres gestionados por el empleado correspondiente.
DELIMITER//
CREATE TRIGGER Actualizar_Total_Alquileres_Empleado
AFTER INSERT ON alquiler
FOR EACH ROW
BEGIN
END//
DELIMITER;

--AuditarActualizacionCliente: Cada vez que se modifica un cliente, registra el cambio en una tabla de auditoría.

--RegistrarHistorialDeCosto: Guarda el historial de cambios en los costos de alquiler de las películas.

--NotificarEliminacionAlquiler: Registra una notificación cuando se elimina un registro de alquiler.

--RestringirAlquilerConSaldoPendiente: Evita que un cliente con saldo pendiente pueda realizar nuevos alquileres.