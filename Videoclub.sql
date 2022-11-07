/*
Autor: Joaquín González Sordo
Fecha de inicio: 03-11-2022
Proyecto: Base de datos de Videoclub
*/

drop database if exists Videoclub_Sardinero;
CREATE DATABASE Videoclub_Sardinero;

USE Videoclub_Sardinero;
go


drop table if exists Peliculas;
CREATE TABLE Peliculas(
      Codpel char(2),
	  titulo varchar(70) not null unique,
	  genero varchar(20) not null,
	  pais varchar(20),
	  anio smallint,
	  director varchar(40) not null,
	  actorprincipal varchar(40),
	  actrizprincipal varchar(40),
	  numoscars tinyint,
	  productora varchar(40),
     PRIMARY KEY (Codpel)
);



INSERT INTO Peliculas
   VALUES ('VL','Lo que el viento de llevó','Drama','EEUU','1939',
           'Victor Fleming','Clark Gable','Vivien Leigh','8','Metro Goldwin Mayer');
INSERT INTO Peliculas
   VALUES ('CB','Casablanca','Drama','EEUU','1942',
           'Michel Curtiz','Humphrey Bogart','Ingrid Bergman','3','Warner');
INSERT INTO Peliculas
   VALUES ('VZ','Viva Zapata','Drama','EEUU','1952',
           'Elia Kazan','Marlon Brando','Jean Peters','1','20 th centuries');
INSERT INTO Peliculas
   VALUES ('BN','Blancanieves','Infantil','EEUU','1937',
           'Walt Disney','El principe','Blancanieves','1','Disney');
INSERT INTO Peliculas
   VALUES ('BH','Ben Hur','Drama','EEUU','1959',
           'William Wyler','Charlton Heston','','11','Metro Goldwin Mayer');
INSERT INTO Peliculas
   VALUES ('WS','West side story','musical','EEUU','1961',
           'Robert Wise','Richard Beymer','Natalie Wood','10','Seven Arts');
INSERT INTO Peliculas
   VALUES ('LA','Lawrence de Arabia','historica','Reino Unido','1962',
           'David Lean','Peter O Toole','','7','Columbia');
		   
INSERT INTO Peliculas
   VALUES ('SL','Sonrisas y lagrimas','musical','EEUU','1965',
           'Robert Wise','Cristopher Plummer','Julie Andrews','5','20 th centuries');
INSERT INTO Peliculas
   VALUES ('P1','El Padrino','drama','EEUU','1972',
           'Francis Ford Coppola','Marlon Brando','Diane Keaton','3','Paramount');
INSERT INTO Peliculas
   VALUES ('P2','El Padrino 2','drama','EEUU','1974',
           'Francis Ford Coppola','Al Pacino','Diane Keaton','6','Paramount');
INSERT INTO Peliculas
   VALUES ('EG','El golpe','comica','EEUU','1973',
           'George Roy Hill','Paul Newman','','7','Universal');
INSERT INTO Peliculas
   VALUES ('AH','Annie Hall','comica','EEUU','1977',
           'Woody Allen','Woody Allen','Diane Keaton','4','United artists');

INSERT INTO Peliculas
   VALUES ('ET','ET el extraterrestre','ciencia ficcion','EEUU','1982',
           'Steven Spielberg','Henry Thomas','Drew Barrymore','4','Universal');
INSERT INTO Peliculas
   VALUES ('GH','Gandhi','historica','Reino Unido','1982',
           'Richard Attenborough','Ben Kingsley','Rohini Attangadhi','8','Columbia');
INSERT INTO Peliculas
   VALUES ('BL','Bailando con lobos','Western','EEUU','1990',
           'Kevin Costner','Kevin Costner','Mary McDonnell','8','Orion');
INSERT INTO Peliculas
   VALUES ('SC','El silencio de los corderos','Terror','EEUU','1991',
           'Jonathan Demmer','Anthony Hopkins','Jodie Foster','5','Orion');
INSERT INTO Peliculas
   VALUES ('FG','Forrest Gump','Comedia','EEUU','1994',
           'Robert Zemeckis','Tom Hanks','Mary McDonnell','6','Paramount');
