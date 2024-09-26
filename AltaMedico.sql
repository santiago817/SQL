alter proc AltaMedico(

         @DNI varchar(30),
		 @Nombre varchar(20),
		 @Apellido varchar(20),
		 @Especialidad Varchar(50),
		 @Monto money


)
as

if NOT exists (select * from Medico where DNI=@DNI )
BEGIN
   INSERT INTO Medico(DNI,Nombre,Apellido,Especialidad,Monto)

   VALUES (@DNI,@Nombre,@Apellido,@Especialidad,@Monto)
   print 'El Medico se agrego correctamente'
   return
END

begin
 print 'El Medico ya existe'
 return
end


--select * from Medico

--EXEC AltaMedico '4878794', 'Jorge', 'Maya', 'Medico Clinico', 3000