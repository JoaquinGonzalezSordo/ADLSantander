CREATE PROC Procinsertaralq
	    
@Codalq as char(3),
@telefono as varchar(15),
@Codpel as char(2),
@numpel as int,
@fecha_alquiler as date,
@fechaprev_devolucion as date,
@fechareal_devolucion as date,
@sancion as bit



as
begin
Declare @Codcli char(3)
set @Codcli = (select Codcli from Clientes where telefono=@telefono)

if @Codcli is null
      select 'No existe dicho cliente, introducir sus datos'
else
insert into Alquiler
    values(@Codalq,
	       @Codcli,
		   @Codpel,
		   @numpel,
		   @fecha_alquiler,
		   @fechaprev_devolucion,
		   @fechareal_devolucion,
		   @sancion)

RETURN;
END