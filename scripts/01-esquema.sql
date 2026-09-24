IF DB_ID('GestionAcademica') IS NULL
BEGIN
    CREATE DATABASE GestionAcademica COLLATE Modern_Spanish_CI_AI;
END
GO

USE GestionAcademica;
GO

/* ------------------------- Tablas ------------------------- */

IF OBJECT_ID('dbo.Profesor') IS NULL
CREATE TABLE dbo.Profesor
(
    id                 int            IDENTITY(1,1) NOT NULL,
    nombre             nvarchar(150)  NOT NULL,
    fechaCreacion      datetime2(3)   NOT NULL CONSTRAINT DF_Profesor_FechaCreacion DEFAULT (sysutcdatetime()),
    fechaActualizacion datetime2(3)   NULL,
    CONSTRAINT PK_Profesor PRIMARY KEY CLUSTERED (id)
);
GO

IF OBJECT_ID('dbo.Estudiante') IS NULL
CREATE TABLE dbo.Estudiante
(
    id                 int            IDENTITY(1,1) NOT NULL,
    nombre             nvarchar(150)  NOT NULL,
    fechaCreacion      datetime2(3)   NOT NULL CONSTRAINT DF_Estudiante_FechaCreacion DEFAULT (sysutcdatetime()),
    fechaActualizacion datetime2(3)   NULL,
    CONSTRAINT PK_Estudiante PRIMARY KEY CLUSTERED (id)
);
GO

IF OBJECT_ID('dbo.Nota') IS NULL
CREATE TABLE dbo.Nota
(
    id                 int            IDENTITY(1,1) NOT NULL,
    nombre             nvarchar(150)  NOT NULL,
    idProfesor         int            NOT NULL,
    idEstudiante       int            NOT NULL,
    valor              decimal(4,2)   NOT NULL,
    fechaCreacion      datetime2(3)   NOT NULL CONSTRAINT DF_Nota_FechaCreacion DEFAULT (sysutcdatetime()),
    fechaActualizacion datetime2(3)   NULL,
    CONSTRAINT PK_Nota PRIMARY KEY CLUSTERED (id),
    CONSTRAINT CK_Nota_Valor CHECK (valor >= 0 AND valor <= 5),
    CONSTRAINT FK_Nota_Profesor   FOREIGN KEY (idProfesor)   REFERENCES dbo.Profesor(id),
    CONSTRAINT FK_Nota_Estudiante FOREIGN KEY (idEstudiante) REFERENCES dbo.Estudiante(id)
);
GO

IF OBJECT_ID('dbo.Usuario') IS NULL
CREATE TABLE dbo.Usuario
(
    id                 int            IDENTITY(1,1) NOT NULL,
    nombreUsuario      nvarchar(50)   NOT NULL,
    nombreCompleto     nvarchar(150)  NOT NULL,
    contrasenaHash     nvarchar(100)  NOT NULL, 
    rol                nvarchar(20)   NOT NULL,
    activo             bit            NOT NULL CONSTRAINT DF_Usuario_Activo DEFAULT (1),
    fechaCreacion      datetime2(3)   NOT NULL CONSTRAINT DF_Usuario_FechaCreacion DEFAULT (sysutcdatetime()),
    fechaActualizacion datetime2(3)   NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY CLUSTERED (id),
    CONSTRAINT CK_Usuario_Rol CHECK (rol IN (N'Admin', N'Lector'))
);
GO

/* ------------------------- Indices ------------------------- */

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'UX_Usuario_NombreUsuario')
    CREATE UNIQUE NONCLUSTERED INDEX UX_Usuario_NombreUsuario ON dbo.Usuario (nombreUsuario);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Profesor_Nombre')
    CREATE NONCLUSTERED INDEX IX_Profesor_Nombre ON dbo.Profesor (nombre);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Estudiante_Nombre')
    CREATE NONCLUSTERED INDEX IX_Estudiante_Nombre ON dbo.Estudiante (nombre);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Nota_Nombre')
    CREATE NONCLUSTERED INDEX IX_Nota_Nombre ON dbo.Nota (nombre);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Nota_IdEstudiante')
    CREATE NONCLUSTERED INDEX IX_Nota_IdEstudiante ON dbo.Nota (idEstudiante) INCLUDE (valor);
GO

IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE name = 'IX_Nota_IdProfesor')
    CREATE NONCLUSTERED INDEX IX_Nota_IdProfesor ON dbo.Nota (idProfesor) INCLUDE (valor);
GO