INSERT INTO Peliculas
   VALUES ('TT','Titanic','Drama','EEUU','1997',
           'James Cameron','Leonardo di Caprio','Kate Winslet','11','Paramount');

 INSERT INTO Peliculas
   VALUES ('GD','Gladiator','Historica','EEUU','2000',
           'Ridley Scott','Russel Crowe','Connie Nielsen','5','Universal');
 INSERT INTO Peliculas
   VALUES ('S3','El señor de los anillos el retorno del rey','fantasía','EEUU','2003',
           'Peter Jackson','Elijah Wood','Liv Tyler','11','New line cinema');
INSERT INTO Peliculas
   VALUES ('LG','Los Goonies','Aventuras','EEUU','1985',
           'Steven Spielberg','Sean Astin','','0','Warner');
INSERT INTO Peliculas
   VALUES ('SM','Superman','Aventuras','EEUU','1978',
           'Richard Donner','Cristopher Reeve','Margot Kidder','1','Warner');
INSERT INTO Peliculas
   VALUES ('G4','Una nueva esperanza','Ciencia ficcion','EEUU','1977',
           'George Lucas','Harrison Ford','Carrie Fisher','7','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G5','El imperio contraataca','Ciencia ficcion','EEUU','1980',
           'George Lucas','Harrison Ford','Carrie Fisher','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G6','El retorno del Jedi','Ciencia ficcion','EEUU','1983',
           'George Lucas','Harrison Ford','Carrie Fisher','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G1','Amenaza fantasma','Ciencia ficcion','EEUU','1999',
           'George Lucas','Ewan McGregor','Natalie Portman','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G2','El ataque de los clones','Ciencia ficcion','EEUU','2002',
           'George Lucas','Ewan McGregor','Natalie Portman','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('G3','La venganza de los Sith','Ciencia ficcion','EEUU','2005',
           'George Lucas','Ewan McGregor','Natalie Portman','0','20 th centuries');
INSERT INTO Peliculas
   VALUES ('I1','En busca del arca perdida','Aventuras','EEUU','1981',
           'Steven Spielberg','Harrison Ford','Karen Allen','5','Paramount');
INSERT INTO Peliculas
   VALUES ('I2','El templo maldito','Aventuras','EEUU','1984',
           'Steven Spielberg','Harrison Ford','Kate Capshaw','0','Paramount');
INSERT INTO Peliculas
   VALUES ('I3','La ultima cruzada','Aventuras','EEUU','1989',
           'Steven Spielberg','Harrison Ford','Alison Doody','0','Paramount');
INSERT INTO Peliculas
   VALUES ('I4','La calavera de cristal','Aventuras','EEUU','2006',
           'Steven Spielberg','Harrison Ford','Cate Blanchett','0','Paramount');
INSERT INTO Peliculas
   VALUES ('H1','Harry Potter y la piedra filosofal','Infantil','Reino Unido','2001',
           'Chris Columbus','Daniel Radcliffe','Emma Watson','0','Warner');


update Peliculas
  set genero = 'Ciencia ficcion'
    where genero ='ciencia ficcion';
update Peliculas
  set genero = 'Comedia'
    where genero ='comica';
update Peliculas
  set genero = 'Drama'
    where genero ='drama';
	update Peliculas
  set genero = 'Historica'
    where genero ='historica';

INSERT INTO Peliculas
   VALUES ('TS','Tesis','Terror','España','1996',
           'Alejandro Amenabar','Eduardo Noriega','Ana Torrent','0','Universal');

INSERT INTO Peliculas
   VALUES ('IM','La isla minima','Policiaca','España','2014',
           'Alberto Rodriguez','Javier Gutierrez','Maria Varod','0','Warner');

INSERT INTO Peliculas
   VALUES ('T1','Torrente','Comedia','España','1998',
           'Santiago Segura','Santiago Segura','Neus Asensi','0','ADS Service');
INSERT INTO Peliculas
   VALUES ('AM','Amelie','Comedia','Francia','1998',
           'Jean Pierre Jeunet','Audrey Tatou','Mathieu Kassovitz','1','Union Generale');
		   			 		  		  		 	   			   

select * from Peliculas order by 5


