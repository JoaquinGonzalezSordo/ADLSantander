CREATE TABLE [dbo].[Inventario] (
    [Codpel]         CHAR (2)   NOT NULL,
    [numpel]         INT        NOT NULL,
    [fecha_entrada]  DATE       NULL,
    [disponibilidad] BIT        NOT NULL,
    [Fecha_salida]   DATE       NULL,
    [Fecha_vuelta]   DATE       NULL,
    [precio]         FLOAT (53) NULL,
    [calificacion]   FLOAT (53) NULL,
    CONSTRAINT [PK__Inventar__B5FDF8E32069DE26] PRIMARY KEY CLUSTERED ([Codpel] ASC, [numpel] ASC),
    CONSTRAINT [FK_Codpel] FOREIGN KEY ([Codpel]) REFERENCES [dbo].[Peliculas] ([Codpel]) ON UPDATE CASCADE
);

