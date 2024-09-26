--select * from Paciente
--exec AltaPaciente '35151584','Raquel','orellana','calle 15 25','19990925','15445155','Raquel@gmail.com',''





alter proc AltaPaciente (
           @DNI varchar(30),
		   @Nombre varchar(20), 
		   @Apellido varchar(20),
		   @Direccion varchar(30),
		   @FechaNaciemiento varchar(8),
		   @Telefono varchar(50)= '',
		   @Correo varchar(50),
		   @Observacion varchar(1000)= ''
	)
as

-- primero crear un query donde tenga el nombre "AltaPaciente" lo guradas cerras y buscar el query con el nombre "AltaPaciente" lo abris ,  ejecutar el comando de arriba ("Create /ALTER" al hacerlo por primera vez se usar create cuando modifiques se usa ALTER),
-- despues siguiente comando hay q guardarlo y usar el comando exec para agregar personas arriba ya hay un ejemplo solo seleccionas el exec lo ejecutas y te dira q 'El Paciente se agrego correctamente' o  'El Paciente ya existe'
-- se puede verificar tambien usando el comando de select * from paciente y veremos lo q agregamos
if NOT exists (select * from Paciente where DNI=@DNI )
BEGIN
   INSERT INTO Paciente (DNI,Nombre,Apellido,Direccion,FechaNacimiento,Telefono,Correo,Observacion)

   VALUES (@DNI,@Nombre,@Apellido,@Direccion,@FechaNaciemiento,@Telefono,@Correo,@Observacion)
   print 'El Paciente se agrego correctamente'
   return
END

begin
 print 'El Paciente ya existe'
 return
end