drop table if exists Clientes;
CREATE TABLE Clientes(
      Codcli char(3),
	  nombre varchar(20) not null,
	  apellidos varchar(40) not null,
	  dni nVARCHAR(9),
	  direccion varchar(100),
	  ciudad varchar(30),
	  telefono varchar(15),
	  fecha_inscripcion date,
	
     PRIMARY KEY (Codcli)
);



INSERT INTO Clientes
   VALUES ('c01','Juan','Perez','12345678a','Calle Rosa 3','Santander','456546543','2007-11-18');

INSERT INTO Clientes
   VALUES ('c02','Luisa','Ruiz','22222222b','Calle Barco 3','Bezana','656546543','2009-10-18');
INSERT INTO Clientes
   VALUES ('c03','Carlos','Suarezs','33333333C','Calle Golondrina 3','Astillero',
           '656547843','2013-10-18');

INSERT INTO Clientes
   VALUES ('c04','Miguel','Hernandez','44444444D','Calle Tomás 3','Santander',
           '656547213','2015-10-18');
INSERT INTO Clientes
   VALUES ('c05','Federico','Lopez','56789432e','Calle Montes 3','Santander',
           '656547363','2015-08-18');
INSERT INTO Clientes
   VALUES ('c06','Laura','Rodriguez','44556754F','Avenida Cantabria 7','Santander',
           '656547993','2011-08-18');
INSERT INTO Clientes
   VALUES ('c07','Pedro','Rodriguez','87654321H','Avenida Constitucion 7','Bezana',
           '656541193','2011-03-18');
INSERT INTO Clientes
   VALUES ('c08','María','Arganda','43216789H','Avenida Pereda 7','Santander',
           '656521193','2011-03-12');
	INSERT INTO Clientes
   VALUES ('c09','Iker','Jimenez','34567890K','Calle Sotileza 1','Bezana',
           '656541223','2011-03-18');
INSERT INTO Clientes
   VALUES ('c10','Irene','Gonzalez','88888888l','Avenida Montés 7','Santander',
           '656520093','2017-03-19');
		   			 		  		  		 	   		

   select * from Clientes


   drop table if exists Distribuidoras;
CREATE TABLE Distribuidoras(
           coddis char(3),
		   nombre varchar(30),
		   Direccon varchar(50),
		   telefono varchar(15),
		   persona_contacto varchar(80),
		   fecha_contrato date,
		PRIMARY KEY (CODDIS)
		);
INSERT INTO Distribuidoras
  VALUES ('d01','Warner','Calle Menchaza 7 Madrid','111111111','Raul','2010-03-01');
INSERT INTO Distribuidoras
  VALUES ('d02','Universal','Calle Albiol 7 Barcelona','222222222','Carlos','2014-03-01');

INSERT INTO Distribuidoras
  VALUES ('d03','Paramount','Calle Victoria 7 Madrid','333333333','Ana','2017-03-01');
INSERT INTO Distribuidoras
  VALUES ('d04','20 th centuries','Calle San Luis 7 Barcelona','444444444','Miguel','2015-03-01');
INSERT INTO Distribuidoras
  VALUES ('d05','Disney','Calle Mayor 7 Bilbao','555555555','Gorka','2018-03-01');
INSERT INTO Distribuidoras
  VALUES ('d06','Columbia','Calle Arroyo 7 Madrid','666666666','Javier','2014-08-01');
INSERT INTO Distribuidoras
  VALUES ('d07','Metro Goldwin Mayer','Calle Santa Teresa 7 Madrid','777777777','Jimena','2019-08-01');
INSERT INTO Distribuidoras
  VALUES ('d08','United artists','Paseo de la Castellana 11 Madrid','888888888','Victor','2020-08-01');


 select * from Distribuidoras






   drop table if exists Inventario;
CREATE TABLE Inventario(
      Codpel char(2),
	  numpel int,
	  fecha_entrada date,
	  disponibilidad bit not null,
	  Fecha_salida date,
	  Fecha_vuelta date,
	  precio float,
	  calificacion float,
     PRIMARY KEY (Codpel,numpel),
	 CONSTRAINT FK_Codpel FOREIGN KEY (Codpel)
        REFERENCES Peliculas (Codpel)
		on update cascade,
	 );

	 INSERT INTO Inventario
   VALUES ('BN','1','2011-03-02',
           '1',' ',' ','2','4');
