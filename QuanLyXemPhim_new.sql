---- 1. Khoi dong tat mo lai SSMS truoc khi drop DB
--USE [master]
--drop DATABASE [QuanLyXemPhim]
--GO
/****** Object:  Database [QuanLyXemPhim]    Script Date: 06/05/2025 16:50:13 ******/
CREATE DATABASE [QuanLyXemPhim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyXemPhim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyXemPhim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyXemPhim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QuanLyXemPhim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyXemPhim] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyXemPhim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyXemPhim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyXemPhim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyXemPhim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyXemPhim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyXemPhim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyXemPhim] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyXemPhim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyXemPhim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyXemPhim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyXemPhim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyXemPhim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyXemPhim] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyXemPhim', N'ON'
GO
ALTER DATABASE [QuanLyXemPhim] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyXemPhim] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyXemPhim]
GO
/****** Object:  User [NV08]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV08] FOR LOGIN [NV08] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV07]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV07] FOR LOGIN [NV07] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV06]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV06] FOR LOGIN [NV06] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV05]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV05] FOR LOGIN [NV05] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV04]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV04] FOR LOGIN [NV04] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV03]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV03] FOR LOGIN [NV03] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NV02]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [NV02] FOR LOGIN [NV02] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 06/05/2025 16:50:13 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [Staff]    Script Date: 06/05/2025 16:50:13 ******/
CREATE ROLE [Staff]
GO
/****** Object:  DatabaseRole [Manager]    Script Date: 06/05/2025 16:50:13 ******/
CREATE ROLE [Manager]
GO
ALTER ROLE [Staff] ADD MEMBER [NV08]
GO
ALTER ROLE [Staff] ADD MEMBER [NV07]
GO
ALTER ROLE [Staff] ADD MEMBER [NV06]
GO
ALTER ROLE [Staff] ADD MEMBER [NV05]
GO
ALTER ROLE [Staff] ADD MEMBER [NV04]
GO
ALTER ROLE [Staff] ADD MEMBER [NV03]
GO
ALTER ROLE [Staff] ADD MEMBER [NV02]
GO
ALTER ROLE [Manager] ADD MEMBER [admin]
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_laThanhVien]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----Function kiểm tra có tồn tại khách hàng thành viên thông qua số điện thoại
CREATE FUNCTION [dbo].[FUNC_laThanhVien](@phone varchar(50))
RETURNS BIT
	BEGIN
		DECLARE @isMember BIT
		SET @isMember = 0;
		IF EXISTS(SELECT * FROM KhachHang WHERE SoDienThoai = @phone)
			BEGIN
				SET @isMember = 1;
		END
		RETURN @isMember
	END
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_layGiaVe]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- Lấy giá vé
CREATE FUNCTION [dbo].[FUNC_layGiaVe] (@Id varchar(50))
RETURNS money as
	BEGIN
		DECLARE @Price money
		SELECT @Price=GiaVe FROM CaChieu WHERE CaChieu.MaCaChieu = @Id
		RETURN @Price
	END 
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [varchar](50) NOT NULL,
	[TenPhim] [nvarchar](100) NOT NULL,
	[MoTa] [nvarchar](1000) NULL,
	[ThoiLuong] [float] NOT NULL,
	[NgayKhoiChieu] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
	[QuocGia] [nvarchar](50) NOT NULL,
	[DaoDien] [nvarchar](100) NULL,
	[NamSX] [int] NOT NULL,
	[GioiHanTuoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaChieu](
	[MaCaChieu] [varchar](50) NOT NULL,
	[ThoiGianChieu] [datetime] NOT NULL,
	[ThoiGianKetThuc] [datetime] NOT NULL,
	[MaPhong] [varchar](50) NOT NULL,
	[MaPhim] [varchar](50) NOT NULL,
	[GiaVe] [money] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[MaRap] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCaChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_layPhimTheoNgayChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FUNC_layPhimTheoNgayChieu](@NgayChieu DATE)
RETURNS TABLE
AS
RETURN
(
    SELECT p.MaPhim, p.TenPhim, p.MoTa, p.ThoiLuong, p.NgayKhoiChieu, p.NgayKetThuc, p.QuocGia, p.DaoDien, p.NamSX, p.GioiHanTuoi
    FROM Phim AS p
    INNER JOIN CaChieu AS cc ON p.MaPhim = cc.MaPhim
    WHERE cc.TrangThai = 1
    AND CAST(cc.ThoiGianChieu AS DATE) <= @NgayChieu
    AND CAST(cc.ThoiGianKetThuc AS DATE) >= @NgayChieu
);
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_layPhimTheoThangChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FUNC_layPhimTheoThangChieu](@NgayChieu DATE)
RETURNS TABLE
AS
RETURN
(
    SELECT DISTINCT 
        p.MaPhim, p.TenPhim, p.MoTa, p.ThoiLuong, p.NgayKhoiChieu, p.NgayKetThuc, 
        p.QuocGia, p.DaoDien, p.NamSX, p.GioiHanTuoi
    FROM Phim AS p
    JOIN CaChieu AS cc ON p.MaPhim = cc.MaPhim
    WHERE cc.TrangThai = 1
    AND YEAR(cc.ThoiGianChieu) = YEAR(@NgayChieu) 
    AND MONTH(cc.ThoiGianChieu) = MONTH(@NgayChieu)
);
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_layCaChieuTheoTenPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FUNC_layCaChieuTheoTenPhim](@TenPhim NVARCHAR(100))
RETURNS TABLE
AS
	RETURN
	(
		SELECT cc.MaCaChieu, cc.MaRap, p.TenPhim, cc.ThoiGianChieu, cc.ThoiGianKetThuc, cc.TrangThai, cc.MaPhong
		FROM CaChieu as cc
		JOIN Phim as p ON p.MaPhim = cc.MaPhim
		WHERE cc.TrangThai = 1 
			AND p.TenPhim LIKE '%' + @TenPhim + '%'
	);
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idNV] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](100) NULL,
	[CMND] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FUNC_layTatCaNhanVien]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------STORE NHÂN VIÊN
----Store lấy tất cả các nhân viên 
CREATE FUNCTION [dbo].[FUNC_layTatCaNhanVien]()
RETURNS TABLE AS
	RETURN SELECT * FROM NhanVien
