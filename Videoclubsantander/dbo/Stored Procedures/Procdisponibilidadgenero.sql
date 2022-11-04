
CREATE PROC Procdisponibilidadgenero
	    
@genero as varchar(20)

as
begin
select I.Codpel,
       P.titulo,
	   P.genero,
       I.disponibilidad
	from Inventario I
	   right join
	     Peliculas P
	   on I.Codpel=P.Codpel
	 where P.genero=@genero;
RETURN;
END