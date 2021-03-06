USE [master]
GO
/****** Object:  Database [AUTOMOTRIZ]    Script Date: 06/05/2021 12:42:17 a. m. ******/
CREATE DATABASE [AUTOMOTRIZ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AUTOMOTRIZ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AUTOMOTRIZ.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AUTOMOTRIZ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\AUTOMOTRIZ_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AUTOMOTRIZ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AUTOMOTRIZ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AUTOMOTRIZ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET ARITHABORT OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AUTOMOTRIZ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AUTOMOTRIZ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AUTOMOTRIZ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AUTOMOTRIZ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AUTOMOTRIZ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AUTOMOTRIZ] SET  MULTI_USER 
GO
ALTER DATABASE [AUTOMOTRIZ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AUTOMOTRIZ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AUTOMOTRIZ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AUTOMOTRIZ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [AUTOMOTRIZ]
GO
USE [AUTOMOTRIZ]
GO
/****** Object:  Sequence [dbo].[hibernate_sequence]    Script Date: 06/05/2021 12:42:17 a. m. ******/
CREATE SEQUENCE [dbo].[hibernate_sequence] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 06/05/2021 12:42:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Perfil] [varchar](50) NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[productos]    Script Date: 06/05/2021 12:42:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[id] [bigint] NOT NULL,
	[cantidad] [varchar](255) NULL,
	[fecha] [varchar](255) NULL,
	[nombre] [varchar](255) NULL,
	[usuario] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 06/05/2021 12:42:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NULL,
	[perfil] [int] NULL,
	[edad] [int] NULL,
	[fechaIngreso] [date] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Perfil] ON 

INSERT [dbo].[Perfil] ([id], [Perfil]) VALUES (1, N'Asesor de ventas')
INSERT [dbo].[Perfil] ([id], [Perfil]) VALUES (2, N'Administrador')
INSERT [dbo].[Perfil] ([id], [Perfil]) VALUES (3, N'Soporte')
SET IDENTITY_INSERT [dbo].[Perfil] OFF
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (3, N'1', N'2020-02-05', N'jose', N'1')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (4, N'11', N'2020-02-01', N'camara', N'5')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (11, N'14', N'2020-05-01', N'consoladores', N'2')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (12, N'1000', N'1414-12-05', N'billeteras', N'4')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (13, N'14', N'2020-05-14', N'flores', N'5')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (14, N'43', N'2020-07-14', N'AutX123243', N'3')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (15, N'43', N'2020-12-05', N'quarter', N'2')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (16, N'1232', N'1214-05-01', N'casa', N'2')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (17, N'14', N'2020-12-01', N'cobijas', N'4')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (18, N'43', N'2021-02-14', N'cepillos', N'2')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (20, N'13', N'2021-05-05', N'papeles', N'1')
INSERT [dbo].[productos] ([id], [cantidad], [fecha], [nombre], [usuario]) VALUES (24, N'14', N'2021-01-01', N'jeans', N'4')
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [perfil], [edad], [fechaIngreso]) VALUES (1, N'Harold Camacho', 2, 25, CAST(0xCC410B00 AS Date))
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [perfil], [edad], [fechaIngreso]) VALUES (2, N'Francisco Acosta', 1, 28, CAST(0xA2410B00 AS Date))
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [perfil], [edad], [fechaIngreso]) VALUES (3, N'Sharon Rodriguez', 1, 34, CAST(0xE7400B00 AS Date))
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [perfil], [edad], [fechaIngreso]) VALUES (4, N'Juan Camilo', 3, 26, CAST(0xB5400B00 AS Date))
INSERT [dbo].[Usuarios] ([id], [nombreUsuario], [perfil], [edad], [fechaIngreso]) VALUES (5, N'Carolina Gonzalez', 1, 29, CAST(0x94400B00 AS Date))
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
USE [master]
GO
ALTER DATABASE [AUTOMOTRIZ] SET  READ_WRITE 
GO
