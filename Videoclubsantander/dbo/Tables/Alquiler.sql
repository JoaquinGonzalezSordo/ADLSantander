CREATE TABLE [dbo].[Alquiler] (
    [Codalq]               CHAR (3) NOT NULL,
    [Codcli]               CHAR (3) NULL,
    [Codpel]               CHAR (2) NULL,
    [numpel]               INT      NULL,
    [fecha_alquiler]       DATE     NULL,
    [fechaprev_devolucion] DATE     NULL,
    [fechareal_devolucion] DATE     NULL,
    [sancion]              BIT      NULL,
    PRIMARY KEY CLUSTERED ([Codalq] ASC),
    CONSTRAINT [FK_Codalqcli] FOREIGN KEY ([Codcli]) REFERENCES [dbo].[Clientes] ([Codcli]) ON UPDATE CASCADE,
    CONSTRAINT [FK_Codalqpel] FOREIGN KEY ([Codpel], [numpel]) REFERENCES [dbo].[Inventario] ([Codpel], [numpel])
);

