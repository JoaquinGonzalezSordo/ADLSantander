CREATE TABLE [dbo].[Pedidos] (
    [Codped]        CHAR (3)  NOT NULL,
    [coddis]        CHAR (3)  NULL,
    [Codpel]        CHAR (2)  NULL,
    [numeropel]     INT       NULL,
    [fecha_llegada] DATE      NULL,
    [formapago]     CHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([Codped] ASC),
    CONSTRAINT [FK_Coddis] FOREIGN KEY ([coddis]) REFERENCES [dbo].[Distribuidoras] ([coddis]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Codpeli] FOREIGN KEY ([Codpel]) REFERENCES [dbo].[Peliculas] ([Codpel])
);

