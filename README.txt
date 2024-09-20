insertar pacientes
INSERT INTO [dbo].[Pacientes] (DNI, Nombre, Apellido, FechaDeNacimiento, Direccion, Telefono, Correo)
VALUES ('1777788', 'Jorge', 'Romero', '20180518', 'Calle 1', '123456789', 'jorgelopez@gmail.com');

--select * from Pacientes


insertar turnos
INSERT INTO [dbo].[Turno] (IdPaciente, idMedico, Fecha, Observacion)
VALUES (1, 2, '20240925', 'Consulta de rutina');



Pago

insert into [dbo].[Pago] (idTurno,FechaDePago,Monto)
values (2,'20240920',5000)

--select * from Pago


select * from HistoriaMedica
select * from Turno
insert into HistoriaMedica (idPaciente,idMedico)
values (10,2)

