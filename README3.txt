Crear procedimientos almacenados para
Insertar nuevos pacientes, médicos, y turnos:

estos comandos ya estan en los Archivos :AltaPaciente/AltaMedico/AltaTurnos


Consultar el historial de un paciente.


--consultar Historial de un paciente
select * from HistoriaClinica
SELECT * FROM HistoriaClinica WHERE idPaciente = 10 and idMedico = 7






Realizar pagos y asociarlos correctamente a los turnos y pacientes:

el comando esta en el archivo AltaPago




Actualizar la información de un paciente o médico.

-- ACTUALIZAR LA INFORMACION DE UN PACIENTE Y MEDICO


--select * from Paciente

update Paciente set Nombre = 'Federico' where idPaciente = 7

----------------------- fin del comando--------------------------------------------------------------
--select * from Medico

select * from Medico

update Medico set Apellido = 'García' where idMedico = 1

