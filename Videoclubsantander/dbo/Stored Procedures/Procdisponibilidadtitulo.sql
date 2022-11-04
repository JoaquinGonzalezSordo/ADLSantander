
CREATE PROC Procdisponibilidadtitulo
	    
@titulo as varchar(70)

as
begin
select I.Codpel,
       P.titulo,
       I.disponibilidad
	from Inventario I
	   right join
	     Peliculas P
	   on I.Codpel=P.Codpel
	 where P.titulo=@titulo;
RETURN;
END