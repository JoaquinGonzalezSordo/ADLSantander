CREATE TABLE [dbo].[Peliculas] (
    [Codpel]          CHAR (2)     NOT NULL,
    [titulo]          VARCHAR (70) NOT NULL,
    [genero]          VARCHAR (20) NOT NULL,
    [pais]            VARCHAR (20) NULL,
    [anio]            SMALLINT     NULL,
    [director]        VARCHAR (40) NOT NULL,
    [actorprincipal]  VARCHAR (40) NULL,
    [actrizprincipal] VARCHAR (40) NULL,
    [numoscars]       TINYINT      NULL,
    [productora]      VARCHAR (40) NULL,
    PRIMARY KEY CLUSTERED ([Codpel] ASC),
    UNIQUE NONCLUSTERED ([titulo] ASC)
);

