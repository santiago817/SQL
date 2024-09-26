Realizar consultas para:
Obtener todos los turnos de un paciente en un rango de fechas.

select idpaciente,Fecha from Turnos
--- con esto sacaria las id de los pacientes con Fecha




Calcular el total de pagos realizados por un paciente:

-- sumar el total a pagar de un paciente 
select * from Pago

SELECT SUM(monto) AS Monto_Pagar
FROM Pago
WHERE idTurno = 5




Obtener la especialidad de un médico específico:

--select * from Medico // aca tendremos q ejecutar primero para ver la tabla y despues buscar la Especialidad q queremos 

SELECT Especialidad from Medico where idMedico = '7'
-- con este comando podras buscar la Especialidad específico de un medico


Listar los pacientes que aún no han pagado sus turnos.


-- select * from Pago

-- para ver a los pacientes q si pagaron
SELECT * FROM Pago WHERE Estado = 0;
PRINT 'Aquí está la lista de pagos';

SELECT * FROM Pago WHERE Estado = 1;
PRINT 'Aquí está la lista que no pagaron';
-- para ver a los pacientes q no pagaron