INSERT INTO Inventario
   VALUES ('BN','2','2011-05-02',
           '0','2022-11-02','2022-11-05','2','4');
INSERT INTO Inventario
   VALUES ('AH','1','2013-05-02',
           '1','','','2','3');
INSERT INTO Inventario
   VALUES ('AM','1','2014-05-02',
           '0','2022-11-03','2022-11-06','2','4');
INSERT INTO Inventario
   VALUES ('I1','1','2010-05-02',
           '0','2022-11-03','2022-11-06','2','5');
INSERT INTO Inventario
   VALUES ('I2','1','2010-07-02',
           '1','','','2','3');
INSERT INTO Inventario
   VALUES ('I3','1','2011-07-02',
           '0','2022-11-04','2022-11-06','2','4');
INSERT INTO Inventario
   VALUES ('SM','1','2014-07-02',
           '1','','','2','5');
INSERT INTO Inventario
   VALUES ('SM','2','2014-07-02',
           '0','2022-11-04','2022-11-07','2','5');

drop table if exists Alquiler;
CREATE TABLE Alquiler(
      Codalq char(3),
      Codcli char(3),
	  Codpel char(2),
	  numpel int,
	  fecha_alquiler date,
	  fechaprev_devolucion date,
	  fechareal_devolucion date,
	  sancion bit,
     PRIMARY KEY (Codalq),
	 CONSTRAINT FK_Codalqcli FOREIGN KEY (Codcli)
        REFERENCES Clientes (Codcli)
		on update cascade,
	  CONSTRAINT FK_Codalqpel FOREIGN KEY (Codpel,numpel)
        REFERENCES Inventario (Codpel,numpel)

	 );
-- select * from inventario
insert into Alquiler
     VALUES ('A01','c01','BN','2','2022-11-02','2022-11-05','','');
insert into Alquiler
     VALUES ('A02','c03','I3','1','2022-11-04','2022-11-06','','');
insert into Alquiler
     VALUES ('A03','c06','SM','2','2022-11-04','2022-11-07','','');
insert into Alquiler
     VALUES ('A04','c02','AM','1','2022-11-03','2022-11-06','','');

-- Select * from Alquiler


	 drop table if exists Pedidos;
CREATE TABLE Pedidos(
      Codped char(3),
      coddis char(3),
	  Codpel char(2),
	  numeropel int,
	  fecha_llegada date,
	  formapago char(30),
     PRIMARY KEY (Codped),
	 CONSTRAINT FK_Coddis FOREIGN KEY (Coddis)
        REFERENCES Distribuidoras (Coddis)
		on update cascade,
	  CONSTRAINT FK_Codpeli FOREIGN KEY (Codpel)
        REFERENCES Peliculas (Codpel)

	 );



-- SELECT * FROM PELICULAS order by 3
-- SELECT * FROM Inventario



-- Preparando procedimiento de  disponibilidad de titulo

/*
select I.Codpel,
       P.titulo,
       I.disponibilidad
	from Inventario I
	   right join
	     Peliculas P
	   on I.Codpel=P.Codpel
*/
if OBJECT_id('Procdisponibilidadtitulo','P') is not null
     drop proc Procdisponibilidadtitulo
go

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

Execute Procdisponibilidadtitulo
@titulo ='Blancanieves'

-- Preparando procedimiento de  disponibilidad de GENERO

/*
select I.Codpel,
       P.titulo,
	   P.genero,
       I.disponibilidad
	from Inventario I
	   right join
	     Peliculas P
	   on I.Codpel=P.Codpel
*/
if OBJECT_id('Procdisponibilidadgenero','P') is not null
     drop proc Procdisponibilidadgenero
go

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

Execute Procdisponibilidadgenero
@genero ='Aventuras'

-- Cambio telefono de un cliente

update Clientes
 set telefono ='657521193'
 where Codcli = 'c08'

-- Procedimiento para saber si alguien es cliente

if OBJECT_id('Procsabersiescliente','P') is not null
     drop proc Procsabersiescliente
go

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

Execute Procsabersiescliente
@telefono ='657521193'

-- select 'Hola mundo'
-- select codcli, telefono from Clientes

-- Crear un procedimiento para insertar un nuevo alquiler

if OBJECT_id('Procinsertaralq','P') is not null
     drop proc Procinsertaralq;
