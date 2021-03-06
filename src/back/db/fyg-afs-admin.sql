USE [master]
GO
/****** Object:  Database [fyg-afs-admin]    Script Date: 28/06/2018 01:29:17 p. m. ******/
CREATE DATABASE [fyg-afs-admin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fyg-afs-admin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\fyg-afs-admin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fyg-afs-admin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\fyg-afs-admin_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [fyg-afs-admin] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fyg-afs-admin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fyg-afs-admin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET ARITHABORT OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fyg-afs-admin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fyg-afs-admin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [fyg-afs-admin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fyg-afs-admin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET RECOVERY FULL 
GO
ALTER DATABASE [fyg-afs-admin] SET  MULTI_USER 
GO
ALTER DATABASE [fyg-afs-admin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fyg-afs-admin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fyg-afs-admin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fyg-afs-admin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [fyg-afs-admin] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'fyg-afs-admin', N'ON'
GO
ALTER DATABASE [fyg-afs-admin] SET QUERY_STORE = OFF
GO
USE [fyg-afs-admin]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [fyg-afs-admin]
GO
/****** Object:  Table [dbo].[archivos]    Script Date: 28/06/2018 01:29:19 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archivos](
	[created_at] [datetime2](7) NULL,
	[archivo] [varchar](max) NULL,
	[sucursal_clave] [varchar](45) NOT NULL,
	[rubro] [varchar](45) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bitacora]    Script Date: 28/06/2018 01:29:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacora](
	[created_at] [datetime2](7) NULL,
	[mensaje] [varchar](max) NOT NULL,
	[archivo] [varchar](max) NOT NULL,
	[error] [varchar](max) NULL,
	[sucursal_clave] [varchar](45) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ejecucion]    Script Date: 28/06/2018 01:29:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ejecucion](
	[tiempo_ejecucion] [time](7) NULL,
	[carpeta_recoleccion] [varchar](max) NULL,
	[carpeta_fallidos] [varchar](max) NULL,
	[carpeta_finalizados] [varchar](max) NULL,
	[sucursal_clave] [varchar](45) NOT NULL,
	[rubro] [varchar](45) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 28/06/2018 01:29:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[clave] [varchar](45) NOT NULL,
	[nombres] [varchar](45) NULL,
	[apellido_paterno] [varchar](45) NULL,
	[apellido_materno] [varchar](45) NULL,
	[edad] [int] NULL,
	[domicilio] [varchar](45) NULL,
	[puesto] [varchar](45) NULL,
	[correo] [varchar](45) NULL,
	[telefono] [varchar](45) NULL,
	[contrasenia] [varchar](45) NULL,
	[rol] [int] NULL,
	[sucursal_clave] [varchar](45) NOT NULL,
	[prvilegios] [varchar](max) NULL,
 CONSTRAINT [pk_empleados] PRIMARY KEY CLUSTERED 
(
	[clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empresa]    Script Date: 28/06/2018 01:29:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empresa](
	[clave] [varchar](45) NOT NULL,
	[nombre] [varchar](45) NULL,
	[ubicacion] [varchar](45) NULL,
	[giro] [varchar](45) NULL,
 CONSTRAINT [pk_empresa] PRIMARY KEY CLUSTERED 
(
	[clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notificaciones]    Script Date: 28/06/2018 01:29:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notificaciones](
	[idnotificacion] [int] NOT NULL,
	[descripcion_notificacion] [varchar](45) NULL,
	[fecha_creacion] [datetime2](7) NULL,
	[vista] [smallint] NULL,
	[empleados_clave] [varchar](45) NOT NULL,
 CONSTRAINT [pk_notificaciones] PRIMARY KEY CLUSTERED 
(
	[idnotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reglas]    Script Date: 28/06/2018 01:29:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reglas](
	[idregla] [int] NOT NULL,
	[regla] [varchar](45) NULL,
	[tipo_de_transaccion_idtipo] [int] NOT NULL,
 CONSTRAINT [pk_reglas] PRIMARY KEY CLUSTERED 
(
	[idregla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reportes]    Script Date: 28/06/2018 01:29:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reportes](
	[idreporte] [int] NOT NULL,
	[fecha_creacion] [datetime2](7) NULL,
	[ubicacion] [varchar](45) NULL,
	[empleados_clave] [varchar](45) NOT NULL,
 CONSTRAINT [pk_reportes] PRIMARY KEY CLUSTERED 
(
	[idreporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 28/06/2018 01:29:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[clave] [varchar](45) NOT NULL,
	[nombre] [varchar](45) NULL,
	[ubicacion] [varchar](45) NULL,
	[nivel] [varchar](45) NULL,
	[empresa_clave] [varchar](45) NOT NULL,
 CONSTRAINT [pk_sucursal] PRIMARY KEY CLUSTERED 
(
	[clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_de_transaccion]    Script Date: 28/06/2018 01:29:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_de_transaccion](
	[idtipo] [int] NOT NULL,
	[rubro] [varchar](45) NULL,
	[empresa_clave] [varchar](45) NOT NULL,
 CONSTRAINT [pk_tipo_de_transaccion] PRIMARY KEY CLUSTERED 
(
	[idtipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fk_empleados_sucursal1_idx]    Script Date: 28/06/2018 01:29:22 p. m. ******/
CREATE NONCLUSTERED INDEX [fk_empleados_sucursal1_idx] ON [dbo].[empleados]
(
	[sucursal_clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fk_notificaciones_empleados1_idx]    Script Date: 28/06/2018 01:29:22 p. m. ******/
CREATE NONCLUSTERED INDEX [fk_notificaciones_empleados1_idx] ON [dbo].[notificaciones]
(
	[empleados_clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fk_reglas_tipo_de_transaccion1_idx]    Script Date: 28/06/2018 01:29:22 p. m. ******/
CREATE NONCLUSTERED INDEX [fk_reglas_tipo_de_transaccion1_idx] ON [dbo].[reglas]
(
	[tipo_de_transaccion_idtipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fk_reportes_empleados1_idx]    Script Date: 28/06/2018 01:29:22 p. m. ******/
CREATE NONCLUSTERED INDEX [fk_reportes_empleados1_idx] ON [dbo].[reportes]
(
	[empleados_clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fk_sucursal_empresa_idx]    Script Date: 28/06/2018 01:29:22 p. m. ******/
CREATE NONCLUSTERED INDEX [fk_sucursal_empresa_idx] ON [dbo].[sucursal]
(
	[empresa_clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [fk_tipo_de_transaccion_empresa1_idx]    Script Date: 28/06/2018 01:29:22 p. m. ******/
CREATE NONCLUSTERED INDEX [fk_tipo_de_transaccion_empresa1_idx] ON [dbo].[tipo_de_transaccion]
(
	[empresa_clave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[empleados] ADD  DEFAULT ((3)) FOR [rol]
GO
ALTER TABLE [dbo].[ejecucion]  WITH CHECK ADD  CONSTRAINT [fk_ejecucion_empresa1] FOREIGN KEY([sucursal_clave])
REFERENCES [dbo].[sucursal] ([clave])
GO
ALTER TABLE [dbo].[ejecucion] CHECK CONSTRAINT [fk_ejecucion_empresa1]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_empleados_sucursal1] FOREIGN KEY([sucursal_clave])
REFERENCES [dbo].[sucursal] ([clave])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_empleados_sucursal1]
GO
ALTER TABLE [dbo].[notificaciones]  WITH CHECK ADD  CONSTRAINT [fk_notificaciones_empleados1] FOREIGN KEY([empleados_clave])
REFERENCES [dbo].[empleados] ([clave])
GO
ALTER TABLE [dbo].[notificaciones] CHECK CONSTRAINT [fk_notificaciones_empleados1]
GO
ALTER TABLE [dbo].[reglas]  WITH CHECK ADD  CONSTRAINT [fk_reglas_tipo_de_transaccion1] FOREIGN KEY([tipo_de_transaccion_idtipo])
REFERENCES [dbo].[tipo_de_transaccion] ([idtipo])
GO
ALTER TABLE [dbo].[reglas] CHECK CONSTRAINT [fk_reglas_tipo_de_transaccion1]
GO
ALTER TABLE [dbo].[reportes]  WITH CHECK ADD  CONSTRAINT [fk_reportes_empleados1] FOREIGN KEY([empleados_clave])
REFERENCES [dbo].[empleados] ([clave])
GO
ALTER TABLE [dbo].[reportes] CHECK CONSTRAINT [fk_reportes_empleados1]
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_empresa] FOREIGN KEY([empresa_clave])
REFERENCES [dbo].[empresa] ([clave])
GO
ALTER TABLE [dbo].[sucursal] CHECK CONSTRAINT [fk_sucursal_empresa]
GO
ALTER TABLE [dbo].[tipo_de_transaccion]  WITH CHECK ADD  CONSTRAINT [fk_tipo_de_transaccion_empresa1] FOREIGN KEY([empresa_clave])
REFERENCES [dbo].[empresa] ([clave])
GO
ALTER TABLE [dbo].[tipo_de_transaccion] CHECK CONSTRAINT [fk_tipo_de_transaccion_empresa1]
GO
USE [master]
GO
ALTER DATABASE [fyg-afs-admin] SET  READ_WRITE 
GO
