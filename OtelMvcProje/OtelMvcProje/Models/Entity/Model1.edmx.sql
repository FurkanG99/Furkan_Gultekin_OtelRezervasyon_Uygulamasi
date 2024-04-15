
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/15/2024 20:28:06
-- Generated from EDMX file: C:\Users\furka\OneDrive\Belgeler\GitHub\Furkan_Gultekin_OtelRezervasyon_Uygulamasi\OtelMvcProje\OtelMvcProje\Models\Entity\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DbOtelYeni];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TblHakkimda'
CREATE TABLE [dbo].[TblHakkimda] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Hakkimda1] nvarchar(1000)  NULL,
    [Hakkimda2] nvarchar(1000)  NULL,
    [Hakkimda3] nvarchar(1000)  NULL,
    [Hakkimda4] nvarchar(1000)  NULL
);
GO

-- Creating table 'Tbliletisim'
CREATE TABLE [dbo].[Tbliletisim] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Aciklama] nvarchar(1000)  NULL,
    [Koordinat] nvarchar(1000)  NULL,
    [Telefon] nvarchar(30)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Adres] nvarchar(250)  NULL
);
GO

-- Creating table 'TblMesaj'
CREATE TABLE [dbo].[TblMesaj] (
    [MesajID] int IDENTITY(1,1) NOT NULL,
    [Gonderen] nvarchar(50)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Konu] nvarchar(100)  NULL,
    [Mesaj] nvarchar(1000)  NULL
);
GO

-- Creating table 'TblYeniKayit'
CREATE TABLE [dbo].[TblYeniKayit] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Sifre] nvarchar(20)  NULL
);
GO

-- Creating table 'TblMisafir'
CREATE TABLE [dbo].[TblMisafir] (
    [MisafirID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [TC] char(11)  NULL,
    [Mail] nvarchar(50)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Adres] nvarchar(200)  NULL,
    [Aciklama] nvarchar(250)  NULL,
    [KimlikFoto1] nvarchar(100)  NULL,
    [KimlikFoto2] nvarchar(100)  NULL,
    [Ulke] int  NULL,
    [sehir] int  NULL,
    [ilce] int  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblRezervasyon'
CREATE TABLE [dbo].[TblRezervasyon] (
    [RezervasyonID] int IDENTITY(1,1) NOT NULL,
    [Misafir] int  NULL,
    [GirisTarih] datetime  NULL,
    [CikisTarih] datetime  NULL,
    [Kisi] char(1)  NULL,
    [Oda] int  NULL,
    [RezervasyonAdSoyad] nvarchar(30)  NULL,
    [Telefon] nvarchar(20)  NULL,
    [Aciklama] nvarchar(500)  NULL,
    [Durum] int  NULL,
    [Kisi1] int  NULL,
    [Kisi2] int  NULL,
    [Kisi3] int  NULL
);
GO

-- Creating table 'TblMesaj2'
CREATE TABLE [dbo].[TblMesaj2] (
    [MesajID] int IDENTITY(1,1) NOT NULL,
    [Gonderen] nvarchar(100)  NULL,
    [Alici] nvarchar(100)  NULL,
    [Konu] nvarchar(100)  NULL,
    [Mesaj] nvarchar(max)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'TblOda'
CREATE TABLE [dbo].[TblOda] (
    [OdaID] int IDENTITY(1,1) NOT NULL,
    [OdaNo] char(3)  NULL,
    [Kat] varchar(2)  NULL,
    [Kapasite] char(1)  NULL,
    [Aciklama] nvarchar(200)  NULL,
    [Telefon] char(4)  NULL,
    [Durum] int  NULL
);
GO

-- Creating table 'TblEkibimiz'
CREATE TABLE [dbo].[TblEkibimiz] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [Unvan] nvarchar(50)  NULL,
    [Gorsel] nvarchar(250)  NULL
);
GO

-- Creating table 'TblOnRezervasyon'
CREATE TABLE [dbo].[TblOnRezervasyon] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Mail] nvarchar(50)  NULL,
    [AdSoyad] nvarchar(50)  NULL,
    [GirisTarih] datetime  NULL,
    [CikisTarih] datetime  NULL,
    [Kisi] nvarchar(1)  NULL,
    [Telefon] nvarchar(50)  NULL,
    [Aciklama] nvarchar(50)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'TblHakkimda'
ALTER TABLE [dbo].[TblHakkimda]
ADD CONSTRAINT [PK_TblHakkimda]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Tbliletisim'
ALTER TABLE [dbo].[Tbliletisim]
ADD CONSTRAINT [PK_Tbliletisim]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [MesajID] in table 'TblMesaj'
ALTER TABLE [dbo].[TblMesaj]
ADD CONSTRAINT [PK_TblMesaj]
    PRIMARY KEY CLUSTERED ([MesajID] ASC);
GO

-- Creating primary key on [ID] in table 'TblYeniKayit'
ALTER TABLE [dbo].[TblYeniKayit]
ADD CONSTRAINT [PK_TblYeniKayit]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [MisafirID] in table 'TblMisafir'
ALTER TABLE [dbo].[TblMisafir]
ADD CONSTRAINT [PK_TblMisafir]
    PRIMARY KEY CLUSTERED ([MisafirID] ASC);
GO

-- Creating primary key on [RezervasyonID] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [PK_TblRezervasyon]
    PRIMARY KEY CLUSTERED ([RezervasyonID] ASC);
GO

-- Creating primary key on [MesajID] in table 'TblMesaj2'
ALTER TABLE [dbo].[TblMesaj2]
ADD CONSTRAINT [PK_TblMesaj2]
    PRIMARY KEY CLUSTERED ([MesajID] ASC);
GO

-- Creating primary key on [OdaID] in table 'TblOda'
ALTER TABLE [dbo].[TblOda]
ADD CONSTRAINT [PK_TblOda]
    PRIMARY KEY CLUSTERED ([OdaID] ASC);
GO

-- Creating primary key on [ID] in table 'TblEkibimiz'
ALTER TABLE [dbo].[TblEkibimiz]
ADD CONSTRAINT [PK_TblEkibimiz]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TblOnRezervasyon'
ALTER TABLE [dbo].[TblOnRezervasyon]
ADD CONSTRAINT [PK_TblOnRezervasyon]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Misafir] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [FK_TblRezervasyon_TblMisafir]
    FOREIGN KEY ([Misafir])
    REFERENCES [dbo].[TblMisafir]
        ([MisafirID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblRezervasyon_TblMisafir'
CREATE INDEX [IX_FK_TblRezervasyon_TblMisafir]
ON [dbo].[TblRezervasyon]
    ([Misafir]);
GO

-- Creating foreign key on [Oda] in table 'TblRezervasyon'
ALTER TABLE [dbo].[TblRezervasyon]
ADD CONSTRAINT [FK_TblRezervasyon_TblOda]
    FOREIGN KEY ([Oda])
    REFERENCES [dbo].[TblOda]
        ([OdaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TblRezervasyon_TblOda'
CREATE INDEX [IX_FK_TblRezervasyon_TblOda]
ON [dbo].[TblRezervasyon]
    ([Oda]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------