go

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

-- select Codcli, telefono from Clientes


Execute Procinsertaralq
@Codalq ='A08',
@telefono ='654321987',
@Codpel ='SM',
@numpel = '1',
@fecha_alquiler = '2022-11-05',
@fechaprev_devolucion = '2022-11-07',
@fechareal_devolucion = '',
@sancion ='';

-- select * from alquiler
-- delete from alquiler where Codcli is null or Codcli='c03'

-- PROCEDIMIENTO PARA INSERTAR DATOS DE CLIENTES
if OBJECT_id('Procinsertarcli','P') is not null
     drop proc Procinsertarcli;
go

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

-- select Codcli, telefono from Clientes


Execute Procinsertarcli
@Codcli ='c11',
@nombre ='Alberto',
@apellidos ='Rodriguez',
@dni='54367845d',
@direccion='calle San javier 3',
@ciudad='Bezana',
@telefono='654321987',
@fecha_inscripcion='2022-07-09'

-- select * from Distribuidoras;

select Codpel, titulo, productora from Peliculas where productora='United artists'
Insert into Pedidos
   Values ('P01','d01','CB',2,'2014-08-07','Cheque');

 Insert into Pedidos
   values ('P02','d01','H1',2,'2012-08-07','Transferencia');

 Insert into Pedidos
   values ('P03','d01','IM',1,'2022-08-07','Metálico');

 Insert into Pedidos
   values ('P04','d01','LG',3,'2019-08-07','Metálico');

 Insert into Pedidos
   values ('P05','d01','SM',2,'2010-08-07','Cheque');

  Insert into Pedidos
   values ('P06','d04','G1',1,'2017-08-07','Transferencia');

   Insert into Pedidos
   values ('P07','d04','G2',1,'2017-08-07','Transferencia');

   Insert into Pedidos
   values ('P08','d04','G3',1,'2017-08-07','Transferencia');

    Insert into Pedidos
   values ('P09','d04','G4',1,'2017-08-07','Transferencia');

       Insert into Pedidos
   values ('P10','d04','G5',1,'2017-08-07','Transferencia');

          Insert into Pedidos
   values ('P11','d04','G6',1,'2017-08-07','Transferencia');
     Insert into Pedidos

   values ('P12','d04','SL',1,'2015-08-07','Transferencia');

   Insert into Pedidos
   values ('P13','d04','VZ',1,'2018-08-07','Transferencia');

   Insert into Pedidos
   values ('P14','d02','EG',1,'2018-01-07','Cheque');

   Insert into Pedidos
   values ('P15','d02','ET',1,'2016-01-07','Cheque');

  Insert into Pedidos
   values ('P16','d02','GD',1,'2015-01-07','Cheque');

    Insert into Pedidos
   values ('P17','d02','TS',1,'2015-01-07','Cheque');

  Insert into Pedidos
   values ('P18','d03','FG',2,'2019-01-07','Metálico');

  Insert into Pedidos
   values ('P19','d03','I1',1,'2020-01-07','Metálico');

    Insert into Pedidos
   values ('P20','d03','I2',1,'2020-01-07','Metálico');

    Insert into Pedidos
   values ('P21','d03','I3',1,'2020-01-07','Metálico');

      Insert into Pedidos
   values ('P22','d03','I4',1,'2021-01-07','Metálico');

       Insert into Pedidos
   values ('P23','d03','P1',2,'2018-05-07','Metálico');

   Insert into Pedidos
   values ('P24','d03','P2',2,'2018-05-07','Metálico');

    Insert into Pedidos
   values ('P25','d03','TT',1,'2015-05-07','Metálico');

       Insert into Pedidos
   values ('P26','d05','BN',2,'2011-05-07','Cheque');

          Insert into Pedidos
   values ('P27','d06','GH',1,'2015-05-07','Cheque');

   Insert into Pedidos
   values ('P28','d06','LA',1,'2018-05-07','Cheque');

   Insert into Pedidos
   values ('P29','d07','BH',1,'2017-05-07','Transferencia');

   Insert into Pedidos
   values ('P30','d07','VL',1,'2017-05-07','Transferencia');

      Insert into Pedidos
   values ('P31','d08','AH',1,'2014-05-07','Transferencia');




   select * from Inventario