GO
/****** Object:  Table [dbo].[ChoNgoi]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChoNgoi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hang] [char](1) NOT NULL,
	[So] [int] NOT NULL,
	[MaPhong] [varchar](50) NOT NULL,
	[MaKhachHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComboBapNuoc]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComboBapNuoc](
	[MaCombo] [int] IDENTITY(1,1) NOT NULL,
	[TenCombo] [nvarchar](100) NULL,
	[Gia] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCombo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](100) NULL,
	[NamSinh] [int] NOT NULL,
	[SoDienThoai] [varchar](50) NULL,
	[DiemTichLuy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLoaiPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiPhim](
	[idPhim] [varchar](50) NOT NULL,
	[idTheLoai] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PhanLoaiPhim] PRIMARY KEY CLUSTERED 
(
	[idPhim] ASC,
	[idTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPhong] [varchar](50) NOT NULL,
	[TenPhong] [nvarchar](100) NOT NULL,
	[SoChoNgoi] [int] NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[SoHangGhe] [int] NOT NULL,
	[SoGheMotHang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rap]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rap](
	[MaRap] [varchar](50) NOT NULL,
	[TenRap] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rap] PRIMARY KEY CLUSTERED 
(
	[MaRap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[UserName] [nvarchar](100) NOT NULL,
	[Pass] [varchar](1000) NOT NULL,
	[LoaiTK] [int] NOT NULL,
	[idNV] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaLoaiPhim] [varchar](50) NOT NULL,
	[TenTheLoai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LoaiVe] [int] NULL,
	[MaCaChieu] [varchar](50) NULL,
	[MaGheNgoi] [varchar](50) NULL,
	[MaKhachHang] [int] NULL,
	[TrangThai] [int] NOT NULL,
	[TienBanVe] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0001', CAST(N'2025-01-24T19:50:00.000' AS DateTime), CAST(N'2025-01-24T23:00:00.000' AS DateTime), N'R01', N'P0001', 90.0000, 1, N'OMG-01')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0002', CAST(N'2025-01-23T08:50:00.000' AS DateTime), CAST(N'2025-01-23T11:00:00.000' AS DateTime), N'R01', N'P0002', 110.0000, 1, N'OMG-02')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0003', CAST(N'2025-02-11T17:30:00.000' AS DateTime), CAST(N'2025-02-11T20:00:00.000' AS DateTime), N'R01', N'P0003', 90.0000, 1, N'OMG-03')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0004', CAST(N'2025-03-25T22:00:00.000' AS DateTime), CAST(N'2025-03-25T01:00:00.000' AS DateTime), N'R03', N'P0004', 90.0000, 0, N'OMG-04')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0005', CAST(N'2025-05-01T20:30:00.000' AS DateTime), CAST(N'2025-05-01T22:30:00.000' AS DateTime), N'R01', N'P0007', 100.0000, 1, N'OMG-01')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0006', CAST(N'2025-05-18T21:30:00.000' AS DateTime), CAST(N'2025-05-18T23:00:00.000' AS DateTime), N'R04', N'P0006', 90.0000, 1, N'OMG-03')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0007', CAST(N'2025-05-18T18:00:00.000' AS DateTime), CAST(N'2025-05-18T20:00:00.000' AS DateTime), N'R03', N'P0006', 90.0000, 0, N'OMG-03')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0008', CAST(N'2025-05-15T20:00:00.000' AS DateTime), CAST(N'2025-05-15T22:00:00.000' AS DateTime), N'R04', N'P0009', 100.0000, 1, N'OMG-08')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0009', CAST(N'2025-05-17T20:00:00.000' AS DateTime), CAST(N'2025-05-17T21:30:00.000' AS DateTime), N'R05', N'P0008', 90.0000, 1, N'OMG-04')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0010', CAST(N'2025-05-20T18:00:00.000' AS DateTime), CAST(N'2025-05-20T19:00:00.000' AS DateTime), N'R06', N'P0008', 90.0000, 1, N'OMG-04')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0011', CAST(N'2025-05-20T16:30:00.000' AS DateTime), CAST(N'2025-05-20T17:30:00.000' AS DateTime), N'R02', N'P0004', 90.0000, 1, N'OMG-01')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0012', CAST(N'2025-05-24T17:30:00.000' AS DateTime), CAST(N'2025-05-24T19:30:00.000' AS DateTime), N'R06', N'P0005', 90.0000, 0, N'OMG-05')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0013', CAST(N'2025-05-22T21:30:00.000' AS DateTime), CAST(N'2025-05-22T23:30:00.000' AS DateTime), N'R03', N'P0010', 90.0000, 0, N'OMG-05')
INSERT [dbo].[CaChieu] ([MaCaChieu], [ThoiGianChieu], [ThoiGianKetThuc], [MaPhong], [MaPhim], [GiaVe], [TrangThai], [MaRap]) VALUES (N'MCC0014', CAST(N'2025-05-21T17:30:00.000' AS DateTime), CAST(N'2025-05-21T19:30:00.000' AS DateTime), N'R05', N'P0011', 100.0000, 0, N'OMG-07')
GO
SET IDENTITY_INSERT [dbo].[ComboBapNuoc] ON 

INSERT [dbo].[ComboBapNuoc] ([MaCombo], [TenCombo], [Gia]) VALUES (1, N'MY COMBO1', 95.0000)
INSERT [dbo].[ComboBapNuoc] ([MaCombo], [TenCombo], [Gia]) VALUES (2, N'MY COMBO2', 125.0000)
INSERT [dbo].[ComboBapNuoc] ([MaCombo], [TenCombo], [Gia]) VALUES (3, N'SPECIAL COMBO1', 249.0000)
INSERT [dbo].[ComboBapNuoc] ([MaCombo], [TenCombo], [Gia]) VALUES (4, N'SPECIAL COMBO2', 299.0000)
SET IDENTITY_INSERT [dbo].[ComboBapNuoc] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (1, N'Đỗ Dương Quá', N'TP.Thủ Đức', 2002, N'0912990988', 11)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (2, N'Phương Mỹ Chi', N'TP.Thủ Đức', 2002, N'0912922988', 5)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (3, N'Nguyễn Minh Quốc', N'Quận 1', 1995, N'0987665456', 10)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (4, N'Trương Minh Quan', N'Quận Bình Thạnh', 2000, N'0983456789', 12)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (5, N'Đặng Hữu Phúc', N'Quận Bình Thạnh', 1999, N'0934567823', 15)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (6, N'Đỗ Quỳnh Giang', N'Đồng Nai', 2003, N'0876543221', 20)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (7, N'Bùi Huỳnh Ngọc Linh', N'Quảng Ngãi', 2004, N'0994456788', 25)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (8, N'Triệu Mẫn', N'Quảng Ngãi', 1996, N'0456789234', 5)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (9, N'Trương Thị Bích Thủy', N'Phú Yên', 2002, N'0354117615', 15)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (10, N'Phạm Đăng Trình', N'Bình Định', 1996, N'0456789805', 5)
INSERT [dbo].[KhachHang] ([MaKH], [TenKhachHang], [Diachi], [NamSinh], [SoDienThoai], [DiemTichLuy]) VALUES (11, N'Trần Bảo An', N'Đồng Nai', 2003, N'0329006325', 5)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV01', N'Admin', CAST(N'2002-10-29' AS Date), N'Admin', N'0329039687', 123456789)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV02', N'Bùi Thanh Duy', CAST(N'2002-01-01' AS Date), N'Phú Yên', N'0344968599', 75234567)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV03', N'Phạm Nguyễn Nhựt Trường', CAST(N'2002-02-02' AS Date), N'Tiền Giang', N'0349685554', 75234568)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV04', N'Phan Quốc Lưu', CAST(N'2002-03-03' AS Date), N'Thủ Đức', N'0379814088', 75234569)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV05', N'Vũ Hoàng Anh', CAST(N'2002-05-05' AS Date), N'Đồng Nai', N'0385511012', 75234560)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV06', N'Vân Anh', CAST(N'2000-02-25' AS Date), N'Đồng Tháp', N'0934567891', 213467321)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV07', N'Vân Mỹ Lan', CAST(N'1998-02-25' AS Date), N'Cần Thơ', N'0397091782', 215620175)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV08', N'Vân Mỹ Lên', CAST(N'2003-02-25' AS Date), N'An Giang', N'0890984544', 904567345)
INSERT [dbo].[NhanVien] ([idNV], [HoTen], [NgaySinh], [DiaChi], [SDT], [CMND]) VALUES (N'NV09', N'Ngọc Lan Anh', CAST(N'2000-02-25' AS Date), N'Khánh Hòa', N'0890984767', 345767895)
GO
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0001', N'T02')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0001', N'T05')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0002', N'T01')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0002', N'T04')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0002', N'T05')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0003', N'T02')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0003', N'T05')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0003', N'T07')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0003', N'T09')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0004', N'T03')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0004', N'T06')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0004', N'T07')
INSERT [dbo].[PhanLoaiPhim] ([idPhim], [idTheLoai]) VALUES (N'P0004', N'T08')
GO
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0001', N'LaLaland', NULL, 120, CAST(N'2025-02-14' AS Date), CAST(N'2025-03-14' AS Date), N'Hoa Kì', N'Damien Chazelle', 2016, 12)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0002', N'Harry Potter và Hòn Đá Phù Thủy', NULL, 120, CAST(N'2025-01-11' AS Date), CAST(N'2025-02-15' AS Date), N'Anh', N'Chris Columbus', 2018, 13)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0003', N'Chúa tể của những chiếc nhẫn', NULL, 150, CAST(N'2025-02-01' AS Date), CAST(N'2025-02-28' AS Date), N'Mỹ', N'Ralph Bakshi', 2016, 13)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0004', N'Bố Già', NULL, 120, CAST(N'2025-01-14' AS Date), CAST(N'2025-01-31' AS Date), N'Việt Nam', N'Trấn Thành', 2018, 9)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0005', N'Lật mặt 8: Vòng tay nắng', NULL, 128, CAST(N'2025-05-01' AS Date), CAST(N'2025-05-20' AS Date), N'Việt Nam', N'Lý Hải', 2024, 13)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0006', N'Địa đạo: Mặt trời trong bóng tối', NULL, 175, CAST(N'2025-05-12' AS Date), CAST(N'2025-05-30' AS Date), N'Việt Nam', N'Bùi Thạc Chuyên', 2024, 16)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0007', N'Dịch vụ giao hàng của Phù Thủy Kiki', NULL, 135, CAST(N'2025-05-01' AS Date), CAST(N'2025-05-20' AS Date), N'Nhật Bản', N'MiYazaki Hayao', 1989, 5)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0008', N'Cô bé người cá Ponyo', NULL, 103, CAST(N'2025-05-16' AS Date), CAST(N'2025-05-05' AS Date), N'Nhật Bản', N'MiYazaki Hayao', 2008, 5)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0009', N'Tết ở làng địa ngục', N'', 109, CAST(N'2025-05-12' AS Date), CAST(N'2025-05-30' AS Date), N'Việt Nam', N'Trần Hữu Tấn', 2024, 13)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0010', N'Gã hề ma quái 2', NULL, 169, CAST(N'2025-06-01' AS Date), CAST(N'2025-01-07' AS Date), N'Hoa Kì', N'Andy Muschietti', 2019, 16)
INSERT [dbo].[Phim] ([MaPhim], [TenPhim], [MoTa], [ThoiLuong], [NgayKhoiChieu], [NgayKetThuc], [QuocGia], [DaoDien], [NamSX], [GioiHanTuoi]) VALUES (N'P0011', N'Train to Busan', N'', 118, CAST(N'2025-04-14' AS Date), CAST(N'2025-05-14' AS Date), N'Hàn Quốc', N'Yeon-Sang-Ho', 2016, 16)
GO
INSERT [dbo].[PhongChieu] ([MaPhong], [TenPhong], [SoChoNgoi], [TinhTrang], [SoHangGhe], [SoGheMotHang]) VALUES (N'R01', N'01', 100, 1, 10, 10)
INSERT [dbo].[PhongChieu] ([MaPhong], [TenPhong], [SoChoNgoi], [TinhTrang], [SoHangGhe], [SoGheMotHang]) VALUES (N'R02', N'02', 100, 1, 10, 10)
INSERT [dbo].[PhongChieu] ([MaPhong], [TenPhong], [SoChoNgoi], [TinhTrang], [SoHangGhe], [SoGheMotHang]) VALUES (N'R03', N'03', 100, 1, 10, 10)
INSERT [dbo].[PhongChieu] ([MaPhong], [TenPhong], [SoChoNgoi], [TinhTrang], [SoHangGhe], [SoGheMotHang]) VALUES (N'R04', N'04', 100, 1, 10, 10)
INSERT [dbo].[PhongChieu] ([MaPhong], [TenPhong], [SoChoNgoi], [TinhTrang], [SoHangGhe], [SoGheMotHang]) VALUES (N'R05', N'05', 100, 1, 10, 10)
INSERT [dbo].[PhongChieu] ([MaPhong], [TenPhong], [SoChoNgoi], [TinhTrang], [SoHangGhe], [SoGheMotHang]) VALUES (N'R06', N'06', 25, 0, 5, 5)
GO
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-01', N'OMG CN Tân Bình')
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-02', N'OMG CN Vincom Đồng Khởi')
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-03', N'OMG CN Aeon Tân Phú')
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-04', N'OMG CN Thủ Đức')
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-05', N'OMG CN Bình Thạnh')
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-07', N'OMG CN Gò Vấp')
INSERT [dbo].[Rap] ([MaRap], [TenRap]) VALUES (N'OMG-08', N'OMG CN Crescent Mall')
GO
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'admin', N'admin', 1, N'NV01')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV02', N'123456', 2, N'NV02')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV03', N'123450', 2, N'NV03')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV04', N'123451', 2, N'NV04')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV05', N'123452', 2, N'NV05')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV06', N'123453', 2, N'NV06')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV07', N'123454', 2, N'NV07')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV08', N'123442', 2, N'NV08')
INSERT [dbo].[TaiKhoan] ([UserName], [Pass], [LoaiTK], [idNV]) VALUES (N'NV09', N'123455', 2, N'NV09')
GO
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T01', N'Hành Động')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T02', N'Hoạt Hình')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T03', N'Hài')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T04', N'Khoa học Viễn Tưởng')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T05', N'Phiêu lưu')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T06', N'Gia đình')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T07', N'Tình Cảm')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T08', N'Tâm Lý')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T09', N'Kinh Dị')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T10', N'Lịch sử')
INSERT [dbo].[TheLoai] ([MaLoaiPhim], [TenTheLoai]) VALUES (N'T11', N'Nhạc kịch')
GO
SET IDENTITY_INSERT [dbo].[Ve] ON 

INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (101, 0, N'MCC0002', N'A-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (102, 0, N'MCC0002', N'A-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (103, 1, N'MCC0002', N'A-2                             ', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (104, 1, N'MCC0002', N'A-3                             ', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (105, 1, N'MCC0002', N'A-4                             ', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (106, 1, N'MCC0002', N'A-5                             ', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (107, 0, N'MCC0002', N'A-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (108, 0, N'MCC0002', N'A-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (109, 0, N'MCC0002', N'A-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (110, 1, N'MCC0002', N'A-9                             ', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (111, 0, N'MCC0002', N'B-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (112, 0, N'MCC0002', N'B-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (113, 0, N'MCC0002', N'B-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (114, 0, N'MCC0002', N'B-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (115, 0, N'MCC0002', N'B-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (116, 0, N'MCC0002', N'B-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (117, 0, N'MCC0002', N'B-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (118, 0, N'MCC0002', N'B-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (119, 0, N'MCC0002', N'B-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (120, 0, N'MCC0002', N'B-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (121, 0, N'MCC0002', N'C-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (122, 0, N'MCC0002', N'C-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (123, 0, N'MCC0002', N'C-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (124, 0, N'MCC0002', N'C-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (125, 0, N'MCC0002', N'C-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (126, 0, N'MCC0002', N'C-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (127, 0, N'MCC0002', N'C-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (128, 0, N'MCC0002', N'C-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (129, 0, N'MCC0002', N'C-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (130, 0, N'MCC0002', N'C-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (131, 0, N'MCC0002', N'D-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (132, 0, N'MCC0002', N'D-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (133, 0, N'MCC0002', N'D-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (134, 0, N'MCC0002', N'D-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (135, 0, N'MCC0002', N'D-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (136, 0, N'MCC0002', N'D-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (137, 0, N'MCC0002', N'D-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (138, 0, N'MCC0002', N'D-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (139, 0, N'MCC0002', N'D-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (140, 0, N'MCC0002', N'D-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (141, 0, N'MCC0002', N'E-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (142, 0, N'MCC0002', N'E-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (143, 0, N'MCC0002', N'E-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (144, 0, N'MCC0002', N'E-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (145, 0, N'MCC0002', N'E-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (146, 0, N'MCC0002', N'E-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (147, 0, N'MCC0002', N'E-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (148, 0, N'MCC0002', N'E-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (149, 0, N'MCC0002', N'E-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (150, 0, N'MCC0002', N'E-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (151, 0, N'MCC0002', N'F-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (152, 0, N'MCC0002', N'F-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (153, 0, N'MCC0002', N'F-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (154, 0, N'MCC0002', N'F-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (155, 0, N'MCC0002', N'F-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (156, 0, N'MCC0002', N'F-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (157, 0, N'MCC0002', N'F-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (158, 0, N'MCC0002', N'F-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (159, 0, N'MCC0002', N'F-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (160, 0, N'MCC0002', N'F-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (161, 0, N'MCC0002', N'G-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (162, 0, N'MCC0002', N'G-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (163, 0, N'MCC0002', N'G-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (164, 0, N'MCC0002', N'G-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (165, 0, N'MCC0002', N'G-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (166, 0, N'MCC0002', N'G-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (167, 0, N'MCC0002', N'G-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (168, 0, N'MCC0002', N'G-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (169, 0, N'MCC0002', N'G-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (170, 0, N'MCC0002', N'G-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (171, 0, N'MCC0002', N'H-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (172, 0, N'MCC0002', N'H-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (173, 0, N'MCC0002', N'H-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (174, 0, N'MCC0002', N'H-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (175, 0, N'MCC0002', N'H-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (176, 0, N'MCC0002', N'H-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (177, 0, N'MCC0002', N'H-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (178, 0, N'MCC0002', N'H-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (179, 0, N'MCC0002', N'H-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (180, 0, N'MCC0002', N'H-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (181, 0, N'MCC0002', N'I-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (182, 0, N'MCC0002', N'I-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (183, 0, N'MCC0002', N'I-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (184, 0, N'MCC0002', N'I-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (185, 0, N'MCC0002', N'I-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (186, 0, N'MCC0002', N'I-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (187, 0, N'MCC0002', N'I-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (188, 0, N'MCC0002', N'I-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (189, 0, N'MCC0002', N'I-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (190, 0, N'MCC0002', N'I-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (191, 0, N'MCC0002', N'J-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (192, 0, N'MCC0002', N'J-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (193, 0, N'MCC0002', N'J-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (194, 0, N'MCC0002', N'J-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (195, 0, N'MCC0002', N'J-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (196, 0, N'MCC0002', N'J-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (197, 0, N'MCC0002', N'J-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (198, 0, N'MCC0002', N'J-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (199, 0, N'MCC0002', N'J-8                             ', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (200, 0, N'MCC0002', N'J-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (201, 0, N'MCC0003', N'A-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (202, 0, N'MCC0003', N'A-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (203, 0, N'MCC0003', N'A-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (204, 1, N'MCC0003', N'A-3                             ', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (205, 0, N'MCC0003', N'A-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (206, 0, N'MCC0003', N'A-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (207, 0, N'MCC0003', N'A-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (208, 0, N'MCC0003', N'A-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (209, 0, N'MCC0003', N'A-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (210, 0, N'MCC0003', N'A-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (211, 0, N'MCC0003', N'B-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (212, 0, N'MCC0003', N'B-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (213, 0, N'MCC0003', N'B-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (214, 0, N'MCC0003', N'B-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (215, 0, N'MCC0003', N'B-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (216, 0, N'MCC0003', N'B-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (217, 0, N'MCC0003', N'B-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (218, 0, N'MCC0003', N'B-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (219, 0, N'MCC0003', N'B-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (220, 0, N'MCC0003', N'B-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (221, 0, N'MCC0003', N'C-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (222, 0, N'MCC0003', N'C-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (223, 0, N'MCC0003', N'C-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (224, 0, N'MCC0003', N'C-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (225, 0, N'MCC0003', N'C-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (226, 0, N'MCC0003', N'C-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (227, 0, N'MCC0003', N'C-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (228, 0, N'MCC0003', N'C-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (229, 0, N'MCC0003', N'C-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (230, 0, N'MCC0003', N'C-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (231, 0, N'MCC0003', N'D-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (232, 0, N'MCC0003', N'D-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (233, 0, N'MCC0003', N'D-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (234, 0, N'MCC0003', N'D-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (235, 0, N'MCC0003', N'D-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (236, 0, N'MCC0003', N'D-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (237, 0, N'MCC0003', N'D-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (238, 0, N'MCC0003', N'D-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (239, 0, N'MCC0003', N'D-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (240, 0, N'MCC0003', N'D-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (241, 0, N'MCC0003', N'E-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (242, 0, N'MCC0003', N'E-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (243, 0, N'MCC0003', N'E-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (244, 0, N'MCC0003', N'E-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (245, 0, N'MCC0003', N'E-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (246, 0, N'MCC0003', N'E-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (247, 0, N'MCC0003', N'E-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (248, 0, N'MCC0003', N'E-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (249, 0, N'MCC0003', N'E-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (250, 0, N'MCC0003', N'E-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (251, 0, N'MCC0003', N'F-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (252, 0, N'MCC0003', N'F-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (253, 0, N'MCC0003', N'F-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (254, 0, N'MCC0003', N'F-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (255, 0, N'MCC0003', N'F-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (256, 0, N'MCC0003', N'F-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (257, 0, N'MCC0003', N'F-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (258, 0, N'MCC0003', N'F-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (259, 0, N'MCC0003', N'F-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (260, 0, N'MCC0003', N'F-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (261, 0, N'MCC0003', N'G-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (262, 0, N'MCC0003', N'G-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (263, 0, N'MCC0003', N'G-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (264, 0, N'MCC0003', N'G-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (265, 0, N'MCC0003', N'G-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (266, 0, N'MCC0003', N'G-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (267, 0, N'MCC0003', N'G-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (268, 0, N'MCC0003', N'G-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (269, 0, N'MCC0003', N'G-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (270, 0, N'MCC0003', N'G-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (271, 0, N'MCC0003', N'H-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (272, 0, N'MCC0003', N'H-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (273, 0, N'MCC0003', N'H-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (274, 0, N'MCC0003', N'H-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (275, 0, N'MCC0003', N'H-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (276, 0, N'MCC0003', N'H-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (277, 0, N'MCC0003', N'H-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (278, 0, N'MCC0003', N'H-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (279, 0, N'MCC0003', N'H-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (280, 0, N'MCC0003', N'H-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (281, 0, N'MCC0003', N'I-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (282, 0, N'MCC0003', N'I-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (283, 0, N'MCC0003', N'I-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (284, 0, N'MCC0003', N'I-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (285, 0, N'MCC0003', N'I-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (286, 0, N'MCC0003', N'I-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (287, 0, N'MCC0003', N'I-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (288, 0, N'MCC0003', N'I-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (289, 0, N'MCC0003', N'I-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (290, 0, N'MCC0003', N'I-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (291, 0, N'MCC0003', N'J-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (292, 0, N'MCC0003', N'J-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (293, 0, N'MCC0003', N'J-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (294, 0, N'MCC0003', N'J-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (295, 0, N'MCC0003', N'J-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (296, 0, N'MCC0003', N'J-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (297, 0, N'MCC0003', N'J-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (298, 0, N'MCC0003', N'J-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (299, 0, N'MCC0003', N'J-8                             ', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (300, 0, N'MCC0003', N'J-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (301, 0, N'MCC0004', N'A-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (302, 0, N'MCC0004', N'A-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (303, 0, N'MCC0004', N'A-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (304, 0, N'MCC0004', N'A-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (305, 0, N'MCC0004', N'A-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (306, 0, N'MCC0004', N'A-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (307, 0, N'MCC0004', N'A-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (308, 0, N'MCC0004', N'A-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (309, 0, N'MCC0004', N'A-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (310, 0, N'MCC0004', N'A-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (311, 0, N'MCC0004', N'B-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (312, 0, N'MCC0004', N'B-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (313, 0, N'MCC0004', N'B-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (314, 0, N'MCC0004', N'B-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (315, 0, N'MCC0004', N'B-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (316, 0, N'MCC0004', N'B-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (317, 0, N'MCC0004', N'B-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (318, 0, N'MCC0004', N'B-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (319, 0, N'MCC0004', N'B-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (320, 0, N'MCC0004', N'B-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (321, 0, N'MCC0004', N'C-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (322, 0, N'MCC0004', N'C-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (323, 0, N'MCC0004', N'C-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (324, 0, N'MCC0004', N'C-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (325, 0, N'MCC0004', N'C-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (326, 0, N'MCC0004', N'C-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (327, 0, N'MCC0004', N'C-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (328, 0, N'MCC0004', N'C-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (329, 0, N'MCC0004', N'C-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (330, 0, N'MCC0004', N'C-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (331, 0, N'MCC0004', N'D-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (332, 0, N'MCC0004', N'D-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (333, 0, N'MCC0004', N'D-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (334, 0, N'MCC0004', N'D-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (335, 0, N'MCC0004', N'D-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (336, 0, N'MCC0004', N'D-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (337, 0, N'MCC0004', N'D-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (338, 0, N'MCC0004', N'D-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (339, 0, N'MCC0004', N'D-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (340, 0, N'MCC0004', N'D-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (341, 0, N'MCC0004', N'E-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (342, 0, N'MCC0004', N'E-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (343, 0, N'MCC0004', N'E-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (344, 0, N'MCC0004', N'E-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (345, 0, N'MCC0004', N'E-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (346, 0, N'MCC0004', N'E-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (347, 0, N'MCC0004', N'E-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (348, 0, N'MCC0004', N'E-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (349, 0, N'MCC0004', N'E-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (350, 0, N'MCC0004', N'E-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (351, 0, N'MCC0004', N'F-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (352, 0, N'MCC0004', N'F-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (353, 0, N'MCC0004', N'F-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (354, 0, N'MCC0004', N'F-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (355, 0, N'MCC0004', N'F-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (356, 0, N'MCC0004', N'F-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (357, 0, N'MCC0004', N'F-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (358, 0, N'MCC0004', N'F-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (359, 0, N'MCC0004', N'F-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (360, 0, N'MCC0004', N'F-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (361, 0, N'MCC0004', N'G-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (362, 0, N'MCC0004', N'G-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (363, 0, N'MCC0004', N'G-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (364, 0, N'MCC0004', N'G-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (365, 0, N'MCC0004', N'G-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (366, 0, N'MCC0004', N'G-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (367, 0, N'MCC0004', N'G-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (368, 0, N'MCC0004', N'G-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (369, 0, N'MCC0004', N'G-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (370, 0, N'MCC0004', N'G-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (371, 0, N'MCC0004', N'H-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (372, 0, N'MCC0004', N'H-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (373, 0, N'MCC0004', N'H-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (374, 0, N'MCC0004', N'H-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (375, 0, N'MCC0004', N'H-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (376, 0, N'MCC0004', N'H-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (377, 0, N'MCC0004', N'H-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (378, 0, N'MCC0004', N'H-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (379, 0, N'MCC0004', N'H-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (380, 0, N'MCC0004', N'H-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (381, 0, N'MCC0004', N'I-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (382, 0, N'MCC0004', N'I-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (383, 0, N'MCC0004', N'I-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (384, 0, N'MCC0004', N'I-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (385, 0, N'MCC0004', N'I-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (386, 0, N'MCC0004', N'I-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (387, 0, N'MCC0004', N'I-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (388, 0, N'MCC0004', N'I-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (389, 0, N'MCC0004', N'I-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (390, 0, N'MCC0004', N'I-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (391, 0, N'MCC0004', N'J-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (392, 0, N'MCC0004', N'J-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (393, 0, N'MCC0004', N'J-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (394, 0, N'MCC0004', N'J-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (395, 0, N'MCC0004', N'J-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (396, 0, N'MCC0004', N'J-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (397, 0, N'MCC0004', N'J-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (398, 0, N'MCC0004', N'J-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (399, 0, N'MCC0004', N'J-8                             ', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (400, 0, N'MCC0004', N'J-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (401, 0, N'MCC0005', N'A-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (402, 0, N'MCC0005', N'A-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (403, 0, N'MCC0005', N'A-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (404, 1, N'MCC0005', N'A-3                             ', NULL, 1, 100.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (405, 1, N'MCC0005', N'A-4                             ', NULL, 1, 100.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (406, 0, N'MCC0005', N'A-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (407, 0, N'MCC0005', N'A-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (408, 0, N'MCC0005', N'A-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (409, 0, N'MCC0005', N'A-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (410, 0, N'MCC0005', N'A-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (411, 0, N'MCC0005', N'B-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (412, 0, N'MCC0005', N'B-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (413, 0, N'MCC0005', N'B-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (414, 0, N'MCC0005', N'B-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (415, 0, N'MCC0005', N'B-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (416, 0, N'MCC0005', N'B-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (417, 0, N'MCC0005', N'B-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (418, 0, N'MCC0005', N'B-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (419, 0, N'MCC0005', N'B-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (420, 0, N'MCC0005', N'B-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (421, 0, N'MCC0005', N'C-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (422, 0, N'MCC0005', N'C-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (423, 0, N'MCC0005', N'C-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (424, 0, N'MCC0005', N'C-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (425, 0, N'MCC0005', N'C-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (426, 0, N'MCC0005', N'C-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (427, 0, N'MCC0005', N'C-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (428, 0, N'MCC0005', N'C-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (429, 0, N'MCC0005', N'C-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (430, 0, N'MCC0005', N'C-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (431, 0, N'MCC0005', N'D-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (432, 0, N'MCC0005', N'D-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (433, 0, N'MCC0005', N'D-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (434, 0, N'MCC0005', N'D-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (435, 0, N'MCC0005', N'D-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (436, 0, N'MCC0005', N'D-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (437, 0, N'MCC0005', N'D-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (438, 0, N'MCC0005', N'D-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (439, 0, N'MCC0005', N'D-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (440, 0, N'MCC0005', N'D-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (441, 0, N'MCC0005', N'E-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (442, 0, N'MCC0005', N'E-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (443, 0, N'MCC0005', N'E-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (444, 0, N'MCC0005', N'E-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (445, 0, N'MCC0005', N'E-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (446, 0, N'MCC0005', N'E-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (447, 0, N'MCC0005', N'E-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (448, 0, N'MCC0005', N'E-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (449, 0, N'MCC0005', N'E-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (450, 0, N'MCC0005', N'E-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (451, 0, N'MCC0005', N'F-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (452, 0, N'MCC0005', N'F-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (453, 0, N'MCC0005', N'F-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (454, 0, N'MCC0005', N'F-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (455, 0, N'MCC0005', N'F-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (456, 0, N'MCC0005', N'F-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (457, 0, N'MCC0005', N'F-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (458, 0, N'MCC0005', N'F-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (459, 0, N'MCC0005', N'F-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (460, 0, N'MCC0005', N'F-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (461, 0, N'MCC0005', N'G-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (462, 0, N'MCC0005', N'G-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (463, 0, N'MCC0005', N'G-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (464, 0, N'MCC0005', N'G-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (465, 0, N'MCC0005', N'G-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (466, 0, N'MCC0005', N'G-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (467, 0, N'MCC0005', N'G-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (468, 0, N'MCC0005', N'G-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (469, 0, N'MCC0005', N'G-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (470, 0, N'MCC0005', N'G-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (471, 0, N'MCC0005', N'H-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (472, 0, N'MCC0005', N'H-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (473, 0, N'MCC0005', N'H-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (474, 0, N'MCC0005', N'H-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (475, 0, N'MCC0005', N'H-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (476, 0, N'MCC0005', N'H-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (477, 0, N'MCC0005', N'H-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (478, 0, N'MCC0005', N'H-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (479, 0, N'MCC0005', N'H-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (480, 0, N'MCC0005', N'H-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (481, 0, N'MCC0005', N'I-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (482, 0, N'MCC0005', N'I-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (483, 0, N'MCC0005', N'I-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (484, 0, N'MCC0005', N'I-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (485, 0, N'MCC0005', N'I-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (486, 0, N'MCC0005', N'I-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (487, 0, N'MCC0005', N'I-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (488, 0, N'MCC0005', N'I-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (489, 0, N'MCC0005', N'I-8                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (490, 0, N'MCC0005', N'I-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (491, 0, N'MCC0005', N'J-0                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (492, 0, N'MCC0005', N'J-1                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (493, 0, N'MCC0005', N'J-2                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (494, 0, N'MCC0005', N'J-3                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (495, 0, N'MCC0005', N'J-4                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (496, 0, N'MCC0005', N'J-5                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (497, 0, N'MCC0005', N'J-6                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (498, 0, N'MCC0005', N'J-7                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (499, 0, N'MCC0005', N'J-8                             ', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (500, 0, N'MCC0005', N'J-9                             ', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (502, 0, N'MCC0002', N'A2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (503, 0, N'MCC0002', N'A3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (504, 0, N'MCC0002', N'A4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (505, 0, N'MCC0002', N'A5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (506, 0, N'MCC0002', N'A6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (507, 0, N'MCC0002', N'A7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (508, 0, N'MCC0002', N'A8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (509, 0, N'MCC0002', N'A9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (510, 0, N'MCC0002', N'A10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (511, 0, N'MCC0002', N'B1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (512, 0, N'MCC0002', N'B2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (513, 0, N'MCC0002', N'B3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (514, 0, N'MCC0002', N'B4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (515, 0, N'MCC0002', N'B5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (516, 0, N'MCC0002', N'B6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (517, 0, N'MCC0002', N'B7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (518, 0, N'MCC0002', N'B8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (519, 0, N'MCC0002', N'B9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (520, 0, N'MCC0002', N'B10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (521, 0, N'MCC0002', N'C1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (522, 0, N'MCC0002', N'C2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (523, 0, N'MCC0002', N'C3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (524, 0, N'MCC0002', N'C4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (525, 0, N'MCC0002', N'C5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (526, 0, N'MCC0002', N'C6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (527, 0, N'MCC0002', N'C7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (528, 0, N'MCC0002', N'C8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (529, 0, N'MCC0002', N'C9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (530, 0, N'MCC0002', N'C10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (531, 0, N'MCC0002', N'D1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (532, 0, N'MCC0002', N'D2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (533, 0, N'MCC0002', N'D3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (534, 0, N'MCC0002', N'D4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (535, 0, N'MCC0002', N'D5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (536, 0, N'MCC0002', N'D6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (537, 0, N'MCC0002', N'D7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (538, 0, N'MCC0002', N'D8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (539, 0, N'MCC0002', N'D9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (540, 0, N'MCC0002', N'D10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (541, 0, N'MCC0002', N'E1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (542, 0, N'MCC0002', N'E2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (543, 0, N'MCC0002', N'E3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (544, 0, N'MCC0002', N'E4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (545, 0, N'MCC0002', N'E5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (546, 0, N'MCC0002', N'E6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (547, 0, N'MCC0002', N'E7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (548, 0, N'MCC0002', N'E8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (549, 0, N'MCC0002', N'E9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (550, 0, N'MCC0002', N'E10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (551, 0, N'MCC0002', N'F1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (552, 0, N'MCC0002', N'F2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (553, 0, N'MCC0002', N'F3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (554, 0, N'MCC0002', N'F4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (555, 0, N'MCC0002', N'F5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (556, 0, N'MCC0002', N'F6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (557, 0, N'MCC0002', N'F7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (558, 0, N'MCC0002', N'F8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (559, 0, N'MCC0002', N'F9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (560, 0, N'MCC0002', N'F10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (561, 0, N'MCC0002', N'G1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (562, 0, N'MCC0002', N'G2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (563, 0, N'MCC0002', N'G3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (564, 0, N'MCC0002', N'G4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (565, 0, N'MCC0002', N'G5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (566, 0, N'MCC0002', N'G6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (567, 0, N'MCC0002', N'G7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (568, 0, N'MCC0002', N'G8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (569, 0, N'MCC0002', N'G9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (570, 0, N'MCC0002', N'G10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (571, 0, N'MCC0002', N'H1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (572, 0, N'MCC0002', N'H2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (573, 0, N'MCC0002', N'H3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (574, 0, N'MCC0002', N'H4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (575, 0, N'MCC0002', N'H5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (576, 0, N'MCC0002', N'H6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (577, 0, N'MCC0002', N'H7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (578, 0, N'MCC0002', N'H8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (579, 0, N'MCC0002', N'H9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (580, 0, N'MCC0002', N'H10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (581, 0, N'MCC0002', N'I1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (582, 0, N'MCC0002', N'I2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (583, 0, N'MCC0002', N'I3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (584, 0, N'MCC0002', N'I4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (585, 0, N'MCC0002', N'I5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (586, 0, N'MCC0002', N'I6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (587, 0, N'MCC0002', N'I7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (588, 0, N'MCC0002', N'I8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (589, 0, N'MCC0002', N'I9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (590, 0, N'MCC0002', N'I10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (591, 0, N'MCC0002', N'J1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (592, 0, N'MCC0002', N'J2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (593, 0, N'MCC0002', N'J3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (594, 0, N'MCC0002', N'J4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (595, 0, N'MCC0002', N'J5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (596, 0, N'MCC0002', N'J6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (597, 0, N'MCC0002', N'J7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (598, 0, N'MCC0002', N'J8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (599, 0, N'MCC0002', N'J9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (600, 0, N'MCC0002', N'J10', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (601, 0, N'MCC0003', N'A1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (602, 0, N'MCC0003', N'A2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (603, 0, N'MCC0003', N'A3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (604, 0, N'MCC0003', N'A4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (605, 0, N'MCC0003', N'A5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (606, 0, N'MCC0003', N'A6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (607, 0, N'MCC0003', N'A7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (608, 0, N'MCC0003', N'A8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (609, 0, N'MCC0003', N'A9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (610, 0, N'MCC0003', N'A10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (611, 0, N'MCC0003', N'B1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (612, 0, N'MCC0003', N'B2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (613, 0, N'MCC0003', N'B3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (614, 0, N'MCC0003', N'B4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (615, 0, N'MCC0003', N'B5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (616, 0, N'MCC0003', N'B6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (617, 0, N'MCC0003', N'B7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (618, 0, N'MCC0003', N'B8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (619, 0, N'MCC0003', N'B9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (620, 0, N'MCC0003', N'B10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (621, 0, N'MCC0003', N'C1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (622, 0, N'MCC0003', N'C2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (623, 0, N'MCC0003', N'C3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (624, 0, N'MCC0003', N'C4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (625, 0, N'MCC0003', N'C5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (626, 0, N'MCC0003', N'C6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (627, 0, N'MCC0003', N'C7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (628, 0, N'MCC0003', N'C8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (629, 0, N'MCC0003', N'C9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (630, 0, N'MCC0003', N'C10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (631, 0, N'MCC0003', N'D1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (632, 0, N'MCC0003', N'D2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (633, 0, N'MCC0003', N'D3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (634, 0, N'MCC0003', N'D4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (635, 0, N'MCC0003', N'D5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (636, 0, N'MCC0003', N'D6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (637, 0, N'MCC0003', N'D7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (638, 0, N'MCC0003', N'D8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (639, 0, N'MCC0003', N'D9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (640, 0, N'MCC0003', N'D10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (641, 0, N'MCC0003', N'E1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (642, 0, N'MCC0003', N'E2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (643, 0, N'MCC0003', N'E3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (644, 0, N'MCC0003', N'E4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (645, 0, N'MCC0003', N'E5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (646, 0, N'MCC0003', N'E6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (647, 0, N'MCC0003', N'E7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (648, 0, N'MCC0003', N'E8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (649, 0, N'MCC0003', N'E9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (650, 0, N'MCC0003', N'E10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (651, 0, N'MCC0003', N'F1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (652, 0, N'MCC0003', N'F2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (653, 0, N'MCC0003', N'F3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (654, 0, N'MCC0003', N'F4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (655, 0, N'MCC0003', N'F5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (656, 0, N'MCC0003', N'F6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (657, 0, N'MCC0003', N'F7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (658, 0, N'MCC0003', N'F8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (659, 0, N'MCC0003', N'F9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (660, 0, N'MCC0003', N'F10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (661, 0, N'MCC0003', N'G1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (662, 0, N'MCC0003', N'G2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (663, 0, N'MCC0003', N'G3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (664, 0, N'MCC0003', N'G4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (665, 0, N'MCC0003', N'G5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (666, 0, N'MCC0003', N'G6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (667, 0, N'MCC0003', N'G7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (668, 0, N'MCC0003', N'G8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (669, 0, N'MCC0003', N'G9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (670, 0, N'MCC0003', N'G10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (671, 0, N'MCC0003', N'H1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (672, 0, N'MCC0003', N'H2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (673, 0, N'MCC0003', N'H3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (674, 0, N'MCC0003', N'H4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (675, 0, N'MCC0003', N'H5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (676, 0, N'MCC0003', N'H6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (677, 0, N'MCC0003', N'H7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (678, 0, N'MCC0003', N'H8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (679, 0, N'MCC0003', N'H9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (680, 0, N'MCC0003', N'H10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (681, 0, N'MCC0003', N'I1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (682, 0, N'MCC0003', N'I2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (683, 0, N'MCC0003', N'I3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (684, 0, N'MCC0003', N'I4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (685, 0, N'MCC0003', N'I5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (686, 0, N'MCC0003', N'I6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (687, 0, N'MCC0003', N'I7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (688, 0, N'MCC0003', N'I8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (689, 0, N'MCC0003', N'I9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (690, 0, N'MCC0003', N'I10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (691, 0, N'MCC0003', N'J1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (692, 0, N'MCC0003', N'J2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (693, 0, N'MCC0003', N'J3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (694, 0, N'MCC0003', N'J4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (695, 0, N'MCC0003', N'J5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (696, 0, N'MCC0003', N'J6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (697, 0, N'MCC0003', N'J7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (698, 0, N'MCC0003', N'J8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (699, 0, N'MCC0003', N'J9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (700, 0, N'MCC0003', N'J10', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (701, 0, N'MCC0005', N'A1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (702, 0, N'MCC0005', N'A2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (703, 0, N'MCC0005', N'A3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (704, 0, N'MCC0005', N'A4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (705, 0, N'MCC0005', N'A5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (706, 0, N'MCC0005', N'A6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (707, 0, N'MCC0005', N'A7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (708, 0, N'MCC0005', N'A8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (709, 0, N'MCC0005', N'A9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (710, 0, N'MCC0005', N'A10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (711, 0, N'MCC0005', N'B1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (712, 0, N'MCC0005', N'B2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (713, 0, N'MCC0005', N'B3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (714, 0, N'MCC0005', N'B4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (715, 0, N'MCC0005', N'B5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (716, 0, N'MCC0005', N'B6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (717, 0, N'MCC0005', N'B7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (718, 0, N'MCC0005', N'B8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (719, 0, N'MCC0005', N'B9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (720, 0, N'MCC0005', N'B10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (721, 0, N'MCC0005', N'C1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (722, 0, N'MCC0005', N'C2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (723, 0, N'MCC0005', N'C3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (724, 0, N'MCC0005', N'C4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (725, 0, N'MCC0005', N'C5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (726, 0, N'MCC0005', N'C6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (727, 0, N'MCC0005', N'C7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (728, 0, N'MCC0005', N'C8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (729, 0, N'MCC0005', N'C9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (730, 0, N'MCC0005', N'C10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (731, 0, N'MCC0005', N'D1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (732, 0, N'MCC0005', N'D2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (733, 0, N'MCC0005', N'D3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (734, 0, N'MCC0005', N'D4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (735, 0, N'MCC0005', N'D5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (736, 0, N'MCC0005', N'D6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (737, 0, N'MCC0005', N'D7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (738, 0, N'MCC0005', N'D8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (739, 0, N'MCC0005', N'D9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (740, 0, N'MCC0005', N'D10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (741, 0, N'MCC0005', N'E1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (742, 0, N'MCC0005', N'E2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (743, 0, N'MCC0005', N'E3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (744, 0, N'MCC0005', N'E4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (745, 0, N'MCC0005', N'E5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (746, 0, N'MCC0005', N'E6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (747, 0, N'MCC0005', N'E7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (748, 0, N'MCC0005', N'E8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (749, 0, N'MCC0005', N'E9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (750, 0, N'MCC0005', N'E10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (751, 0, N'MCC0005', N'F1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (752, 0, N'MCC0005', N'F2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (753, 0, N'MCC0005', N'F3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (754, 0, N'MCC0005', N'F4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (755, 0, N'MCC0005', N'F5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (756, 0, N'MCC0005', N'F6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (757, 0, N'MCC0005', N'F7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (758, 0, N'MCC0005', N'F8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (759, 0, N'MCC0005', N'F9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (760, 0, N'MCC0005', N'F10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (761, 0, N'MCC0005', N'G1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (762, 0, N'MCC0005', N'G2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (763, 0, N'MCC0005', N'G3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (764, 0, N'MCC0005', N'G4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (765, 0, N'MCC0005', N'G5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (766, 0, N'MCC0005', N'G6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (767, 0, N'MCC0005', N'G7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (768, 0, N'MCC0005', N'G8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (769, 0, N'MCC0005', N'G9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (770, 0, N'MCC0005', N'G10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (771, 0, N'MCC0005', N'H1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (772, 0, N'MCC0005', N'H2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (773, 0, N'MCC0005', N'H3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (774, 0, N'MCC0005', N'H4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (775, 0, N'MCC0005', N'H5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (776, 0, N'MCC0005', N'H6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (777, 0, N'MCC0005', N'H7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (778, 0, N'MCC0005', N'H8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (779, 0, N'MCC0005', N'H9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (780, 0, N'MCC0005', N'H10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (781, 0, N'MCC0005', N'I1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (782, 0, N'MCC0005', N'I2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (783, 0, N'MCC0005', N'I3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (784, 0, N'MCC0005', N'I4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (785, 0, N'MCC0005', N'I5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (786, 0, N'MCC0005', N'I6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (787, 0, N'MCC0005', N'I7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (788, 0, N'MCC0005', N'I8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (789, 0, N'MCC0005', N'I9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (790, 0, N'MCC0005', N'I10', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (791, 0, N'MCC0005', N'J1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (792, 0, N'MCC0005', N'J2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (793, 0, N'MCC0005', N'J3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (794, 0, N'MCC0005', N'J4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (795, 0, N'MCC0005', N'J5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (796, 0, N'MCC0005', N'J6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (797, 0, N'MCC0005', N'J7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (798, 0, N'MCC0005', N'J8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (799, 0, N'MCC0005', N'J9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (800, 0, N'MCC0005', N'J10', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1301, 0, N'MCC0010', N'A-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1302, 0, N'MCC0010', N'A-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1303, 0, N'MCC0010', N'A-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1304, 0, N'MCC0010', N'A-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1305, 1, N'MCC0010', N'A-4', NULL, 1, 90.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1306, 0, N'MCC0010', N'A-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1307, 0, N'MCC0010', N'A-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1308, 0, N'MCC0010', N'A-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1309, 0, N'MCC0010', N'A-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1310, 0, N'MCC0010', N'A-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1311, 0, N'MCC0010', N'B-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1312, 0, N'MCC0010', N'B-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1313, 0, N'MCC0010', N'B-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1314, 0, N'MCC0010', N'B-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1315, 0, N'MCC0010', N'B-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1316, 0, N'MCC0010', N'B-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1317, 0, N'MCC0010', N'B-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1318, 0, N'MCC0010', N'B-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1319, 0, N'MCC0010', N'B-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1320, 0, N'MCC0010', N'B-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1321, 0, N'MCC0010', N'C-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1322, 0, N'MCC0010', N'C-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1323, 0, N'MCC0010', N'C-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1324, 0, N'MCC0010', N'C-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1325, 0, N'MCC0010', N'C-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1326, 0, N'MCC0010', N'C-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1327, 0, N'MCC0010', N'C-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1328, 0, N'MCC0010', N'C-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1329, 0, N'MCC0010', N'C-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1330, 0, N'MCC0010', N'C-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1331, 0, N'MCC0010', N'D-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1332, 0, N'MCC0010', N'D-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1333, 0, N'MCC0010', N'D-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1334, 0, N'MCC0010', N'D-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1335, 0, N'MCC0010', N'D-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1336, 0, N'MCC0010', N'D-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1337, 0, N'MCC0010', N'D-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1338, 0, N'MCC0010', N'D-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1339, 0, N'MCC0010', N'D-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1340, 0, N'MCC0010', N'D-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1341, 0, N'MCC0010', N'E-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1342, 0, N'MCC0010', N'E-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1343, 0, N'MCC0010', N'E-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1344, 0, N'MCC0010', N'E-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1345, 0, N'MCC0010', N'E-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1346, 0, N'MCC0010', N'E-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1347, 0, N'MCC0010', N'E-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1348, 0, N'MCC0010', N'E-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1349, 0, N'MCC0010', N'E-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1350, 0, N'MCC0010', N'E-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1351, 0, N'MCC0010', N'F-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1352, 0, N'MCC0010', N'F-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1353, 0, N'MCC0010', N'F-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1354, 0, N'MCC0010', N'F-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1355, 0, N'MCC0010', N'F-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1356, 0, N'MCC0010', N'F-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1357, 0, N'MCC0010', N'F-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1358, 0, N'MCC0010', N'F-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1359, 0, N'MCC0010', N'F-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1360, 0, N'MCC0010', N'F-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1361, 0, N'MCC0010', N'G-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1362, 0, N'MCC0010', N'G-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1363, 0, N'MCC0010', N'G-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1364, 0, N'MCC0010', N'G-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1365, 0, N'MCC0010', N'G-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1366, 0, N'MCC0010', N'G-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1367, 0, N'MCC0010', N'G-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1368, 0, N'MCC0010', N'G-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1369, 0, N'MCC0010', N'G-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1370, 0, N'MCC0010', N'G-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1371, 0, N'MCC0010', N'H-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1372, 0, N'MCC0010', N'H-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1373, 0, N'MCC0010', N'H-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1374, 0, N'MCC0010', N'H-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1375, 0, N'MCC0010', N'H-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1376, 0, N'MCC0010', N'H-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1377, 0, N'MCC0010', N'H-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1378, 0, N'MCC0010', N'H-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1379, 0, N'MCC0010', N'H-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1380, 0, N'MCC0010', N'H-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1381, 0, N'MCC0010', N'I-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1382, 0, N'MCC0010', N'I-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1383, 0, N'MCC0010', N'I-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1384, 0, N'MCC0010', N'I-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1385, 0, N'MCC0010', N'I-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1386, 0, N'MCC0010', N'I-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1387, 0, N'MCC0010', N'I-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1388, 0, N'MCC0010', N'I-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1389, 0, N'MCC0010', N'I-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1390, 0, N'MCC0010', N'I-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1391, 0, N'MCC0010', N'J-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1392, 0, N'MCC0010', N'J-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1393, 0, N'MCC0010', N'J-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1394, 0, N'MCC0010', N'J-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1395, 0, N'MCC0010', N'J-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1396, 0, N'MCC0010', N'J-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1397, 0, N'MCC0010', N'J-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1398, 0, N'MCC0010', N'J-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1399, 0, N'MCC0010', N'J-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1400, 0, N'MCC0010', N'J-9', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1401, 0, N'MCC0006', N'A-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1402, 0, N'MCC0006', N'A-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1403, 0, N'MCC0006', N'A-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1404, 0, N'MCC0006', N'A-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1405, 0, N'MCC0006', N'A-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1406, 0, N'MCC0006', N'A-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1407, 0, N'MCC0006', N'A-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1408, 0, N'MCC0006', N'A-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1409, 0, N'MCC0006', N'A-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1410, 0, N'MCC0006', N'A-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1411, 0, N'MCC0006', N'B-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1412, 0, N'MCC0006', N'B-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1413, 0, N'MCC0006', N'B-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1414, 0, N'MCC0006', N'B-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1415, 0, N'MCC0006', N'B-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1416, 0, N'MCC0006', N'B-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1417, 0, N'MCC0006', N'B-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1418, 0, N'MCC0006', N'B-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1419, 0, N'MCC0006', N'B-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1420, 0, N'MCC0006', N'B-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1421, 0, N'MCC0006', N'C-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1422, 0, N'MCC0006', N'C-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1423, 0, N'MCC0006', N'C-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1424, 0, N'MCC0006', N'C-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1425, 0, N'MCC0006', N'C-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1426, 0, N'MCC0006', N'C-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1427, 0, N'MCC0006', N'C-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1428, 0, N'MCC0006', N'C-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1429, 0, N'MCC0006', N'C-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1430, 0, N'MCC0006', N'C-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1431, 0, N'MCC0006', N'D-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1432, 0, N'MCC0006', N'D-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1433, 0, N'MCC0006', N'D-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1434, 0, N'MCC0006', N'D-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1435, 0, N'MCC0006', N'D-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1436, 0, N'MCC0006', N'D-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1437, 0, N'MCC0006', N'D-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1438, 0, N'MCC0006', N'D-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1439, 0, N'MCC0006', N'D-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1440, 0, N'MCC0006', N'D-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1441, 0, N'MCC0006', N'E-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1442, 0, N'MCC0006', N'E-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1443, 0, N'MCC0006', N'E-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1444, 0, N'MCC0006', N'E-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1445, 0, N'MCC0006', N'E-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1446, 0, N'MCC0006', N'E-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1447, 0, N'MCC0006', N'E-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1448, 0, N'MCC0006', N'E-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1449, 0, N'MCC0006', N'E-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1450, 0, N'MCC0006', N'E-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1451, 0, N'MCC0006', N'F-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1452, 0, N'MCC0006', N'F-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1453, 0, N'MCC0006', N'F-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1454, 0, N'MCC0006', N'F-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1455, 0, N'MCC0006', N'F-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1456, 0, N'MCC0006', N'F-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1457, 0, N'MCC0006', N'F-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1458, 0, N'MCC0006', N'F-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1459, 0, N'MCC0006', N'F-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1460, 0, N'MCC0006', N'F-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1461, 0, N'MCC0006', N'G-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1462, 0, N'MCC0006', N'G-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1463, 0, N'MCC0006', N'G-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1464, 0, N'MCC0006', N'G-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1465, 0, N'MCC0006', N'G-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1466, 0, N'MCC0006', N'G-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1467, 0, N'MCC0006', N'G-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1468, 0, N'MCC0006', N'G-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1469, 0, N'MCC0006', N'G-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1470, 0, N'MCC0006', N'G-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1471, 0, N'MCC0006', N'H-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1472, 0, N'MCC0006', N'H-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1473, 0, N'MCC0006', N'H-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1474, 0, N'MCC0006', N'H-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1475, 0, N'MCC0006', N'H-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1476, 0, N'MCC0006', N'H-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1477, 0, N'MCC0006', N'H-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1478, 0, N'MCC0006', N'H-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1479, 0, N'MCC0006', N'H-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1480, 0, N'MCC0006', N'H-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1481, 0, N'MCC0006', N'I-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1482, 0, N'MCC0006', N'I-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1483, 0, N'MCC0006', N'I-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1484, 0, N'MCC0006', N'I-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1485, 0, N'MCC0006', N'I-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1486, 0, N'MCC0006', N'I-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1487, 0, N'MCC0006', N'I-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1488, 0, N'MCC0006', N'I-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1489, 0, N'MCC0006', N'I-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1490, 0, N'MCC0006', N'I-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1491, 0, N'MCC0006', N'J-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1492, 0, N'MCC0006', N'J-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1493, 0, N'MCC0006', N'J-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1494, 0, N'MCC0006', N'J-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1495, 0, N'MCC0006', N'J-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1496, 0, N'MCC0006', N'J-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1497, 0, N'MCC0006', N'J-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1498, 0, N'MCC0006', N'J-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1499, 0, N'MCC0006', N'J-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1500, 0, N'MCC0006', N'J-9', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1501, 0, N'MCC0001', N'A-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1502, 0, N'MCC0001', N'A-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1503, 0, N'MCC0001', N'A-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1504, 0, N'MCC0001', N'A-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1505, 0, N'MCC0001', N'A-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1506, 0, N'MCC0001', N'A-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1507, 0, N'MCC0001', N'A-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1508, 0, N'MCC0001', N'A-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1509, 0, N'MCC0001', N'A-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1510, 0, N'MCC0001', N'A-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1511, 0, N'MCC0001', N'B-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1512, 0, N'MCC0001', N'B-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1513, 0, N'MCC0001', N'B-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1514, 0, N'MCC0001', N'B-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1515, 0, N'MCC0001', N'B-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1516, 0, N'MCC0001', N'B-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1517, 0, N'MCC0001', N'B-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1518, 0, N'MCC0001', N'B-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1519, 0, N'MCC0001', N'B-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1520, 0, N'MCC0001', N'B-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1521, 0, N'MCC0001', N'C-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1522, 0, N'MCC0001', N'C-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1523, 0, N'MCC0001', N'C-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1524, 0, N'MCC0001', N'C-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1525, 0, N'MCC0001', N'C-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1526, 0, N'MCC0001', N'C-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1527, 0, N'MCC0001', N'C-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1528, 0, N'MCC0001', N'C-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1529, 0, N'MCC0001', N'C-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1530, 0, N'MCC0001', N'C-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1531, 0, N'MCC0001', N'D-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1532, 0, N'MCC0001', N'D-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1533, 0, N'MCC0001', N'D-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1534, 0, N'MCC0001', N'D-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1535, 0, N'MCC0001', N'D-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1536, 0, N'MCC0001', N'D-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1537, 0, N'MCC0001', N'D-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1538, 0, N'MCC0001', N'D-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1539, 0, N'MCC0001', N'D-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1540, 0, N'MCC0001', N'D-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1541, 0, N'MCC0001', N'E-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1542, 0, N'MCC0001', N'E-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1543, 0, N'MCC0001', N'E-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1544, 0, N'MCC0001', N'E-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1545, 0, N'MCC0001', N'E-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1546, 0, N'MCC0001', N'E-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1547, 0, N'MCC0001', N'E-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1548, 0, N'MCC0001', N'E-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1549, 0, N'MCC0001', N'E-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1550, 0, N'MCC0001', N'E-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1551, 0, N'MCC0001', N'F-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1552, 0, N'MCC0001', N'F-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1553, 0, N'MCC0001', N'F-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1554, 0, N'MCC0001', N'F-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1555, 0, N'MCC0001', N'F-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1556, 0, N'MCC0001', N'F-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1557, 0, N'MCC0001', N'F-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1558, 0, N'MCC0001', N'F-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1559, 0, N'MCC0001', N'F-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1560, 0, N'MCC0001', N'F-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1561, 0, N'MCC0001', N'G-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1562, 0, N'MCC0001', N'G-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1563, 0, N'MCC0001', N'G-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1564, 0, N'MCC0001', N'G-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1565, 0, N'MCC0001', N'G-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1566, 0, N'MCC0001', N'G-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1567, 0, N'MCC0001', N'G-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1568, 0, N'MCC0001', N'G-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1569, 0, N'MCC0001', N'G-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1570, 0, N'MCC0001', N'G-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1571, 0, N'MCC0001', N'H-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1572, 0, N'MCC0001', N'H-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1573, 0, N'MCC0001', N'H-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1574, 0, N'MCC0001', N'H-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1575, 0, N'MCC0001', N'H-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1576, 0, N'MCC0001', N'H-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1577, 0, N'MCC0001', N'H-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1578, 0, N'MCC0001', N'H-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1579, 0, N'MCC0001', N'H-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1580, 0, N'MCC0001', N'H-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1581, 0, N'MCC0001', N'I-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1582, 0, N'MCC0001', N'I-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1583, 0, N'MCC0001', N'I-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1584, 0, N'MCC0001', N'I-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1585, 0, N'MCC0001', N'I-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1586, 0, N'MCC0001', N'I-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1587, 0, N'MCC0001', N'I-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1588, 0, N'MCC0001', N'I-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1589, 0, N'MCC0001', N'I-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1590, 0, N'MCC0001', N'I-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1591, 0, N'MCC0001', N'J-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1592, 0, N'MCC0001', N'J-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1593, 0, N'MCC0001', N'J-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1594, 0, N'MCC0001', N'J-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1595, 0, N'MCC0001', N'J-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1596, 0, N'MCC0001', N'J-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1597, 0, N'MCC0001', N'J-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1598, 0, N'MCC0001', N'J-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1599, 0, N'MCC0001', N'J-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1600, 0, N'MCC0001', N'J-9', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1601, 0, N'MCC0008', N'A-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1602, 0, N'MCC0008', N'A-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1603, 0, N'MCC0008', N'A-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1604, 1, N'MCC0008', N'A-3', NULL, 1, 100.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1605, 0, N'MCC0008', N'A-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1606, 0, N'MCC0008', N'A-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1607, 0, N'MCC0008', N'A-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1608, 0, N'MCC0008', N'A-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1609, 0, N'MCC0008', N'A-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1610, 0, N'MCC0008', N'A-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1611, 0, N'MCC0008', N'B-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1612, 0, N'MCC0008', N'B-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1613, 0, N'MCC0008', N'B-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1614, 0, N'MCC0008', N'B-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1615, 0, N'MCC0008', N'B-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1616, 0, N'MCC0008', N'B-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1617, 0, N'MCC0008', N'B-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1618, 0, N'MCC0008', N'B-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1619, 0, N'MCC0008', N'B-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1620, 0, N'MCC0008', N'B-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1621, 0, N'MCC0008', N'C-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1622, 0, N'MCC0008', N'C-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1623, 0, N'MCC0008', N'C-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1624, 0, N'MCC0008', N'C-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1625, 1, N'MCC0008', N'C-4', NULL, 1, 100.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1626, 1, N'MCC0008', N'C-5', NULL, 1, 100.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1627, 0, N'MCC0008', N'C-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1628, 0, N'MCC0008', N'C-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1629, 0, N'MCC0008', N'C-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1630, 0, N'MCC0008', N'C-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1631, 0, N'MCC0008', N'D-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1632, 0, N'MCC0008', N'D-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1633, 0, N'MCC0008', N'D-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1634, 0, N'MCC0008', N'D-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1635, 0, N'MCC0008', N'D-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1636, 0, N'MCC0008', N'D-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1637, 0, N'MCC0008', N'D-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1638, 0, N'MCC0008', N'D-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1639, 0, N'MCC0008', N'D-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1640, 0, N'MCC0008', N'D-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1641, 0, N'MCC0008', N'E-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1642, 0, N'MCC0008', N'E-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1643, 0, N'MCC0008', N'E-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1644, 0, N'MCC0008', N'E-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1645, 0, N'MCC0008', N'E-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1646, 0, N'MCC0008', N'E-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1647, 0, N'MCC0008', N'E-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1648, 0, N'MCC0008', N'E-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1649, 0, N'MCC0008', N'E-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1650, 0, N'MCC0008', N'E-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1651, 0, N'MCC0008', N'F-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1652, 0, N'MCC0008', N'F-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1653, 0, N'MCC0008', N'F-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1654, 0, N'MCC0008', N'F-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1655, 0, N'MCC0008', N'F-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1656, 0, N'MCC0008', N'F-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1657, 0, N'MCC0008', N'F-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1658, 0, N'MCC0008', N'F-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1659, 0, N'MCC0008', N'F-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1660, 0, N'MCC0008', N'F-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1661, 0, N'MCC0008', N'G-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1662, 0, N'MCC0008', N'G-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1663, 0, N'MCC0008', N'G-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1664, 0, N'MCC0008', N'G-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1665, 0, N'MCC0008', N'G-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1666, 0, N'MCC0008', N'G-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1667, 0, N'MCC0008', N'G-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1668, 0, N'MCC0008', N'G-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1669, 0, N'MCC0008', N'G-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1670, 0, N'MCC0008', N'G-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1671, 0, N'MCC0008', N'H-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1672, 0, N'MCC0008', N'H-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1673, 0, N'MCC0008', N'H-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1674, 0, N'MCC0008', N'H-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1675, 0, N'MCC0008', N'H-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1676, 0, N'MCC0008', N'H-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1677, 0, N'MCC0008', N'H-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1678, 0, N'MCC0008', N'H-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1679, 0, N'MCC0008', N'H-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1680, 0, N'MCC0008', N'H-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1681, 0, N'MCC0008', N'I-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1682, 0, N'MCC0008', N'I-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1683, 0, N'MCC0008', N'I-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1684, 0, N'MCC0008', N'I-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1685, 0, N'MCC0008', N'I-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1686, 0, N'MCC0008', N'I-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1687, 0, N'MCC0008', N'I-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1688, 0, N'MCC0008', N'I-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1689, 0, N'MCC0008', N'I-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1690, 0, N'MCC0008', N'I-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1691, 0, N'MCC0008', N'J-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1692, 0, N'MCC0008', N'J-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1693, 0, N'MCC0008', N'J-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1694, 0, N'MCC0008', N'J-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1695, 0, N'MCC0008', N'J-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1696, 0, N'MCC0008', N'J-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1697, 0, N'MCC0008', N'J-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1698, 0, N'MCC0008', N'J-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1699, 0, N'MCC0008', N'J-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1700, 0, N'MCC0008', N'J-9', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1701, 0, N'MCC0009', N'A-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1702, 0, N'MCC0009', N'A-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1703, 0, N'MCC0009', N'A-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1704, 0, N'MCC0009', N'A-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1705, 0, N'MCC0009', N'A-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1706, 0, N'MCC0009', N'A-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1707, 0, N'MCC0009', N'A-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1708, 0, N'MCC0009', N'A-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1709, 0, N'MCC0009', N'A-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1710, 0, N'MCC0009', N'A-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1711, 0, N'MCC0009', N'B-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1712, 0, N'MCC0009', N'B-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1713, 0, N'MCC0009', N'B-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1714, 0, N'MCC0009', N'B-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1715, 0, N'MCC0009', N'B-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1716, 0, N'MCC0009', N'B-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1717, 0, N'MCC0009', N'B-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1718, 0, N'MCC0009', N'B-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1719, 0, N'MCC0009', N'B-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1720, 0, N'MCC0009', N'B-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1721, 0, N'MCC0009', N'C-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1722, 0, N'MCC0009', N'C-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1723, 0, N'MCC0009', N'C-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1724, 0, N'MCC0009', N'C-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1725, 0, N'MCC0009', N'C-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1726, 0, N'MCC0009', N'C-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1727, 0, N'MCC0009', N'C-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1728, 0, N'MCC0009', N'C-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1729, 0, N'MCC0009', N'C-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1730, 0, N'MCC0009', N'C-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1731, 0, N'MCC0009', N'D-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1732, 0, N'MCC0009', N'D-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1733, 0, N'MCC0009', N'D-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1734, 0, N'MCC0009', N'D-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1735, 0, N'MCC0009', N'D-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1736, 0, N'MCC0009', N'D-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1737, 0, N'MCC0009', N'D-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1738, 0, N'MCC0009', N'D-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1739, 0, N'MCC0009', N'D-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1740, 0, N'MCC0009', N'D-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1741, 0, N'MCC0009', N'E-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1742, 0, N'MCC0009', N'E-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1743, 0, N'MCC0009', N'E-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1744, 0, N'MCC0009', N'E-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1745, 0, N'MCC0009', N'E-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1746, 0, N'MCC0009', N'E-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1747, 0, N'MCC0009', N'E-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1748, 0, N'MCC0009', N'E-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1749, 0, N'MCC0009', N'E-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1750, 0, N'MCC0009', N'E-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1751, 0, N'MCC0009', N'F-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1752, 0, N'MCC0009', N'F-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1753, 0, N'MCC0009', N'F-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1754, 0, N'MCC0009', N'F-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1755, 0, N'MCC0009', N'F-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1756, 0, N'MCC0009', N'F-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1757, 0, N'MCC0009', N'F-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1758, 0, N'MCC0009', N'F-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1759, 0, N'MCC0009', N'F-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1760, 0, N'MCC0009', N'F-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1761, 0, N'MCC0009', N'G-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1762, 0, N'MCC0009', N'G-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1763, 0, N'MCC0009', N'G-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1764, 0, N'MCC0009', N'G-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1765, 0, N'MCC0009', N'G-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1766, 0, N'MCC0009', N'G-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1767, 0, N'MCC0009', N'G-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1768, 0, N'MCC0009', N'G-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1769, 0, N'MCC0009', N'G-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1770, 0, N'MCC0009', N'G-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1771, 0, N'MCC0009', N'H-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1772, 0, N'MCC0009', N'H-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1773, 0, N'MCC0009', N'H-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1774, 0, N'MCC0009', N'H-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1775, 0, N'MCC0009', N'H-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1776, 0, N'MCC0009', N'H-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1777, 0, N'MCC0009', N'H-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1778, 0, N'MCC0009', N'H-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1779, 0, N'MCC0009', N'H-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1780, 0, N'MCC0009', N'H-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1781, 0, N'MCC0009', N'I-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1782, 0, N'MCC0009', N'I-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1783, 0, N'MCC0009', N'I-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1784, 0, N'MCC0009', N'I-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1785, 0, N'MCC0009', N'I-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1786, 0, N'MCC0009', N'I-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1787, 0, N'MCC0009', N'I-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1788, 0, N'MCC0009', N'I-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1789, 0, N'MCC0009', N'I-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1790, 0, N'MCC0009', N'I-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1791, 0, N'MCC0009', N'J-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1792, 0, N'MCC0009', N'J-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1793, 0, N'MCC0009', N'J-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1794, 0, N'MCC0009', N'J-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1795, 0, N'MCC0009', N'J-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1796, 0, N'MCC0009', N'J-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1797, 0, N'MCC0009', N'J-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1798, 0, N'MCC0009', N'J-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1799, 0, N'MCC0009', N'J-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1800, 0, N'MCC0009', N'J-9', NULL, 0, 0.0000)
GO
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1801, 0, N'MCC0011', N'A-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1802, 0, N'MCC0011', N'A-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1803, 0, N'MCC0011', N'A-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1804, 0, N'MCC0011', N'A-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1805, 0, N'MCC0011', N'A-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1806, 0, N'MCC0011', N'A-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1807, 0, N'MCC0011', N'A-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1808, 0, N'MCC0011', N'A-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1809, 0, N'MCC0011', N'A-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1810, 0, N'MCC0011', N'A-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1811, 0, N'MCC0011', N'B-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1812, 0, N'MCC0011', N'B-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1813, 0, N'MCC0011', N'B-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1814, 0, N'MCC0011', N'B-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1815, 0, N'MCC0011', N'B-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1816, 0, N'MCC0011', N'B-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1817, 0, N'MCC0011', N'B-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1818, 0, N'MCC0011', N'B-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1819, 0, N'MCC0011', N'B-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1820, 0, N'MCC0011', N'B-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1821, 0, N'MCC0011', N'C-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1822, 0, N'MCC0011', N'C-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1823, 0, N'MCC0011', N'C-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1824, 0, N'MCC0011', N'C-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1825, 0, N'MCC0011', N'C-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1826, 0, N'MCC0011', N'C-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1827, 0, N'MCC0011', N'C-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1828, 0, N'MCC0011', N'C-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1829, 0, N'MCC0011', N'C-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1830, 0, N'MCC0011', N'C-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1831, 0, N'MCC0011', N'D-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1832, 0, N'MCC0011', N'D-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1833, 0, N'MCC0011', N'D-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1834, 0, N'MCC0011', N'D-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1835, 0, N'MCC0011', N'D-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1836, 0, N'MCC0011', N'D-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1837, 0, N'MCC0011', N'D-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1838, 0, N'MCC0011', N'D-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1839, 0, N'MCC0011', N'D-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1840, 0, N'MCC0011', N'D-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1841, 0, N'MCC0011', N'E-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1842, 0, N'MCC0011', N'E-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1843, 0, N'MCC0011', N'E-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1844, 0, N'MCC0011', N'E-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1845, 0, N'MCC0011', N'E-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1846, 0, N'MCC0011', N'E-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1847, 0, N'MCC0011', N'E-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1848, 0, N'MCC0011', N'E-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1849, 0, N'MCC0011', N'E-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1850, 0, N'MCC0011', N'E-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1851, 0, N'MCC0011', N'F-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1852, 0, N'MCC0011', N'F-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1853, 0, N'MCC0011', N'F-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1854, 0, N'MCC0011', N'F-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1855, 0, N'MCC0011', N'F-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1856, 0, N'MCC0011', N'F-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1857, 0, N'MCC0011', N'F-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1858, 0, N'MCC0011', N'F-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1859, 0, N'MCC0011', N'F-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1860, 0, N'MCC0011', N'F-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1861, 0, N'MCC0011', N'G-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1862, 0, N'MCC0011', N'G-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1863, 0, N'MCC0011', N'G-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1864, 0, N'MCC0011', N'G-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1865, 0, N'MCC0011', N'G-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1866, 0, N'MCC0011', N'G-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1867, 0, N'MCC0011', N'G-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1868, 0, N'MCC0011', N'G-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1869, 0, N'MCC0011', N'G-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1870, 0, N'MCC0011', N'G-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1871, 0, N'MCC0011', N'H-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1872, 0, N'MCC0011', N'H-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1873, 0, N'MCC0011', N'H-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1874, 0, N'MCC0011', N'H-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1875, 0, N'MCC0011', N'H-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1876, 0, N'MCC0011', N'H-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1877, 0, N'MCC0011', N'H-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1878, 0, N'MCC0011', N'H-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1879, 0, N'MCC0011', N'H-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1880, 0, N'MCC0011', N'H-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1881, 0, N'MCC0011', N'I-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1882, 0, N'MCC0011', N'I-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1883, 0, N'MCC0011', N'I-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1884, 0, N'MCC0011', N'I-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1885, 0, N'MCC0011', N'I-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1886, 0, N'MCC0011', N'I-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1887, 0, N'MCC0011', N'I-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1888, 0, N'MCC0011', N'I-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1889, 0, N'MCC0011', N'I-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1890, 0, N'MCC0011', N'I-9', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1891, 0, N'MCC0011', N'J-0', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1892, 0, N'MCC0011', N'J-1', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1893, 0, N'MCC0011', N'J-2', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1894, 0, N'MCC0011', N'J-3', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1895, 0, N'MCC0011', N'J-4', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1896, 0, N'MCC0011', N'J-5', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1897, 0, N'MCC0011', N'J-6', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1898, 0, N'MCC0011', N'J-7', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1899, 0, N'MCC0011', N'J-8', NULL, 0, 0.0000)
INSERT [dbo].[Ve] ([id], [LoaiVe], [MaCaChieu], [MaGheNgoi], [MaKhachHang], [TrangThai], [TienBanVe]) VALUES (1900, 0, N'MCC0011', N'J-9', NULL, 0, 0.0000)
GO
SET IDENTITY_INSERT [dbo].[Ve] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_CaChieu]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[CaChieu] ADD  CONSTRAINT [UC_CaChieu] UNIQUE NONCLUSTERED 
(
	[MaPhim] ASC,
	[MaPhong] ASC,
	[ThoiGianChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_ChoNgoi]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[ChoNgoi] ADD  CONSTRAINT [UC_ChoNgoi] UNIQUE NONCLUSTERED 
(
	[Hang] ASC,
	[So] ASC,
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__0389B7BD4910893D]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[SoDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__NhanVien__F67C8D0B53D89838]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__PhongChi__AE382B2976A00A9C]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[PhongChieu] ADD UNIQUE NONCLUSTERED 
(
	[TenPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__9DB8791DF677DEBB]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[idNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__C9F28456B23DAE04]    Script Date: 06/05/2025 16:50:13 ******/
