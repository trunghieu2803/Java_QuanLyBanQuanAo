USE [master]
GO
/****** Object:  Database [QUANLYSHOPQUANAO]    Script Date: 10/16/2023 4:18:15 PM ******/
CREATE DATABASE [QUANLYSHOPQUANAO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLYSHOPQUANAO', FILENAME = N'D:\SQL\sqlServer\MSSQL16.HIEUNE\MSSQL\DATA\QUANLYSHOPQUANAO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QUANLYSHOPQUANAO_log', FILENAME = N'D:\SQL\sqlServer\MSSQL16.HIEUNE\MSSQL\DATA\QUANLYSHOPQUANAO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYSHOPQUANAO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLYSHOPQUANAO', N'ON'
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUANLYSHOPQUANAO]
GO
/****** Object:  Table [dbo].[cthoadon]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cthoadon](
	[sohd] [varchar](20) NOT NULL,
	[masanpham] [varchar](10) NOT NULL,
	[sanpham] [nvarchar](50) NULL,
	[dongia] [float] NULL,
	[soluong] [int] NULL,
	[size] [nvarchar](10) NULL,
	[tongtien] [float] NULL,
 CONSTRAINT [pk_cthoadon] PRIMARY KEY CLUSTERED 
(
	[sohd] ASC,
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[sohd] [varchar](20) NOT NULL,
	[manhanvien] [varchar](10) NULL,
	[nhanvienlap] [nvarchar](50) NULL,
	[ngaylap] [date] NULL,
	[makh] [int] NULL,
 CONSTRAINT [pk_hoadon] PRIMARY KEY CLUSTERED 
(
	[sohd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[makh] [int] NOT NULL,
	[tenkhach] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](3) NULL,
	[sdt] [nvarchar](20) NULL,
	[maloaikhachhang] [int] NULL,
 CONSTRAINT [pk_khachhang] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaikhachhang]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaikhachhang](
	[maloaikhachhang] [int] NOT NULL,
	[tenloaikhachhang] [nvarchar](50) NULL,
	[ghichu] [nvarchar](255) NULL,
 CONSTRAINT [pk_loaikhachhang] PRIMARY KEY CLUSTERED 
(
	[maloaikhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[maloaisanpham] [int] NOT NULL,
	[tenloaisanpham] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_loaisanpham] PRIMARY KEY CLUSTERED 
(
	[maloaisanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [varchar](10) NOT NULL,
	[tennhanvien] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](10) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [nvarchar](20) NULL,
	[tendangnhap] [varchar](50) NULL,
	[matkhau] [varchar](50) NULL,
	[chucvu] [nvarchar](30) NULL,
 CONSTRAINT [pk_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 10/16/2023 4:18:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[masanpham] [varchar](10) NOT NULL,
	[tensanpham] [nvarchar](50) NULL,
	[maloaisanpham] [int] NULL,
	[gianhap] [float] NOT NULL,
	[giaban] [float] NOT NULL,
	[motasanpham] [nvarchar](50) NULL,
	[size] [nvarchar](10) NULL,
	[ngaysanxuat] [date] NULL,
	[soluong] [int] NULL,
	[anhsp] [image] NULL,
 CONSTRAINT [pk_sanpham] PRIMARY KEY CLUSTERED 
(
	[masanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD01', N'SP03', N'ÁO THUN TAY NGẮN CÓ CỔ', 60000, 5, N'M', 300000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD01', N'SP10', N'QUẦN SORT KAKI TRƠN', 95000, 3, N'XL', 285000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD01', N'SP13', N'QUẦN SORT JEAN RÁCH', 170000, 8, N'XL', 1360000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD02', N'SP02', N'ÁO THUN TAY NGẮN HỌA TIẾT', 70000, 3, N'XL', 210000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD02', N'SP03', N'ÁO THUN TAY NGẮN CÓ CỔ', 60000, 2, N'XL', 120000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD04', N'SP14', N'QUẦN SORT THUN', 145000, 3, N'XL', 435000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD05', N'SP10', N'QUẦN SORT KAKI TRƠN', 95000, 1, N'XL', 95000)
INSERT [dbo].[cthoadon] ([sohd], [masanpham], [sanpham], [dongia], [soluong], [size], [tongtien]) VALUES (N'HD08', N'SP06', N'ÁO THUN TAY DÀI SỌC', 80000, 4, N'XL', 320000)
GO
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD01', N'NV01', N'Nguyễn Trung Hiếu', CAST(N'2023-09-16' AS Date), 1)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD02', N'NV01', N'Nguyễn Trung Hiếu', CAST(N'2023-10-06' AS Date), 2)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD03', N'NV03', N'Dương Công Kiên', CAST(N'2023-08-06' AS Date), 5)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD04', N'NV02', N'Trần Thị Nhật Linh', CAST(N'2023-08-30' AS Date), 3)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD05', N'NV03', N'Dương Công Kiên', CAST(N'2023-10-10' AS Date), 2)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD06', N'NV01', N'Nguyễn Trung Hiếu', CAST(N'2023-10-10' AS Date), 3)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD07', N'NV03', N'Dương Công Kiên', CAST(N'2023-10-08' AS Date), 3)
INSERT [dbo].[hoadon] ([sohd], [manhanvien], [nhanvienlap], [ngaylap], [makh]) VALUES (N'HD08', N'NV03', N'Dương Công Kiên', CAST(N'2023-09-13' AS Date), 5)
GO
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (1, N'TRẦN XUÂN PHÚC', N'TÂN PHÚ', N'NAM', N'0123456781', 2)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (2, N'NGUYỄN QUANG HẢI', N'QUẬN 12', N'NAM', N'0123456782', 2)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (3, N'TRẦN THỊ THU BÍCH', N'GÒ VẤP', N'NỮ', N'0123456783', 3)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (4, N'TRẦN ĐÌNH BẢO', N'TÂN BÌNH', N'NAM', N'0123456784', 3)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (5, N'LÊ THỊ BẢO TRÂN', N'QUẬN 1', N'NỮ', N'0123456784', 1)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (6, N'LÊ ĐÌNH TIẾN', N'BÌNH TÂN', N'NAM', N'0123456785', 1)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (8, N'NGUYỄN THỊ LAN', N'QUẬN 4', N'NỮ', N'0123456787', 3)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (9, N'VÕ XUÂN PHÚC', N'QUẬN 8', N'NAM', N'0123456788', 2)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (10, N'NGÔ HUY TRUNG', N'QUẬN 5', N'NAM', N'0123456789', 1)
INSERT [dbo].[khachhang] ([makh], [tenkhach], [diachi], [gioitinh], [sdt], [maloaikhachhang]) VALUES (11, N'VÕ PHẠM NHƯ NGỌC', N'TÂN PHÚ', N'NỮ', N'0123456785', 3)
GO
INSERT [dbo].[loaikhachhang] ([maloaikhachhang], [tenloaikhachhang], [ghichu]) VALUES (1, N'vip', N'giảm 10%')
INSERT [dbo].[loaikhachhang] ([maloaikhachhang], [tenloaikhachhang], [ghichu]) VALUES (2, N'thường', N'giảm 0%')
INSERT [dbo].[loaikhachhang] ([maloaikhachhang], [tenloaikhachhang], [ghichu]) VALUES (3, N'sinh viên', N'giảm 5%')
GO
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (1, N'Áo Thun')
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (2, N'Áo Sơ Mi')
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (3, N'Quần Sort')
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (4, N'Quần Tây')
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (5, N'Quần Jean')
INSERT [dbo].[loaisanpham] ([maloaisanpham], [tenloaisanpham]) VALUES (6, N'Quần Jogger')
GO
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [diachi], [sdt], [tendangnhap], [matkhau], [chucvu]) VALUES (N'NV01', N'Nguyễn Trung Hiếu', N'NAM', CAST(N'2000-06-07' AS Date), N'Tân Phú', N'0988.438.442', N'admin', N'123', N'CHỦ SHOP')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [diachi], [sdt], [tendangnhap], [matkhau], [chucvu]) VALUES (N'NV02', N'Trần Thị Nhật Linh', N'NỮ', CAST(N'2000-01-09' AS Date), N'Tân Bình', N'028.736.3764', N'linh', N'124', N'QUẢN LÝ')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [diachi], [sdt], [tendangnhap], [matkhau], [chucvu]) VALUES (N'NV03', N'Dương Công Kiên', N'Nam', CAST(N'2000-10-01' AS Date), N'Bình Thạnh', N'038.343.8643', N'kien', N'125', N'NHÂN VIÊN')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [diachi], [sdt], [tendangnhap], [matkhau], [chucvu]) VALUES (N'NV04', N'Nguyễn Anh Duy', N'NAM', CAST(N'2000-10-01' AS Date), N'Bình Thạnh', N'038.343.8643', N'duy', N'125', N'NHÂN VIÊN')
INSERT [dbo].[nhanvien] ([manhanvien], [tennhanvien], [gioitinh], [ngaysinh], [diachi], [sdt], [tendangnhap], [matkhau], [chucvu]) VALUES (N'NV05', N'Vũ Tùng Dương', N'NAM', CAST(N'2000-11-29' AS Date), N'Gò Vấp', N'0961042098', N'nhan', N'duong', N'NHÂN VIÊN')
GO
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP01', N'ÁO THUN 1', 1, 50000, 55000, N'ÁO THUN TAY NGẮN TRƠN', N'M', CAST(N'2023-10-10' AS Date), 50, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E7461796E67616E74726F6E)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP02', N'ÁO THUN 2', 1, 65000, 70000, N'ÁO THUN TAY NGẮN HỌA TIẾT', N'L', CAST(N'2023-08-14' AS Date), 37, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E7461796E67616E686F6174696574)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP03', N'ÁO THUN 3', 1, 45000, 60000, N'ÁO THUN TAY NGẮN CÓ CỔ', N'XL', CAST(N'2023-05-01' AS Date), 73, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E7461796E67616E636F636F)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP04', N'ÁO THUN 4', 1, 80000, 100000, N'ÁO THUN TAY NGẮN IN HÌNH', N'M', CAST(N'2023-07-19' AS Date), 45, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E7461796E67616E696E68696E68)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP05', N'ÁO THUN 5', 1, 75000, 80000, N'ÁO THUN TAY DÀI TRƠN', N'XL', CAST(N'2023-09-10' AS Date), 25, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E74617964616974726F6E)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP06', N'ÁO THUN 6', 1, 70000, 80000, N'ÁO THUN TAY DÀI SỌC', N'L', CAST(N'2023-04-11' AS Date), 10, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E746179646169736F63)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP07', N'ÁO THUN 7', 1, 120000, 145000, N'ÁO THUN TAY DÀI LEN', N'L', CAST(N'2023-03-25' AS Date), 39, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E7461796461696C656E)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP08', N'ÁO THUN 8', 1, 110000, 115000, N'ÁO THUN TAY HỌA TIẾT', N'M', CAST(N'2023-06-17' AS Date), 48, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F7468756E746179646169686F6174696574)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP09', N'QUẦN SORT 1', 3, 100000, 105000, N'QUẦN SORT KAKI SỌC', N'L', CAST(N'2023-09-24' AS Date), 30, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E736F72746B616B69736F63)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP10', N'QUẦN SORT 2', 3, 90000, 95000, N'QUẦN SORT KAKI TRƠN', N'M', CAST(N'2023-05-26' AS Date), 26, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E736F72746B616B6974726F6E)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP11', N'QUẦN SORT 3', 3, 110000, 120000, N'QUẦN SORT KAKI TÚI HỘP', N'XL', CAST(N'2023-08-14' AS Date), 50, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E736F72746B616B69747569686F70)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP12', N'QUẦN SORT 4', 3, 145000, 255000, N'QUẦN SORT JEAN TRƠN', N'M', CAST(N'2023-03-16' AS Date), 70, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E736F72746A65616E74726F6E)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP13', N'QUẦN SORT 5', 3, 135000, 170000, N'QUẦN SORT JEAN RÁCH', N'L', CAST(N'2023-05-17' AS Date), 82, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E736F72746A65616E72616368)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP14', N'QUẦN SORT 6', 3, 120000, 145000, N'QUẦN SORT THUN', N'XL', CAST(N'2023-09-10' AS Date), 57, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E736F72747468756E)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP15', N'QUẦN JEAN', 5, 445000, 545000, N'QUẦN JEAN M1QJN119008', N'XL', CAST(N'2023-06-28' AS Date), 32, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E6A65616E6D31)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP16', N'QUẦN JEAN', 5, 395000, 450000, N'QUẦN JEAN M1QJN100008', N'XL', CAST(N'2023-09-11' AS Date), 45, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E6A65616E6D32)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP17', N'QUẦN JOGGER', 6, 385000, 400000, N'QUẦN JOGGER M1QJG100001', N'XL', CAST(N'2023-06-28' AS Date), 60, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E6A6F6767657231)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP19', N'QUẦN TÂY', 4, 445000, 545000, N'QUẦN TÂY M1QTY129041', N'XL', CAST(N'2023-09-20' AS Date), 51, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C7175616E746179)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP20', N'ÁO SƠ MI 1', 2, 275000, 300000, N'ÁO SOMI M1SMN050002', N'L', CAST(N'2023-06-28' AS Date), 25, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F736F6D6931)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP21', N'ÁO SƠ MI 2', 2, 275000, 300000, N'ÁO SOMI M1SMN050001', N'L', CAST(N'2023-05-11' AS Date), 31, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F736F6D6932)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP22', N'ÁO SƠ MI 3', 2, 275000, 295000, N'ÁO SOMI M1SMD020002', N'M', CAST(N'2023-06-28' AS Date), 50, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F736F6D6933)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP23', N'ÁO SƠ MI 4', 2, 295000, 305000, N'ÁO SOMI M1SMD050001', N'M', CAST(N'2023-09-10' AS Date), 100, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F736F6D6934)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP24', N'ÁO SƠ MI 5', 2, 275000, 300000, N'ÁO SOMI M1SMD040001', N'M', CAST(N'2023-04-11' AS Date), 20, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F736F6D6935)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP25', N'ÁO SƠ MI 6', 2, 285000, 325000, N'ÁO SOMI M1SMD030002', N'M', CAST(N'2023-06-28' AS Date), 60, 0x443A5C56697375616C53747564696F5C536F757263655C5175616E4C7953686F705175616E416F5C514C53484F505155414E414F5C496D6167655C616F736F6D6936)
INSERT [dbo].[sanpham] ([masanpham], [tensanpham], [maloaisanpham], [gianhap], [giaban], [motasanpham], [size], [ngaysanxuat], [soluong], [anhsp]) VALUES (N'SP26', N'ÁO THUN 8', 1, 110000, 115000, N'ÁO THUN TAY HỌA TIẾT', N'M', CAST(N'2023-06-17' AS Date), 48, NULL)
GO
ALTER TABLE [dbo].[cthoadon]  WITH CHECK ADD  CONSTRAINT [fk_cthoadon_hoadon] FOREIGN KEY([sohd])
REFERENCES [dbo].[hoadon] ([sohd])
GO
ALTER TABLE [dbo].[cthoadon] CHECK CONSTRAINT [fk_cthoadon_hoadon]
GO
ALTER TABLE [dbo].[cthoadon]  WITH CHECK ADD  CONSTRAINT [fk_cthoadon_sanpham] FOREIGN KEY([masanpham])
REFERENCES [dbo].[sanpham] ([masanpham])
GO
ALTER TABLE [dbo].[cthoadon] CHECK CONSTRAINT [fk_cthoadon_sanpham]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [fk_hoadon_khachhang] FOREIGN KEY([makh])
REFERENCES [dbo].[khachhang] ([makh])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [fk_hoadon_khachhang]
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD  CONSTRAINT [fk_hoadon_nhanvien] FOREIGN KEY([manhanvien])
REFERENCES [dbo].[nhanvien] ([manhanvien])
GO
ALTER TABLE [dbo].[hoadon] CHECK CONSTRAINT [fk_hoadon_nhanvien]
GO
ALTER TABLE [dbo].[khachhang]  WITH CHECK ADD  CONSTRAINT [fk_khachhang_loaikhachhang] FOREIGN KEY([maloaikhachhang])
REFERENCES [dbo].[loaikhachhang] ([maloaikhachhang])
GO
ALTER TABLE [dbo].[khachhang] CHECK CONSTRAINT [fk_khachhang_loaikhachhang]
GO
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [fk_sanpham_loaisanpham] FOREIGN KEY([maloaisanpham])
REFERENCES [dbo].[loaisanpham] ([maloaisanpham])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [fk_sanpham_loaisanpham]
GO
USE [master]
GO
ALTER DATABASE [QUANLYSHOPQUANAO] SET  READ_WRITE 
GO
