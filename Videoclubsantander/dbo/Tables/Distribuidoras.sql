CREATE TABLE [dbo].[Distribuidoras] (
    [coddis]           CHAR (3)     NOT NULL,
    [nombre]           VARCHAR (30) NULL,
    [Direccon]         VARCHAR (50) NULL,
    [telefono]         VARCHAR (15) NULL,
    [persona_contacto] VARCHAR (80) NULL,
    [fecha_contrato]   DATE         NULL,
    PRIMARY KEY CLUSTERED ([coddis] ASC)
);