ALTER TABLE [dbo].[TaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CaChieu] ADD  DEFAULT ('0') FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChoNgoi] ADD  DEFAULT ((-1)) FOR [MaKhachHang]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [DiemTichLuy]
GO
ALTER TABLE [dbo].[PhongChieu] ADD  DEFAULT ((1)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[TaiKhoan] ADD  DEFAULT ((2)) FOR [LoaiTK]
GO
ALTER TABLE [dbo].[Ve] ADD  DEFAULT ('0') FOR [LoaiVe]
GO
ALTER TABLE [dbo].[Ve] ADD  DEFAULT ('0') FOR [TrangThai]
GO
ALTER TABLE [dbo].[Ve] ADD  DEFAULT ('0') FOR [TienBanVe]
GO
ALTER TABLE [dbo].[CaChieu]  WITH CHECK ADD FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[CaChieu]  WITH CHECK ADD FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[ChoNgoi]  WITH CHECK ADD  CONSTRAINT [FK_ChoNgoi_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChoNgoi] CHECK CONSTRAINT [FK_ChoNgoi_KhachHang]
GO
ALTER TABLE [dbo].[ChoNgoi]  WITH CHECK ADD  CONSTRAINT [FK_ChoNgoi_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[PhongChieu] ([MaPhong])
GO
ALTER TABLE [dbo].[ChoNgoi] CHECK CONSTRAINT [FK_ChoNgoi_Phong]
GO
ALTER TABLE [dbo].[PhanLoaiPhim]  WITH CHECK ADD FOREIGN KEY([idPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[PhanLoaiPhim]  WITH CHECK ADD FOREIGN KEY([idTheLoai])
REFERENCES [dbo].[TheLoai] ([MaLoaiPhim])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([idNV])
REFERENCES [dbo].[NhanVien] ([idNV])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_CaChieu] FOREIGN KEY([MaCaChieu])
REFERENCES [dbo].[CaChieu] ([MaCaChieu])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_CaChieu]
GO
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [CK_seat] CHECK  (([SoHangGhe]*[SoGheMotHang]=[SoChoNgoi]))
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [CK_seat]
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store sửa ca chiếu
CREATE PROC [dbo].[USP_capNhatCaChieu] @MaCaChieu VARCHAR(50), @ThoiGianChieu DATETIME, @ThoiGianKetThuc DATETIME, 
@MaPhong VARCHAR(50), @MaPhim VARCHAR(50), @GiaVe MONEY, @MaRap VARCHAR(50)
AS
BEGIN
	UPDATE CaChieu SET ThoiGianChieu = @ThoiGianChieu, ThoiGianKetThuc = @ThoiGianKetThuc, MaPhong = @MaPhong, MaPhim = @MaPhim, GiaVe = @GiaVe, MaRap = @MaRap
	WHERE MaCaChieu = @MaCaChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatDiem]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----Store xập nhật điểm tích lũy
CREATE PROC [dbo].[USP_capNhatDiem] @Diem int, @Sdt varchar(100)
AS 
	UPDATE KhachHang SET DiemTichLuy = @Diem WHERE SoDienThoai = @Sdt;
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatKhachHang]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----Store cập nhật thông tin khách hàng
CREATE PROCEDURE [dbo].[USP_capNhatKhachHang] @CusId INT, @name nvarchar(50), @address nvarchar(100), @birth int, @phone varchar(50), @point int
AS 
	UPDATE KhachHang SET TenKhachHang = @name, Diachi = @address, NamSinh = @birth, SoDienThoai = @phone, DiemTichLuy = @point
	WHERE MaKH = @CusId
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatNhanVien]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store Cập nhật nhân viên
CREATE PROCEDURE [dbo].[USP_capNhatNhanVien] @id varchar(50), @name nvarchar(100), @birth date, @address nvarchar(100), @phone varchar(100), @identity int
AS 
	UPDATE NhanVien SET idNV = @id, HoTen = @name, NgaySinh = @birth, DiaChi = @address, SDT = @phone, CMND = @identity
	WHERE idNV = @id
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatPhongChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--Store cập nhật phòng chiếu
CREATE PROC [dbo].[USP_capNhatPhongChieu] @MaPhong VARCHAR(50), @TenPhong NVARCHAR(100) , @SoChoNgoi INT, @TinhTrang INT, @SoHangGhe int ,@SoGheMotHang int
AS
BEGIN
	UPDATE PhongChieu SET TenPhong = @TenPhong, SoChoNgoi = @SoChoNgoi, TinhTrang = @TinhTrang, SoHangGhe = @SoHangGhe , SoGheMotHang = @SoGheMotHang WHERE MaPhong = @MaPhong
