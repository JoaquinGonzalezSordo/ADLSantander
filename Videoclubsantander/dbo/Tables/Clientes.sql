CREATE TABLE [dbo].[Clientes] (
    [Codcli]            CHAR (3)      NOT NULL,
    [nombre]            VARCHAR (20)  NOT NULL,
    [apellidos]         VARCHAR (40)  NOT NULL,
    [dni]               NVARCHAR (9)  NULL,
    [direccion]         VARCHAR (100) NULL,
    [ciudad]            VARCHAR (30)  NULL,
    [telefono]          VARCHAR (15)  NULL,
    [fecha_inscripcion] DATE          NULL,
    PRIMARY KEY CLUSTERED ([Codcli] ASC)
);

