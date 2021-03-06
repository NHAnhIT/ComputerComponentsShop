USE [DB_DOAN3]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHoaDon]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHoaDon](
	[MaHoaDon] [int] NOT NULL,
	[MaThietBi] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tbl_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietPhieuNhap]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietPhieuNhap](
	[MaPhieuNhap] [int] NOT NULL,
	[MaThietBi] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietThietBi]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietThietBi](
	[MaThietBi] [int] NOT NULL,
	[MaChiTietThongSo] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_ChiTietThietBi] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC,
	[MaChiTietThongSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietThongSo]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietThongSo](
	[MaChiTietThongSo] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[MaThongSo] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ChiTietThongSo] PRIMARY KEY CLUSTERED 
(
	[MaChiTietThongSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChucVu]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Hang]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hang](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[MaTrangThaiKinhDoanh] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaNhanVien] [int] NULL,
	[TongTien] [int] NOT NULL,
	[NgayLap] [nvarchar](255) NOT NULL,
	[MaTrangThaiDonHang] [int] NOT NULL,
	[NgayNhan] [varchar](50) NULL,
	[DiaChiNhan] [nvarchar](255) NULL,
	[TrangThaiThanhToan] [int] NOT NULL,
	[NguoiNhan] [nvarchar](255) NULL,
	[SDT] [int] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[TaiKhoan] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiHang]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiHang](
	[MaLoaiThietBi] [int] NOT NULL,
	[MaHang] [int] NOT NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_LoaiHang] PRIMARY KEY CLUSTERED 
(
	[MaLoaiThietBi] ASC,
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiThietBi]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiThietBi](
	[MaLoaiThietBi] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiThietBi] [nvarchar](255) NOT NULL,
	[MaTrangThaiKinhDoanh] [int] NULL,
 CONSTRAINT [PK_tbl_LoaiThietBi] PRIMARY KEY CLUSTERED 
