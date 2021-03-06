USE [master]
GO
/****** Object:  Database [fyg-afs-sys-temporal]    Script Date: 28/06/2018 01:32:31 p. m. ******/
CREATE DATABASE [fyg-afs-sys-temporal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fyg-afs-sys-temporal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\fyg-afs-sys-temporal.mdf' , SIZE = 729088KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fyg-afs-sys-temporal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\fyg-afs-sys-temporal_log.ldf' , SIZE = 794624KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fyg-afs-sys-temporal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET ARITHABORT OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET RECOVERY FULL 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET  MULTI_USER 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'fyg-afs-sys-temporal', N'ON'
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET QUERY_STORE = OFF
GO
USE [fyg-afs-sys-temporal]
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
USE [fyg-afs-sys-temporal]
GO
/****** Object:  Table [dbo].[atm]    Script Date: 28/06/2018 01:32:31 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atm](
	[fecha_información] [datetime2](7) NULL,
	[no_tarjeta_transacción] [varchar](45) NULL,
	[no_cuenta_transaccion] [varchar](45) NULL,
	[banco_cliente_transacción] [varchar](45) NULL,
	[tipo_tarjeta] [varchar](45) NULL,
	[no_atm] [varchar](45) NOT NULL,
	[tipo_atm] [varchar](45) NULL,
	[tipo_transacción] [varchar](45) NULL,
	[fecha_transacción] [datetime2](7) NULL,
	[monto_transacción] [int] NULL,
	[fecha_creacion] [datetime2](7) NULL,
	[comisión_transaccion] [int] NULL,
	[ubicación_atm] [varchar](45) NULL,
	[no_cliente_dotación_atm] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 28/06/2018 01:32:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[fecha_informacion] [datetime2](7) NULL,
	[numero_de_cliente] [varchar](450) NOT NULL,
	[nombre_o_razon_social] [varchar](45) NULL,
	[apellido_paterno] [varchar](45) NULL,
	[apellido_materno] [varchar](45) NULL,
	[tipo_de_persona] [varchar](45) NULL,
	[tipo_de_sociedad] [varchar](45) NULL,
	[tipo_de_persona_moral] [varchar](45) NULL,
	[tipo_de_cliente] [varchar](45) NULL,
	[fecha_de_nacimiento] [varchar](45) NULL,
	[edad] [int] NULL,
	[estado_civil] [varchar](45) NULL,
	[sexo] [varchar](45) NULL,
	[nacionalidad] [varchar](45) NULL,
	[colonia] [varchar](45) NULL,
	[delegacion_municipio] [varchar](45) NULL,
	[estado] [varchar](45) NULL,
	[cp] [varchar](45) NULL,
	[correo_electronico] [varchar](45) NULL,
	[profesion] [varchar](45) NULL,
	[grado_maximo_de_estudios] [varchar](45) NULL,
	[actividad_economica_banxico] [varchar](45) NULL,
	[segmento] [varchar](45) NULL,
	[clientecol] [varchar](45) NULL,
	[clave_del_ejecutivo] [varchar](45) NULL,
	[nombre_del_ejecutivo] [varchar](45) NULL,
	[fecha_de_alta] [varchar](45) NULL,
	[calle] [varchar](45) NULL,
	[telefono_celular] [varchar](45) NULL,
	[telefono_casa] [varchar](45) NULL,
	[telefono_oficina] [varchar](45) NULL,
	[ingresos] [int] NULL,
	[sucursal] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[credito]    Script Date: 28/06/2018 01:32:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[credito](
	[fecha_informacion] [datetime2](7) NULL,
	[cliente_numero_de_cliente] [varchar](450) NOT NULL,
	[nombre_cliente] [varchar](45) NULL,
	[rfc] [varchar](45) NULL,
	[tipo_persona] [varchar](45) NULL,
	[cuenta_asociada] [varchar](45) NULL,
	[ejecutivo] [varchar](45) NULL,
	[sucursal] [varchar](45) NULL,
	[estatus_credito] [varchar](45) NULL,
	[tipo_banca] [varchar](45) NULL,
	[monto_inicial_crédito] [int] NULL,
	[fecha_apertura] [datetime2](7) NULL,
	[fecha_vencimiento] [datetime2](7) NULL,
	[plazo] [varchar](45) NULL,
	[tipo_de_credito] [varchar](45) NULL,
	[tipo_garantia] [varchar](45) NULL,
	[valor_garantia] [int] NULL,
	[fecha_inicio_garantía] [datetime2](7) NULL,
	[fecha_vencimiento_garantia] [datetime2](7) NULL,
	[no_categoria] [varchar](45) NULL,
	[cve_programa] [varchar](45) NOT NULL,
	[forma_de_pago] [varchar](45) NULL,
	[tasa_ordinaria] [varchar](45) NULL,
	[tipo_de_tasa] [varchar](45) NULL,
	[capital_vigente_no_exigible] [varchar](45) NULL,
	[capital_vígente_exigible] [varchar](45) NULL,
	[intereses_ordinarios_de_capital_vigente_no_exigibie] [int] NULL,
	[intereses_ordinarios_de_capital_vigente_exigible] [int] NULL,
	[iva_intereses_vigentes] [int] NULL,
	[capital_vencido_exigible] [int] NULL,
	[intereses_ordinarios_vencidos_exigibles] [int] NULL,
	[seguros] [varchar](45) NULL,
	[tasa_moratoria] [int] NULL,
	[dias_de_atraso] [int] NULL,
	[intereses_moratorios] [int] NULL,
	[iva_intereses_moratorios] [int] NULL,
	[saldo_vigente] [int] NULL,
	[saldo_vencido] [int] NULL,
	[total_adeudo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fondos_de_inversion]    Script Date: 28/06/2018 01:32:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fondos_de_inversion](
	[fecha_información] [datetime2](7) NOT NULL,
	[no_de_contrato] [int] NULL,
	[fecha_apertura] [datetime2](7) NULL,
	[fecha_operación] [datetime2](7) NULL,
	[fecha_vencimiento] [datetime2](7) NULL,
	[titulos] [varchar](45) NULL,
	[precio] [int] NULL,
	[valuacion] [int] NULL,
	[posicion_total] [int] NULL,
	[no_ejecutivo] [varchar](45) NULL,
	[nombre_ejecutivo] [varchar](45) NULL,
	[sucursal] [varchar](45) NULL,
	[canal_contratacion] [varchar](45) NULL,
	[usuario] [varchar](45) NULL,
	[productos_por_cliente_cve_producto] [varchar](45) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[liquidacion_de_prosa]    Script Date: 28/06/2018 01:32:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[liquidacion_de_prosa](
	[fecha_informacion] [datetime2](7) NOT NULL,
	[no_registro_comercio en prosa] [int] NULL,
	[clave_de_comercio] [varchar](45) NULL,
	[nombre_del_comercio] [varchar](45) NULL,
	[mcc_comercio] [varchar](45) NULL,
	[nombre_de_giro] [varchar](45) NULL,
	[familia_comercial] [varchar](45) NULL,
	[tipo_de_tarjeta] [varchar](45) NULL,
	[no_tarjeta] [varchar](45) NULL,
	[monto_transaccion] [varchar](45) NULL,
	[tipo_transaccion] [varchar](45) NULL,
	[ld_pos] [varchar](45) NULL,
	[fecha_transaccion] [datetime2](7) NULL,
	[hora_transaccion] [datetime2](7) NULL,
	[no_autorización_prosa] [int] NULL,
	[clave_switch] [varchar](45) NULL,
	[transaccional_clave_de_transacción] [varchar](45) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos_por_cliente]    Script Date: 28/06/2018 01:32:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos_por_cliente](
	[fecha_informacion] [datetime2](7) NULL,
	[cve_producto] [varchar](45) NOT NULL,
	[cliente_numero_de_cliente] [varchar](450) NOT NULL,
	[descripción_producto] [varchar](45) NULL,
	[modalidad] [varchar](45) NULL,
	[estatus] [varchar](45) NULL,
	[clave_programa] [varchar](45) NULL,
	[moneda] [varchar](45) NULL,
	[nivel_de_cuenta] [int] NULL,
	[fecha_apertura_producto] [datetime2](7) NULL,
	[fecha_vencimiento] [datetime2](7) NULL,
	[número_de_cuenta] [int] NULL,
	[no._tarjeta] [char](16) NULL,
	[saldo_promedio] [int] NULL,
	[saldo_vigente_capital] [int] NULL,
	[saldo_vigente_interes] [int] NULL,
	[saldo_al_corte] [int] NULL,
	[cve_segmento] [varchar](45) NULL,
	[clave_ejecutivo_cuenta] [varchar](45) NULL,
	[nombre_ejecutivo] [varchar](45) NULL,
	[canal] [varchar](45) NULL,
	[cve_sucursal] [varchar](45) NULL,
	[nornbre_sucursal] [varchar](45) NULL,
	[fecha_originacion_apertura] [datetime2](7) NULL,
	[fecha_termino] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaccional]    Script Date: 28/06/2018 01:32:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaccional](
	[fecha_información] [datetime2](7) NULL,
	[cliente_numero_de_cliente] [varchar](450) NOT NULL,
	[clave_de_transacción] [varchar](45) NOT NULL,
	[descripción_transacción] [varchar](45) NULL,
	[transaccionalcol] [varchar](45) NULL,
	[tipo_transaccion] [varchar](45) NULL,
	[canal_de_transacción] [varchar](45) NULL,
	[cve_sucursal] [varchar](45) NULL,
	[nombre_sucursal_opera] [varchar](45) NULL,
	[cve_usuario] [varchar](45) NULL,
	[no_tarjeta] [varchar](45) NULL,
	[producto] [varchar](45) NULL,
	[giro] [varchar](45) NULL,
	[tipo_de_movimiento] [varchar](45) NULL,
	[moneda] [varchar](45) NULL,
	[total_transacciones] [varchar](45) NULL,
	[banco_destino] [varchar](45) NULL,
	[cuenta_destino] [varchar](45) NULL,
	[pais_destino] [varchar](45) NULL,
	[ciudad] [varchar](45) NULL,
	[nombre_beneficiario] [varchar](45) NULL,
	[corresponsal] [varchar](45) NULL,
	[monto_transacción] [int] NULL,
	[atm_no_atm] [varchar](45) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [fyg-afs-sys-temporal] SET  READ_WRITE 
GO
