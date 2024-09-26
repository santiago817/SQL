alter proc AltaPago(
           @idTurno int,
		   @FechaDePago date,
		   @Estado tinyint,
		   @Monto money,
		   @Observaciones varchar(100)=''

)
/*
ESTADO = 0 (PAGADO)
ESTADO = 1 (NO PAGO)
*/

as
if NOT exists (select * from Pago where idTurno=@idTurno )
BEGIN
   INSERT INTO Pago(idTurno,FechaDePago,Estado,Monto,Observaciones)

   VALUES (@idTurno,@FechaDePago,@Estado,@Monto,@Observaciones)
   print 'se a agregado el Monto a pagar del Turno correctamente'
   return
END

begin
 print 'Ya has ingresado el Monto a pagar  para este Turno'
 return
end

/*
select * from Turnos
select * from Pago
select * from Medico

*/

--exec AltaPago 9,'20240926',0,'3700',''
