CREATE PROC Procsabersiescliente
	    
@telefono as varchar(15)


as
begin
if (select Codcli
	 from Clientes
	 where telefono=@telefono) 
is not null 
select(select Codcli
	 from Clientes
	 where telefono=@telefono)
ELSE
 SELECT 'NO ES CLIENTE'
RETURN;
END