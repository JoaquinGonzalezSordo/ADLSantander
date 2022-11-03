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
           'Elia Kazan','Marlon Brando','Jean Peters','1','20 th centiuries');
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

select * from Peliculas


