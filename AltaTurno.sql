alter PROC AltaTurno(

          @idPaciente int,
		  @idMedico int,
		  @Fecha  char(14),--20190215 12:00
		  @Observacion varchar(1000)= ''


)
as

if NOT exists (select * from Turnos where Fecha=@Fecha )
BEGIN
   INSERT INTO Turnos(idPaciente,idMedico,Fecha,Observaciones)

   VALUES (@idPaciente,@idMedico,@Fecha,@Observacion)
   print 'El Turno se agrego correctamente'
   return
END

begin
 print 'El Turno ya existe'
 return
end


--select * from Turnos
--select * from Paciente
--select * from Medico
--exec AltaTurno 9,4,'20241025 07:00',''