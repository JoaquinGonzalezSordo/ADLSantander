CREATE PROC Procinsertarcli
	    
@Codcli as char(3),
@nombre as varchar(20),
@apellidos as varchar(40),
@dni as nvarchar(9),
@direccion as varchar(100),
@ciudad as varchar(30),
@telefono as varchar(15),
@fecha_inscripcion as date


as
begin

insert into Clientes
    values(@Codcli,
	       @nombre,
		   @apellidos,
		   @dni,
		   @direccion,
		   @ciudad,
		   @telefono,
		   @fecha_inscripcion)

RETURN;
END