(
	[MaLoaiThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhaCungCap]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhaCungCap](
	[MaNhaCungCap] [int] NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [int] NOT NULL,
 CONSTRAINT [PK_tbl_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[GioiTinh] [nvarchar](255) NOT NULL,
	[TaiKhoan] [nvarchar](255) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[SDT] [int] NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[CMND] [int] NOT NULL,
	[MaChucVu] [int] NULL,
 CONSTRAINT [PK_tbl_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PhieuNhap]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PhieuNhap](
	[MaPhieuNhap] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [int] NOT NULL,
	[NgayLap] [nvarchar](255) NOT NULL,
	[TongTien] [int] NOT NULL,
	[MaNhaCungCap] [int] NULL,
 CONSTRAINT [PK_tbl_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThietBi]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThietBi](
	[MaThietBi] [int] IDENTITY(1,1) NOT NULL,
	[TenThietBi] [nvarchar](255) NOT NULL,
	[MaLoaiThietBi] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
	[MaHang] [int] NOT NULL,
	[MaTrangThaiKinhDoanh] [int] NOT NULL,
	[MoTa] [nvarchar](255) NULL,
	[HinhAnh] [nvarchar](255) NULL,
 CONSTRAINT [PK_tbl_ThietBi] PRIMARY KEY CLUSTERED 
(
	[MaThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThongSo]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThongSo](
	[MaThongSo] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
	[MaLoaiThietBi] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ThongSo] PRIMARY KEY CLUSTERED 
(
	[MaThongSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TrangThaiHoaDon]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TrangThaiHoaDon](
	[MaTrangThaiHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_TrangThaiHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaTrangThaiHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TrangThaiKinhDoanh]    Script Date: 4/28/2021 9:39:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TrangThaiKinhDoanh](
	[MaTrangThaiKinhDoanh] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_TrangThaiKinhDoanh] PRIMARY KEY CLUSTERED 
(
	[MaTrangThaiKinhDoanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_ChiTietHoaDon] ([MaHoaDon], [MaThietBi], [SoLuong], [ThanhTien], [DonGia]) VALUES (13, 13, 2, 2300000, 1150000)
INSERT [dbo].[tbl_ChiTietHoaDon] ([MaHoaDon], [MaThietBi], [SoLuong], [ThanhTien], [DonGia]) VALUES (14, 17, 3, 41370000, 13790000)
GO
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (1, 75, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (1, 78, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (1, 80, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (1, 81, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (1, 86, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (2, 67, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (2, 75, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (2, 78, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (2, 80, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (2, 81, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (3, 65, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (3, 75, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (3, 78, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (3, 80, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (3, 81, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (4, 66, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (4, 75, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (4, 78, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (4, 80, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (4, 81, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (13, 57, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (13, 60, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (13, 64, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (14, 57, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (14, 60, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (14, 64, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (15, 54, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (15, 59, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (15, 63, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (16, 60, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (16, 64, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (16, 87, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 1, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 14, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 15, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 43, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 93, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 96, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 100, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (17, 102, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 1, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 14, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 15, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 43, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 93, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 96, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 100, NULL)
INSERT [dbo].[tbl_ChiTietThietBi] ([MaThietBi], [MaChiTietThongSo], [GhiChu]) VALUES (18, 102, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_ChiTietThongSo] ON 

INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (1, N'4GB', 1)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (2, N'8GB', 1)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (3, N'16GB', 1)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (5, N'32GB', 1)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (7, N'NVIDIA GeForce GTX 1650', 3)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (9, N'NVIDIA GeForce GTX 1650Ti', 3)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (10, N'NVIDIA GeForce GTX 1050', 3)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (11, N'NVIDIA GeForce GTX 1660Ti', 3)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (13, N'HDD', 2)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (14, N'SSD', 2)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (15, N'Full HD', 5)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (39, N'HD', 5)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (40, N'Ultra HD (4K)', 5)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (41, N'WQHD', 5)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (42, N'Quad HD (2K)', 5)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (43, N'Core i5', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (44, N'Core i3', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (45, N'Core i7', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (46, N'Core i9', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (47, N'Pentium', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (48, N'Ryzen 3', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (49, N'Ryzen 5', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (50, N'Ryzen 7', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (52, N'Ryzen 9', 15)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (53, N'1333MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (54, N'1600MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (55, N'2400MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (56, N'3200MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (57, N'2666MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (58, N'2800MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (59, N'4GB', 7)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (60, N'8GB', 7)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (61, N'16GB', 7)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (62, N'32GB', 7)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (63, N'DDR3', 9)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (64, N'DDR4', 9)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (65, N'1TB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (66, N'2TB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (67, N'500GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (68, N'4TB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (69, N'256GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (70, N'128GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (71, N'120GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (72, N'6TB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (73, N'240GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (74, N'512GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (75, N'2.5"', 11)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (76, N'3.5"', 11)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (77, N'HDD', 13)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (78, N'SSD', 13)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (79, N'3D-NAND', 14)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (80, N'V-NAND', 14)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (81, N'SATA 3', 16)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (82, N'USB 3.0', 16)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (83, N'M.2 NVMe', 16)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (84, N'M.2 SATA', 16)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (85, N'Ethernet', 16)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (86, N'250GB', 10)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (87, N'3000MHz', 6)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (88, N'500GB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (89, N'250GB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (90, N'1TB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (91, N'2TB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (93, N'256GB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (94, N'512GB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (95, N'240GB', 17)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (96, N'Intel UHD Graphics', 3)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (97, N'7', 18)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (98, N'8', 18)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (99, N'9', 18)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (100, N'10', 18)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (101, N'12GB', 19)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (102, N'16GB', 19)
INSERT [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo], [Ten], [MaThongSo]) VALUES (103, N'32GB', 19)
SET IDENTITY_INSERT [dbo].[tbl_ChiTietThongSo] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ChucVu] ON 

INSERT [dbo].[tbl_ChucVu] ([MaChucVu], [Ten]) VALUES (1, N'Admin')
INSERT [dbo].[tbl_ChucVu] ([MaChucVu], [Ten]) VALUES (2, N'Nhân viên')
INSERT [dbo].[tbl_ChucVu] ([MaChucVu], [Ten]) VALUES (3, N'Thủ kho')
SET IDENTITY_INSERT [dbo].[tbl_ChucVu] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Hang] ON 

INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (1, N'SamSung', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (2, N'ASUS', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (3, N'HP', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (4, N'Acer', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (5, N'Dell', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (6, N'Lenovo', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (7, N'MSI', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (8, N'LG', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (9, N'G.SKILL', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (10, N'KINGSTON', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (11, N'CORSAIR', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (12, N'KINGMAX', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (13, N'WD', 1)
INSERT [dbo].[tbl_Hang] ([MaHang], [Ten], [MaTrangThaiKinhDoanh]) VALUES (14, N'SANDISK', 1)
SET IDENTITY_INSERT [dbo].[tbl_Hang] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] ON 

INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [TongTien], [NgayLap], [MaTrangThaiDonHang], [NgayNhan], [DiaChiNhan], [TrangThaiThanhToan], [NguoiNhan], [SDT]) VALUES (13, 1, NULL, 2300000, N'28/4/2021', 2, NULL, N'16161  Quận 3 Thành phố Hồ Chí Minh Việt Nam', 2, N'Le  Ngo Thien an', 908569600)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [MaKhachHang], [MaNhanVien], [TongTien], [NgayLap], [MaTrangThaiDonHang], [NgayNhan], [DiaChiNhan], [TrangThaiThanhToan], [NguoiNhan], [SDT]) VALUES (14, 1, NULL, 41370000, N'28/4/2021', 2, NULL, N'aaa  Quận 6 Thành phố Hồ Chí Minh Việt Nam', 2, N'aaa aaa aaa', 908569600)
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_KhachHang] ON 

INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [Ten], [TaiKhoan], [MatKhau], [Email]) VALUES (1, N'Ấn', N'lengothienan1', N'e9b07d1c73b283c0d584e8c3e4a72e54', N'lengothienan9a2@gmail.com')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [Ten], [TaiKhoan], [MatKhau], [Email]) VALUES (2, N'lengothienan', N'lengothienan2', N'4ca70e3604ce02ae46ccb1e617eb9a37', N'lengothienan@gmail.com')
SET IDENTITY_INSERT [dbo].[tbl_KhachHang] OFF
GO
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 1, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 2, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 3, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 4, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 5, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 6, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 7, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (1, 8, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (2, 1, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (2, 9, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (2, 10, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (2, 11, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (2, 12, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (3, 1, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (3, 10, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (3, 13, NULL)
INSERT [dbo].[tbl_LoaiHang] ([MaLoaiThietBi], [MaHang], [GhiChu]) VALUES (3, 14, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_LoaiThietBi] ON 

INSERT [dbo].[tbl_LoaiThietBi] ([MaLoaiThietBi], [TenLoaiThietBi], [MaTrangThaiKinhDoanh]) VALUES (1, N'Laptop', 1)
INSERT [dbo].[tbl_LoaiThietBi] ([MaLoaiThietBi], [TenLoaiThietBi], [MaTrangThaiKinhDoanh]) VALUES (2, N'Ram', 1)
INSERT [dbo].[tbl_LoaiThietBi] ([MaLoaiThietBi], [TenLoaiThietBi], [MaTrangThaiKinhDoanh]) VALUES (3, N'Ổ cứng', 1)
SET IDENTITY_INSERT [dbo].[tbl_LoaiThietBi] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ThietBi] ON 

INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (1, N'Ổ cứng SSD Samsung 870 EVO 250GB (MZ-77E250BW)', 3, 3, 1390000, 1, 1, N'Giúp máy tính của bạn khởi động mượt mà hơn', N'https://lh3.googleusercontent.com/1x_53PNLntJo_STSf7Q7diTSQyfRWmegzy_84y3NKf8Vq_cNtlwhtB2o9SkALiydzNVsDJoaEcV0R128y8FBnIeAPWbB14CX=w1000-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (2, N'Ổ cứng SSD Samsung 870 EVO 500GB (MZ-77E250BW)', 3, 10, 1890000, 1, 1, N'Giúp máy tính của bạn khởi động mượt mà hơn', N'https://lh3.googleusercontent.com/1x_53PNLntJo_STSf7Q7diTSQyfRWmegzy_84y3NKf8Vq_cNtlwhtB2o9SkALiydzNVsDJoaEcV0R128y8FBnIeAPWbB14CX=w1000-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (3, N'Ổ cứng SSD Samsung 870 EVO 1TB (MZ-77E250BW)', 3, 2, 3950000, 1, 1, N'Giúp máy tính của bạn khởi động mượt mà hơn', N'https://lh3.googleusercontent.com/1x_53PNLntJo_STSf7Q7diTSQyfRWmegzy_84y3NKf8Vq_cNtlwhtB2o9SkALiydzNVsDJoaEcV0R128y8FBnIeAPWbB14CX=w1000-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (4, N'Ổ cứng SSD Samsung 870 EVO 2TB (MZ-77E250BW)', 3, 1, 8550000, 1, 1, N'Giúp máy tính của bạn khởi động mượt mà hơn', N'https://lh3.googleusercontent.com/1x_53PNLntJo_STSf7Q7diTSQyfRWmegzy_84y3NKf8Vq_cNtlwhtB2o9SkALiydzNVsDJoaEcV0R128y8FBnIeAPWbB14CX=w1000-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (13, N'RAM desktop KINGSTON Fury Black (1 x 8GB) DDR4 2666MHz (HX426C16FB3/8)', 2, 2, 1150000, 12, 1, N'Ram tự động ép xung giúp nó lên tần số cao nhất khi được công bố, lên đến 2666MHz, nhằm cung cấp hiệu năng cao nhất cho các bo mạch chủ có chipset 100 Series và x99 của Intel. ', N'https://lh3.googleusercontent.com/jnrkDz0U2NXBAhSC--Ty3sN63B2YCVaxCK-WPgYUf_emw6PyeQZLRFgZ55fRSygzzSk0E6XK8DASb52ageM=w1000-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (14, N'RAM desktop KINGMAX (1x8GB) DDR4 2666MHz', 2, 3, 1250000, 12, 1, N'Ram tự động ép xung giúp nó lên tần số cao nhất khi được công bố, lên đến 2666MHz, nhằm cung cấp hiệu năng cao nhất cho các bo mạch chủ có chipset 100 Series và x99 của Intel. ', N'https://lh3.googleusercontent.com/EqbynYOBbVZkOmsaff5tdbs2A1IT2qgQ5k2dJj2rgtT4MxZ3cMopl471U3FLFL-iwC003VAqQxT0L1oZLeo=w500-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (15, N'RAM desktop KINGMAX (1x4GB) DDR3 1600MHz', 2, 7, 790000, 12, 1, N'Ram tự động ép xung giúp nó lên tần số cao nhất khi được công bố, lên đến 2666MHz, nhằm cung cấp hiệu năng cao nhất cho các bo mạch chủ có chipset 100 Series và x99 của Intel. ', N'https://lh3.googleusercontent.com/avC103tu3cWVAl5Mgv7eCoyL2TX5nUknO3y2ONgxZQDgwq-yIEebQpS0od3QkHRHpT4KkgUO19eVs0gbHUYv=w500-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (16, N'

- Dung lượng: 1 x 8GB
- Thế hệ: DDR4
- Bus: 3000MHz
- Cas: 16
RAM desktop G.SKILL Trident Z RGB F4-3000C16S-8GTZR (1x8GB) DDR4 3000MHz', 2, 5, 1790000, 9, 1, N'Ram tự động ép xung giúp nó lên tần số cao nhất khi được công bố, lên đến 2666MHz, nhằm cung cấp hiệu năng cao nhất cho các bo mạch chủ có chipset 100 Series và x99 của Intel. ', N'https://lh3.googleusercontent.com/PQfcltwE2YRE8YMzf2aOvwcUx75aTOnCx2W9-YFIDzzSg-1X5421-zwSrRCnJVZ6evzMWPnJUKhqnNZrgWc=w500-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (17, N'Laptop ACER Aspire 3 A315-56-502X (NX.HS5SV.00F)', 1, 1, 13790000, 4, 1, N'Máy tính hiện đại, vóc dáng đẹp, nhẹ, thích hợp làm việc văn phòng', N'https://lh3.googleusercontent.com/LEsLn-MN0TQRmrYGB0196nIuJO0sYtBs-A_ObO-NpItxamE91CLQ-yHa1gVlzut4_m8GQTb09TimRLAPMYoa_BAS_1X5DSTn=w500-rw')
INSERT [dbo].[tbl_ThietBi] ([MaThietBi], [TenThietBi], [MaLoaiThietBi], [SoLuong], [GiaBan], [MaHang], [MaTrangThaiKinhDoanh], [MoTa], [HinhAnh]) VALUES (18, N'Laptop HP 340s G7 (2G5C3PA)', 1, 5, 15990000, 3, 1, N'Máy tính hiện đại, vóc dáng đẹp, nhẹ, thích hợp làm việc văn phòng', N'https://lh3.googleusercontent.com/xCqBW__CkJk0JZM4NJiCSZPFbIc5v_9LGLEOyOu7PKyHvZDkqYkfsniVCmqZt2vHnNwwzWNFoDekFxfva_Jxr9uTS6MY6FA8rw=w500-rw')
SET IDENTITY_INSERT [dbo].[tbl_ThietBi] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ThongSo] ON 

INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (1, N'Ram', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (2, N'CPU', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (3, N'Chip đồ họa rời', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (5, N'Chuẩn phân giải', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (6, N'BUS', 2)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (7, N'Dung lượng Ram', 2)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (9, N'Thế hệ bộ nhớ', 2)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (10, N'Dung lượng', 3)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (11, N'Kích thước', 3)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (13, N'Kiểu ổ cứng', 3)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (14, N'Công nghệ bộ nhớ', 3)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (15, N'Siries CPU', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (16, N'Chuẩn kết nối', 3)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (17, N'Dung lượng ổ cứng', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (18, N'Thế hệ', 1)
INSERT [dbo].[tbl_ThongSo] ([MaThongSo], [Ten], [MaLoaiThietBi]) VALUES (19, N'Tối đa ram', 1)
SET IDENTITY_INSERT [dbo].[tbl_ThongSo] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TrangThaiHoaDon] ON 

INSERT [dbo].[tbl_TrangThaiHoaDon] ([MaTrangThaiHoaDon], [Ten]) VALUES (1, N'Đã nhận')
INSERT [dbo].[tbl_TrangThaiHoaDon] ([MaTrangThaiHoaDon], [Ten]) VALUES (2, N'Đã đặt')
SET IDENTITY_INSERT [dbo].[tbl_TrangThaiHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_TrangThaiKinhDoanh] ON 

INSERT [dbo].[tbl_TrangThaiKinhDoanh] ([MaTrangThaiKinhDoanh], [Ten]) VALUES (1, N'Kinh Doanh')
INSERT [dbo].[tbl_TrangThaiKinhDoanh] ([MaTrangThaiKinhDoanh], [Ten]) VALUES (2, N'Ngừng Kinh Doanh')
SET IDENTITY_INSERT [dbo].[tbl_TrangThaiKinhDoanh] OFF
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tbl_HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] CHECK CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_HoaDon]
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_ThietBi] FOREIGN KEY([MaThietBi])
REFERENCES [dbo].[tbl_ThietBi] ([MaThietBi])
GO
ALTER TABLE [dbo].[tbl_ChiTietHoaDon] CHECK CONSTRAINT [FK_tbl_ChiTietHoaDon_tbl_ThietBi]
GO
ALTER TABLE [dbo].[tbl_ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietPhieuNhap_tbl_PhieuNhap] FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[tbl_PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[tbl_ChiTietPhieuNhap] CHECK CONSTRAINT [FK_tbl_ChiTietPhieuNhap_tbl_PhieuNhap]
GO
ALTER TABLE [dbo].[tbl_ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietPhieuNhap_tbl_ThietBi] FOREIGN KEY([MaThietBi])
REFERENCES [dbo].[tbl_ThietBi] ([MaThietBi])
GO
ALTER TABLE [dbo].[tbl_ChiTietPhieuNhap] CHECK CONSTRAINT [FK_tbl_ChiTietPhieuNhap_tbl_ThietBi]
GO
ALTER TABLE [dbo].[tbl_ChiTietThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietThietBi_tbl_ChiTietThongSo] FOREIGN KEY([MaChiTietThongSo])
REFERENCES [dbo].[tbl_ChiTietThongSo] ([MaChiTietThongSo])
GO
ALTER TABLE [dbo].[tbl_ChiTietThietBi] CHECK CONSTRAINT [FK_tbl_ChiTietThietBi_tbl_ChiTietThongSo]
GO
ALTER TABLE [dbo].[tbl_ChiTietThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietThietBi_tbl_ThietBi] FOREIGN KEY([MaThietBi])
REFERENCES [dbo].[tbl_ThietBi] ([MaThietBi])
GO
ALTER TABLE [dbo].[tbl_ChiTietThietBi] CHECK CONSTRAINT [FK_tbl_ChiTietThietBi_tbl_ThietBi]
GO
ALTER TABLE [dbo].[tbl_ChiTietThongSo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChiTietThongSo_tbl_ThongSo] FOREIGN KEY([MaThongSo])
REFERENCES [dbo].[tbl_ThongSo] ([MaThongSo])
GO
ALTER TABLE [dbo].[tbl_ChiTietThongSo] CHECK CONSTRAINT [FK_tbl_ChiTietThongSo_tbl_ThongSo]
GO
ALTER TABLE [dbo].[tbl_Hang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Hang_tbl_TrangThaiKinhDoanh] FOREIGN KEY([MaTrangThaiKinhDoanh])
REFERENCES [dbo].[tbl_TrangThaiKinhDoanh] ([MaTrangThaiKinhDoanh])
GO
ALTER TABLE [dbo].[tbl_Hang] CHECK CONSTRAINT [FK_tbl_Hang_tbl_TrangThaiKinhDoanh]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tbl_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_NhanVien]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_TrangThaiHoaDon] FOREIGN KEY([MaTrangThaiDonHang])
REFERENCES [dbo].[tbl_TrangThaiHoaDon] ([MaTrangThaiHoaDon])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_TrangThaiHoaDon]
GO
ALTER TABLE [dbo].[tbl_LoaiHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_LoaiHang_tbl_Hang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[tbl_Hang] ([MaHang])
GO
ALTER TABLE [dbo].[tbl_LoaiHang] CHECK CONSTRAINT [FK_tbl_LoaiHang_tbl_Hang]
GO
ALTER TABLE [dbo].[tbl_LoaiHang]  WITH CHECK ADD  CONSTRAINT [FK_tbl_LoaiHang_tbl_LoaiThietBi] FOREIGN KEY([MaLoaiThietBi])
REFERENCES [dbo].[tbl_LoaiThietBi] ([MaLoaiThietBi])
GO
ALTER TABLE [dbo].[tbl_LoaiHang] CHECK CONSTRAINT [FK_tbl_LoaiHang_tbl_LoaiThietBi]
GO
ALTER TABLE [dbo].[tbl_LoaiThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_LoaiThietBi_tbl_TrangThaiKinhDoanh] FOREIGN KEY([MaTrangThaiKinhDoanh])
REFERENCES [dbo].[tbl_TrangThaiKinhDoanh] ([MaTrangThaiKinhDoanh])
GO
ALTER TABLE [dbo].[tbl_LoaiThietBi] CHECK CONSTRAINT [FK_tbl_LoaiThietBi_tbl_TrangThaiKinhDoanh]
GO
ALTER TABLE [dbo].[tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tbl_NhanVien_tbl_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[tbl_ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[tbl_NhanVien] CHECK CONSTRAINT [FK_tbl_NhanVien_tbl_ChucVu]
GO
ALTER TABLE [dbo].[tbl_PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PhieuNhap_tbl_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[tbl_NhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[tbl_PhieuNhap] CHECK CONSTRAINT [FK_tbl_PhieuNhap_tbl_NhaCungCap]
GO
ALTER TABLE [dbo].[tbl_PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tbl_PhieuNhap_tbl_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[tbl_NhanVien] ([MaNhanVien])
GO
ALTER TABLE [dbo].[tbl_PhieuNhap] CHECK CONSTRAINT [FK_tbl_PhieuNhap_tbl_NhanVien]
GO
ALTER TABLE [dbo].[tbl_ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ThietBi_tbl_Hang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[tbl_Hang] ([MaHang])
GO
ALTER TABLE [dbo].[tbl_ThietBi] CHECK CONSTRAINT [FK_tbl_ThietBi_tbl_Hang]
GO
ALTER TABLE [dbo].[tbl_ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ThietBi_tbl_LoaiThietBi] FOREIGN KEY([MaLoaiThietBi])
REFERENCES [dbo].[tbl_LoaiThietBi] ([MaLoaiThietBi])
GO
ALTER TABLE [dbo].[tbl_ThietBi] CHECK CONSTRAINT [FK_tbl_ThietBi_tbl_LoaiThietBi]
GO
ALTER TABLE [dbo].[tbl_ThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ThietBi_tbl_TrangThaiKinhDoanh] FOREIGN KEY([MaTrangThaiKinhDoanh])
REFERENCES [dbo].[tbl_TrangThaiKinhDoanh] ([MaTrangThaiKinhDoanh])
GO
ALTER TABLE [dbo].[tbl_ThietBi] CHECK CONSTRAINT [FK_tbl_ThietBi_tbl_TrangThaiKinhDoanh]
GO
ALTER TABLE [dbo].[tbl_ThongSo]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ThongSo_tbl_LoaiThietBi] FOREIGN KEY([MaLoaiThietBi])
REFERENCES [dbo].[tbl_LoaiThietBi] ([MaLoaiThietBi])
GO
ALTER TABLE [dbo].[tbl_ThongSo] CHECK CONSTRAINT [FK_tbl_ThongSo_tbl_LoaiThietBi]
GO
