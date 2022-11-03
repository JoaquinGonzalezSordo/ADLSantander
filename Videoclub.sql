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
	  anio smallint,
	  director varchar(40) not null,
	  actorprincipal varchar(40),
	  actrizprincipal varchar(40),
	  numoscars tinyint,
	  productora varchar(40),
     PRIMARY KEY (Codpel)
);



INSERT INTO Peliculas
   VALUES ('VL','Lo que el viento de llevó','Drama','1939',
           'Victor Fleming','Clark Gable','Vivien Leigh','8','Metro Goldwin Mayer');
INSERT INTO Peliculas
   VALUES ('CB','Casablanca','Drama','1942',
           'Michel Curtiz','Humphrey Bogart','Ingrid Bergman','3','Warner');
INSERT INTO Peliculas
   VALUES ('VZ','Viva Zapata','Drama','1952',
           'Elia Kazan','Marlon Brando','Jean Peters','1','20 th centiuries');
INSERT INTO Peliculas
   VALUES ('BN','Blancanieves','Infantil','1937',
           'Walt Disney','El principe','Blancanieves','1','Disney');

select * from Peliculas


