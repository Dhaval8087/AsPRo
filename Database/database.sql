USE [master]
GO
/****** Object:  Database [AsPRoTasksCore]    Script Date: 5/17/2020 6:46:20 PM ******/
CREATE DATABASE [AsPRoTasksCore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AsPRoTasksCore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\AsPRoTasksCore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AsPRoTasksCore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\AsPRoTasksCore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AsPRoTasksCore] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AsPRoTasksCore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AsPRoTasksCore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET ARITHABORT OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AsPRoTasksCore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AsPRoTasksCore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AsPRoTasksCore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AsPRoTasksCore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AsPRoTasksCore] SET  MULTI_USER 
GO
ALTER DATABASE [AsPRoTasksCore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AsPRoTasksCore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AsPRoTasksCore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AsPRoTasksCore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AsPRoTasksCore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AsPRoTasksCore] SET QUERY_STORE = OFF
GO
USE [AsPRoTasksCore]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AsPRoTasksCore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/17/2020 6:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/17/2020 6:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [AsPRoTasksCore] SET  READ_WRITE 
GO