END
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatRapPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- Store cập nhật rạp
CREATE PROC [dbo].[USP_capNhatRapPhim] @MaRap VARCHAR(50), @TenRap NVARCHAR(100)
AS
	UPDATE Rap Set TenRap = @TenRap Where MaRap = @MaRap
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatTinhTrangCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store sửa tình trạng ca chiếu
CREATE PROC [dbo].[USP_capNhatTinhTrangCaChieu]
@MaCaChieu NVARCHAR(50), @TinhTrang int
AS
BEGIN
	UPDATE dbo.CaChieu
	SET TrangThai = @TinhTrang
	WHERE MaCaChieu = @MaCaChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_capNhatTrangThaiVe]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- Store cập nhật trạng thái vé
CREATE PROC [dbo].[USP_capNhatTrangThaiVe] @maVe Int, @TienBanVe money, @LoaiVe int
AS
	UPDATE VE Set TrangThai = 1, TienBanVe = @TienBanVe, LoaiVe = @LoaiVe Where id = @maVe;
GO
/****** Object:  StoredProcedure [dbo].[USP_congDiemTichLuy]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




--===================================================TẠO TRANSACTION==========================================================================
----Store + Transaction cập nhật điểm tích lũy cho khách hàng
CREATE PROC [dbo].[USP_congDiemTichLuy] @Sdt varchar(100), @bonus int
AS
	BEGIN TRANSACTION
		DECLARE @point int
		select @point = DiemTichLuy from KhachHang where SoDienThoai = @Sdt;
		set @point = @point + @bonus;
		update KhachHang set DiemTichLuy = @point where SoDienThoai = @Sdt;
		IF(@@ERROR > 0)  
		BEGIN  
			ROLLBACK TRANSACTION  
		END  
		ELSE  
		BEGIN  
			COMMIT TRANSACTION  
		END 
GO
/****** Object:  StoredProcedure [dbo].[USP_dangNhap]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--===================================================TẠO STORE============================================================================
----Store xử lý đăng nhập
CREATE PROC [dbo].[USP_dangNhap] @userName NVARCHAR(1000), @pass VARCHAR(1000)
AS
BEGIN
	SELECT * FROM dbo.TaiKhoan WHERE UserName = @userName AND Pass = @pass
END
GO
/****** Object:  StoredProcedure [dbo].[USP_hienDanhSachPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Store hien thi danh sach phim 
CREATE PROC [dbo].[USP_hienDanhSachPhim]
AS
BEGIN
	SELECT * FROM Phim
END
GO
/****** Object:  StoredProcedure [dbo].[USP_hienDanhSachTaiKhoan]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Thủ tục lấy danh sách các user
CREATE PROC [dbo].[USP_hienDanhSachTaiKhoan]
AS
BEGIN
	SELECT * FROM TaiKhoan
END
GO
/****** Object:  StoredProcedure [dbo].[USP_hienThiCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------STORE PHÂN LOẠI PHIM
-----------STORE CA CHIẾU
----Store hiện thị ca chiếu
CREATE PROC [dbo].[USP_hienThiCaChieu]
AS
BEGIN
	SELECT * FROM CaChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_hienThiTheLoaiPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-----------STORE THỂ LOẠI
----Store lấy danh sách thể loại phim
CREATE PROC [dbo].[USP_hienThiTheLoaiPhim]
AS
BEGIN
	SELECT * FROM TheLoai
END
GO
/****** Object:  StoredProcedure [dbo].[USP_layCaChieuTheoVe]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--- Store lấy ca chếu theo vé
CREATE PROC [dbo].[USP_layCaChieuTheoVe]
AS
BEGIN
	select CaChieu.MaCaChieu, CaChieu.MaPhong, CaChieu.MaRap, Phim.TenPhim, CaChieu.TrangThai, CaChieu.ThoiGianChieu
	from Phim , CaChieu 
	where Phim.MaPhim = CaChieu.MaPhim
	order by ThoiGianChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_layChiTietCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_layChiTietCaChieu] @MaCaChieu VARCHAR(50)
AS
SELECT CaChieu.*, TenPhong, SoChoNgoi, TinhTrang, SoHangGhe, SoGheMotHang, TenPhim, ThoiLuong, NgayKhoiChieu, NgayKetThuc, TenRap  FROM CaChieu INNER JOIN PhongChieu
ON Cachieu.MaPhong = PhongChieu.MaPhong
INNER JOIN Phim ON CaChieu.MaPhim = Phim.MaPhim
INNER JOIN Rap ON CaChieu.MaRap = Rap.MaRap 
WHERE CaChieu.maCaChieu = @MaCaChieu
GO
/****** Object:  StoredProcedure [dbo].[USP_layDanhSachCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store lấy danh sách ca chiếu
CREATE PROC [dbo].[USP_layDanhSachCaChieu]
AS
BEGIN
	--SELECT   DISTINCT  CC.MaCaChieu, CC.MaPhong, P.TenPhim , CC.ThoiGianChieu, CC.ThoiGianKetThuc, CC.GiaVe
	--FROM dbo.CaChieu AS CC, dbo.Phim AS p, dbo.PhanLoaiPhim AS PL
	--WHERE CC.MaPhim = PL.idPhim AND p.MaPhim = PL.idPhim 
	SELECT   CC.MaCaChieu, CC.MaPhong, CC.MaRap, P.TenPhim , CC.ThoiGianChieu, CC.ThoiGianKetThuc, CC.GiaVe
	FROM dbo.CaChieu AS CC, dbo.Phim AS p
	WHERE CC.MaPhim = p.MaPhim

END
GO
/****** Object:  StoredProcedure [dbo].[USP_layDanhSachPhongChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-----------STORE PHÒNG CHIẾU
--Store lấy danh sách phòng chiếu
CREATE PROC [dbo].[USP_layDanhSachPhongChieu] 
AS
BEGIN
	SELECT * FROM PhongChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_layDanhSachRapPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--- store lấy danh sách rạp phim
CREATE PROC [dbo].[USP_layDanhSachRapPhim]
AS
BEGIN
	SELECT MaRap, TenRap FROM Rap
END
GO
/****** Object:  StoredProcedure [dbo].[USP_layDoanhThuBoiPhimVaNgay]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----- DOANH THU ---
CREATE PROC [dbo].[USP_layDoanhThuBoiPhimVaNgay]
@idMovie VARCHAR(50), @fromDate date, @toDate date
AS
BEGIN
	SELECT P.TenPhim AS [Tên phim], CONVERT(DATE, CC.ThoiGianChieu) AS [Ngày chiếu], CONVERT(TIME(0),CC.ThoiGianChieu) AS [Giờ chiếu], COUNT(V.id) AS [Số vé đã bán], SUM(TienBanVe) AS [Tiền vé]
	FROM dbo.Ve AS V, dbo.CaChieu AS CC, Phim AS P
	WHERE V.MaCaChieu= CC.MaCaChieu AND CC.MaPhim = P.MaPhim AND V.TrangThai = 1 AND P.MaPhim = @idMovie AND CC.ThoiGianChieu >= @fromDate AND CC.ThoiGianChieu <= @toDate
	GROUP BY V.MaCaChieu, P.TenPhim, CC.ThoiGianChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_layTatCaKhachHang]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-----------STORE KHÁCH HÀNG
----Store lấy ra danh sách tất cả khách hàng
CREATE PROCEDURE [dbo].[USP_layTatCaKhachHang]
AS
	SELECT MaKH, TenKhachHang, Diachi, NamSinh, SoDienThoai, DiemTichLuy FROM KhachHang;
GO
/****** Object:  StoredProcedure [dbo].[USP_layTheLoaiBoiPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--- store lấy thế loại bởi mã phim
CREATE PROC [dbo].[USP_layTheLoaiBoiPhim] @MaPhim VARCHAR(50)
AS
BEGIN
	SELECT TL.MaLoaiPhim, TenTheLoai
	FROM dbo.PhanLoaiPhim PL, dbo.TheLoai TL
	WHERE PL.idPhim = @MaPhim AND PL.idTheLoai = TL.MaLoaiPhim
END
GO
/****** Object:  StoredProcedure [dbo].[USP_layThongTinKhachHang]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----Store lấy thông tin của khách hàng dựa vào số điện thoại đăng ký thành viên
CREATE PROC [dbo].[USP_layThongTinKhachHang] @Sdt varchar(100)
AS
	SELECT DISTINCT * FROM KhachHang Where SoDienThoai = @Sdt
GO
/****** Object:  StoredProcedure [dbo].[USP_suaDanhSachPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Store sua danh sach phim
CREATE PROC [dbo].[USP_suaDanhSachPhim] @MaPhim VARCHAR(50), @TenPhim NVARCHAR(100), @MoTa NVARCHAR(1000), @ThoiLuong FLOAT, @NgayKhoiChieu DATE,
@NgayKetThuc DATE, @QuocGia NVARCHAR(50), @DaoDien NVARCHAR(100), @NamSX int, @GioiHanTuoi INT
AS
BEGIN
	UPDATE Phim SET TenPhim = @TenPhim, MoTa = @MoTa, ThoiLuong = @ThoiLuong, NgayKhoiChieu = @NgayKhoiChieu, NgayKetThuc = @NgayKetThuc, @NamSX = NamSX, QuocGia = @QuocGia, DaoDien = @DaoDien WHERE MaPhim = @MaPhim
END
GO
/****** Object:  StoredProcedure [dbo].[USP_suaDanhSachTaiKhoan]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Thủ tục cập nhật thông tin tài khoản user
CREATE PROC [dbo].[USP_suaDanhSachTaiKhoan] @UserName NVARCHAR(100), @Pass NVARCHAR(1000), @LoaiTK INT, @idNV VARCHAR(50)
AS
BEGIN
	UPDATE TaiKhoan SET Pass = @Pass WHERE idNV = @idNV
END
GO
/****** Object:  StoredProcedure [dbo].[USP_suaTheLoaiPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store sửa thể loại phim
CREATE PROC [dbo].[USP_suaTheLoaiPhim] @MaLoaiPhim  VARCHAR(50), @TenTheLoai NVARCHAR(100)
AS
BEGIN
	UPDATE TheLoai SET TenTheLoai = @TenTheLoai WHERE MaLoaiPhim = @MaLoaiPhim
END
GO
/****** Object:  StoredProcedure [dbo].[USP_suDungDiemTichLuy]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----Store + Transaction sử dụng điểm tích lũy 
CREATE PROC [dbo].[USP_suDungDiemTichLuy] @Sdt varchar(100)
AS
	BEGIN TRANSACTION
		DECLARE @point int
		select @point = DiemTichLuy from KhachHang where SoDienThoai = @Sdt;
		update KhachHang set DiemTichLuy = 0 where SoDienThoai = @Sdt;
		IF(@@ERROR > 0)  
		BEGIN  
			ROLLBACK TRANSACTION
		END  
		ELSE  
		BEGIN  
			COMMIT TRANSACTION  
		END 
GO
/****** Object:  StoredProcedure [dbo].[USP_themCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----Store thêm ca chiếu
CREATE PROC [dbo].[USP_themCaChieu] @MaCaChieu VARCHAR(50), @ThoiGianChieu DATETIME, @ThoiGianKetThuc DATETIME, 
@MaPhong VARCHAR(50), @MaPhim VARCHAR(50), @GiaVe MONEY, @MaRap VARCHAR(50)
AS
BEGIN
	INSERT INTO CaChieu(MaCaChieu, ThoiGianChieu, ThoiGianKetThuc, MaPhong, MaPhim, GiaVe, MaRap)
	VALUES (@MaCaChieu, @ThoiGianChieu, @ThoiGianKetThuc, @MaPhong, @MaPhim, @GiaVe, @MaRap)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_themDanhSachPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--------------Phim
--Store Them danh sach phim
CREATE PROC [dbo].[USP_themDanhSachPhim] @MaPhim VARCHAR(50), @TenPhim NVARCHAR(100), @MoTa NVARCHAR(1000), @ThoiLuong FLOAT, @NgayKhoiChieu DATE,
@NgayKetThuc DATE, @QuocGia NVARCHAR(50), @DaoDien NVARCHAR(100), @NamSX INT, @GioiHanTuoi INT
AS
BEGIN
	INSERT Phim (MaPhim, TenPhim, MoTa, ThoiLuong, NgayKhoiChieu, NgayKetThuc,QuocGia, DaoDien, NamSX, GioiHanTuoi) 
VALUES (@MaPhim, @TenPhim, @MoTa, @ThoiLuong, @NgayKhoiChieu , @NgayKetThuc, @QuocGia, @DaoDien, @NamSX, @GioiHanTuoi)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_themDanhSachTaiKhoan]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



------STORE TaiKhoan
--Thủ tục thêm mới tài khoản user
CREATE PROC [dbo].[USP_themDanhSachTaiKhoan] @UserName NVARCHAR(100), @Pass NVARCHAR(1000), @LoaiTK INT, @idNV VARCHAR(50)
AS
BEGIN
	INSERT TaiKhoan (UserName, Pass,LoaiTK, idNV) VALUES (@UserName, @Pass , @LoaiTK, @idNV)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_themKhachHang]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

----Store thêm khách hàng
CREATE PROCEDURE [dbo].[USP_themKhachHang] @TenKhachHang nvarchar(50), @DiaChi nvarchar(100), @NamSinh int, @SoDienThoai varchar(50), @Diem int
AS
	INSERT INTO KhachHang(TenKhachHang, DiaChi, NamSinh, SoDienThoai, DiemTichLuy) 
	VALUES(@TenKhachHang, @DiaChi, @NamSinh, @SoDienThoai, @Diem)
GO
/****** Object:  StoredProcedure [dbo].[USP_themNhanVien]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----Store Thêm nhân viên
CREATE PROCEDURE [dbo].[USP_themNhanVien] @idNV varchar(50), @HoTen nvarchar(100), @NgaySinh date, @DiaChi varchar(100), @SDT varchar(100), @CMND int
AS
	INSERT INTO NhanVien(idNV , HoTen , NgaySinh , DiaChi , SDT , CMND) 
	VALUES(@idNV, @HoTen , @NgaySinh , @DiaChi , @SDT , @CMND )
GO
/****** Object:  StoredProcedure [dbo].[USP_themPhongChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Store thêm phòng chiếu
CREATE PROC [dbo].[USP_themPhongChieu] @MaPhong VARCHAR(50), @TenPhong NVARCHAR(100) , @SoChoNgoi INT, @TinhTrang INT, @SoHangGhe int ,@SoGheMotHang int
AS
BEGIN
	INSERT INTO PhongChieu(MaPhong, TenPhong, SoChoNgoi, TinhTrang, SoHangGhe, SoGheMotHang) VALUES (@MaPhong, @TenPhong, @SoChoNgoi, @TinhTrang, @SoHangGhe, @SoGheMotHang)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_themRapPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---Store thêm rạp phim
CREATE PROC [dbo].[USP_themRapPhim] @MaRap  VARCHAR(50), @TenRap NVARCHAR(100)
AS
BEGIN
	INSERT INTO Rap (MaRap, TenRap) VALUES (@MaRap, @TenRap)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_themTheLoaiPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



---Store thêm thể loại phim
CREATE PROC [dbo].[USP_themTheLoaiPhim] @MaLoaiPhim  VARCHAR(50), @TenTheLoai NVARCHAR(100)
AS
BEGIN
	INSERT INTO TheLoai (MaLoaiPhim, TenTheLoai) VALUES (@MaLoaiPhim, @TenTheLoai)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_themVeCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-----------STORE VÉ
----Store thêm vé bằng mã ca chiếu
CREATE PROC [dbo].[USP_themVeCaChieu]
@MaCaChieu VARCHAR(50), @MaGheNgoi VARCHAR(50)
AS
BEGIN
	INSERT INTO dbo.Ve (MaCaChieu, MaGheNgoi, MaKhachHang)
	VALUES(@MaCaChieu, @MaGheNgoi, null)
END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--STORE xóa ca chiếu
CREATE PROC [dbo].[USP_xoaCaChieu] @MaCaChieu VARCHAR(50)
AS
BEGIN
	DELETE FROM CaChieu WHERE MaCaChieu = @MaCaChieu
END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaDanhSachPhimTuCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Store xoa danh sach phim
CREATE PROC [dbo].[USP_xoaDanhSachPhimTuCaChieu] @MaPhim varchar(50)
AS
BEGIN 
	DELETE FROM PhanLoaiPhim WHERE idPhim = @MaPhim
	DELETE FROM CaChieu WHERE MaPhim = @MaPhim
	DELETE FROM Phim WHERE MaPhim = @MaPhim

END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaDanhSachTaiKhoan]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Thủ tục xóa tài khoản user
CREATE PROC [dbo].[USP_xoaDanhSachTaiKhoan] @idNV VARCHAR(50)
AS
BEGIN
	DELETE TaiKhoan WHERE idNV = @idNV
END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaKhachHang]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store xóa khách hàng bởi id
CREATE PROCEDURE [dbo].[USP_xoaKhachHang] @CusID INT
AS
	DELETE FROM KhachHang WHERE MaKH = @CusID
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaNhanVien]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





----Store xóa nhân viên
CREATE PROCEDURE [dbo].[USP_xoaNhanVien] @StaffID varchar(50)
AS
	DELETE FROM NhanVien WHERE idNV = @StaffID
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaPhongChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Store xóa Phòng chiếu
CREATE PROC [dbo].[USP_xoaPhongChieu] @MaPhong VARCHAR(50)
AS
BEGIN
	DELETE FROM PhongChieu WHERE MaPhong = @MaPhong
END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaRapPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
----Store xóa rạp phim
CREATE PROC [dbo].[USP_xoaRapPhim] @MaRap  VARCHAR(50)
AS
BEGIN
	DELETE FROM Rap WHERE MaRap = @MaRap
END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaTheLoaiPhim]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



----Store xóa thể loại phim
CREATE PROC [dbo].[USP_xoaTheLoaiPhim] @MaLoaiPhim  VARCHAR(50)
AS
BEGIN
	DELETE FROM TheLoai WHERE MaLoaiPhim = @MaLoaiPhim
END
GO
/****** Object:  StoredProcedure [dbo].[USP_xoaVeBoiMaCaChieu]    Script Date: 06/05/2025 16:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


----Store xóa vé bằng mã ca chiếu
CREATE PROC [dbo].[USP_xoaVeBoiMaCaChieu]
@MaCaChieu VARCHAR(50)
AS
BEGIN
	DELETE FROM dbo.Ve
	WHERE MaCaChieu = @MaCaChieu
END
GO
USE [master]
GO
ALTER DATABASE [QuanLyXemPhim] SET  READ_WRITE 
GO

--Store COMBO
CREATE PROCEDURE USP_layDanhSachComboBapNuoc
AS
BEGIN
    SELECT MaCombo, TenCombo, Gia
    FROM ComboBapNuoc
END


--Them
CREATE PROC sp_ThemCombo
    @TenCombo NVARCHAR(100),
    @Gia MONEY
AS
BEGIN
    INSERT INTO ComboBapNuoc (TenCombo, Gia)
    VALUES (@TenCombo, @Gia)
END

--Sua

CREATE PROCEDURE sp_SuaCombo
    @MaCombo INT,
    @TenCombo NVARCHAR(100),
    @Gia MONEY
AS
BEGIN
    UPDATE ComboBapNuoc
    SET TenCombo = @TenCombo,
        Gia = @Gia
    WHERE MaCombo = @MaCombo
END

--Xoa
CREATE PROCEDURE sp_XoaCombo
    @MaCombo INT
AS
BEGIN
    DELETE FROM ComboBapNuoc
    WHERE MaCombo = @MaCombo
END


