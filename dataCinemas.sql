CREATE DATABASE [dbCinemas]
GO
USE [dbCinemas]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[IDAccount] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Avatar] [varchar](max) NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[IDGhe] [int] IDENTITY(1,1) NOT NULL,
	[TenGhe] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[IDGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ghe_Phong]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe_Phong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDPhong] [int] NOT NULL,
	[IDGhe] [int] NOT NULL,
	[TrangThaiGhe] [bit] NULL,
 CONSTRAINT [PK_Ghe_Phong] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioChieu]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioChieu](
	[IDGioChieu] [int] IDENTITY(1,1) NOT NULL,
	[GioChieu] [time](0) NOT NULL,
 CONSTRAINT [PK_GioChieu] PRIMARY KEY CLUSTERED 
(
	[IDGioChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[IDHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[IDKH] [int] NOT NULL,
	[IDLichChieu] [int] NOT NULL,
	[NgayMuaVe] [date] NOT NULL,
	[SoLuongGhe] [int] NOT NULL,
	[TenGhe] [varchar](50) NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](150) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Password] [varchar](50) NOT NULL,
	[CreateDate] [date] NULL,
	[LastLogin] [date] NULL,
	[Active] [bit] NOT NULL,
	[Salt] [varchar](300) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Avatar] [varchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieuPhim]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieuPhim](
	[IDLichChieu] [int] IDENTITY(1,1) NOT NULL,
	[NgayChieu] [datetime] NOT NULL,
	[IDPhim] [int] NOT NULL,
	[IDGioChieu] [int] NOT NULL,
	[IDPhong] [int] NOT NULL,
	[GheTrong] [int] NOT NULL,
 CONSTRAINT [PK_LichChieuPhim] PRIMARY KEY CLUSTERED 
(
	[IDLichChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[IDPhim] [int] IDENTITY(1,1) NOT NULL,
	[IDTheLoai] [int] NOT NULL,
	[IDTinhTrangPhim] [int] NOT NULL,
	[img] [varchar](max) NOT NULL,
	[TenPhim] [nvarchar](250) NOT NULL,
	[ThoiLuong] [int] NOT NULL,
	[Gia] [decimal](18, 0) NOT NULL,
	[NgayKhoiChieu] [date] NOT NULL,
	[DaoDien] [nvarchar](50) NOT NULL,
	[DienVien] [nvarchar](250) NOT NULL,
	[MoTa] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[IDPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[IDPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [varchar](10) NOT NULL,
	[SoGhe] [int] NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoaiPhim]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoaiPhim](
	[IDTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_TheLoaiPhim] PRIMARY KEY CLUSTERED 
(
	[IDTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangPhim]    Script Date: 04/12/2023 9:59:41 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangPhim](
	[IDTinhTrangPhim] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TinhTrangPhim] PRIMARY KEY CLUSTERED 
(
	[IDTinhTrangPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([IDAccount], [Username], [Password], [RoleID], [Avatar], [Active]) VALUES (1, N'admin', N'1802', 1, N'', 1)
INSERT [dbo].[Accounts] ([IDAccount], [Username], [Password], [RoleID], [Avatar], [Active]) VALUES (2, N'khachhang1', N'1802', 2, N'', 0)
INSERT [dbo].[Accounts] ([IDAccount], [Username], [Password], [RoleID], [Avatar], [Active]) VALUES (3, N'hoanghiep1802', N'11111', 2, N'', 1)
INSERT [dbo].[Accounts] ([IDAccount], [Username], [Password], [RoleID], [Avatar], [Active]) VALUES (4, N'thangchimbe', N'111', 2, N'', 1)
INSERT [dbo].[Accounts] ([IDAccount], [Username], [Password], [RoleID], [Avatar], [Active]) VALUES (5, N'thangchimbe1', N'111', 2, N'', 0)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Ghe] ON 

INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (1, N'A1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (2, N'A2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (3, N'A3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (4, N'A4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (5, N'A5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (6, N'A6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (7, N'A7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (8, N'A8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (9, N'A9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (10, N'A10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (11, N'A11')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (12, N'A12')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (13, N'A13')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (14, N'A14')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (15, N'A15')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (16, N'B1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (17, N'B2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (18, N'B3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (19, N'B4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (20, N'B5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (21, N'B6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (22, N'B7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (23, N'B8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (24, N'B9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (25, N'B10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (26, N'C1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (27, N'C2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (28, N'C3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (29, N'C4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (30, N'C5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (31, N'C6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (32, N'C7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (33, N'C8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (34, N'C9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (35, N'C10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (36, N'D1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (37, N'D2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (38, N'D3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (39, N'D4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (40, N'D5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (41, N'D6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (42, N'D7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (43, N'D8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (44, N'D9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (45, N'D10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (46, N'E1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (47, N'E2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (48, N'E3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (49, N'E4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (50, N'E5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (51, N'E6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (52, N'E7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (53, N'E8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (54, N'E9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (55, N'E10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (56, N'F1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (57, N'F2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (58, N'F3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (59, N'F4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (60, N'F5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (61, N'F6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (62, N'F7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (63, N'F8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (64, N'F9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (65, N'F10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (66, N'G1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (67, N'G2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (68, N'G3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (69, N'G4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (70, N'G5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (71, N'G6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (72, N'G7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (73, N'G8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (74, N'G9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (75, N'G10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (76, N'H1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (77, N'H2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (78, N'H3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (79, N'H4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (80, N'H5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (81, N'H6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (82, N'H7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (83, N'H8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (84, N'H9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (85, N'H10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (86, N'I1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (87, N'I2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (88, N'I3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (89, N'I4')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (90, N'I5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (91, N'I6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (92, N'I7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (93, N'I8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (94, N'I9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (95, N'I10')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (96, N'J1')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (97, N'J2')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (98, N'J3')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (99, N'J4')
GO
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (100, N'J5')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (101, N'J6')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (102, N'J7')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (103, N'J8')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (104, N'J9')
INSERT [dbo].[Ghe] ([IDGhe], [TenGhe]) VALUES (105, N'J10')
SET IDENTITY_INSERT [dbo].[Ghe] OFF
GO
SET IDENTITY_INSERT [dbo].[Ghe_Phong] ON 

INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (2, 1, 2, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (3, 1, 3, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (4, 1, 4, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (5, 1, 5, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (6, 1, 6, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (7, 1, 7, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (8, 1, 8, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (9, 1, 9, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (10, 1, 10, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (11, 1, 16, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (12, 1, 17, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (13, 1, 18, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (14, 1, 19, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (15, 1, 20, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (16, 1, 21, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (17, 1, 22, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (18, 1, 23, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (19, 1, 24, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (20, 1, 25, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (21, 1, 26, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (22, 1, 27, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (23, 1, 28, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (24, 1, 29, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (25, 1, 30, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (26, 1, 31, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (27, 1, 32, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (28, 1, 33, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (29, 1, 34, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (30, 1, 35, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (31, 1, 36, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (32, 1, 37, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (33, 1, 38, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (34, 1, 39, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (35, 1, 40, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (36, 1, 41, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (37, 1, 42, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (38, 1, 43, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (39, 1, 44, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (40, 1, 45, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (41, 1, 46, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (42, 1, 47, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (43, 1, 48, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (44, 1, 49, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (45, 1, 50, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (46, 1, 51, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (47, 1, 52, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (48, 1, 53, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (49, 1, 54, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (50, 1, 55, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (51, 1, 56, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (52, 1, 57, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (53, 1, 58, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (54, 1, 59, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (55, 1, 60, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (56, 1, 61, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (57, 1, 62, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (58, 1, 63, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (59, 1, 64, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (60, 1, 65, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (61, 1, 66, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (62, 1, 67, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (63, 1, 68, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (64, 1, 69, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (65, 1, 70, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (66, 1, 71, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (67, 1, 72, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (68, 1, 73, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (69, 1, 74, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (70, 1, 75, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (71, 1, 76, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (72, 1, 77, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (73, 1, 78, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (74, 1, 79, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (75, 1, 80, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (76, 1, 81, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (77, 1, 82, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (78, 1, 83, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (79, 1, 84, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (80, 1, 85, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (81, 1, 86, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (82, 1, 87, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (83, 1, 88, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (84, 1, 89, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (85, 1, 90, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (86, 1, 91, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (87, 1, 92, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (88, 1, 93, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (89, 1, 94, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (90, 1, 95, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (91, 1, 96, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (92, 1, 97, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (93, 1, 98, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (94, 1, 99, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (95, 1, 100, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (96, 1, 101, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (97, 1, 102, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (98, 1, 103, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (99, 1, 104, 0)
GO
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (100, 1, 105, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (101, 2, 1, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (102, 2, 2, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (103, 2, 3, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (104, 2, 4, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (105, 2, 5, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (106, 2, 6, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (107, 2, 7, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (108, 2, 8, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (109, 2, 9, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (110, 2, 10, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (111, 2, 16, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (112, 2, 17, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (113, 2, 18, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (114, 2, 19, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (115, 2, 20, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (116, 2, 21, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (117, 2, 22, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (118, 2, 23, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (119, 2, 24, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (120, 2, 25, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (121, 2, 26, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (122, 2, 27, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (123, 2, 28, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (124, 2, 29, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (125, 2, 30, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (126, 2, 31, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (127, 2, 32, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (128, 2, 33, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (129, 2, 34, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (130, 2, 35, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (131, 2, 36, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (132, 2, 37, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (133, 2, 38, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (134, 2, 39, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (135, 2, 40, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (136, 2, 41, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (137, 2, 42, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (138, 2, 43, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (139, 2, 44, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (140, 2, 45, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (141, 2, 46, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (142, 2, 47, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (143, 2, 48, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (144, 2, 49, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (145, 2, 50, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (146, 2, 51, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (147, 2, 52, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (148, 2, 53, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (149, 2, 54, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (150, 2, 55, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (151, 2, 56, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (152, 2, 57, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (153, 2, 58, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (154, 2, 59, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (155, 2, 60, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (156, 2, 61, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (157, 2, 62, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (158, 2, 63, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (159, 2, 64, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (160, 2, 65, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (161, 2, 66, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (162, 2, 67, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (163, 2, 68, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (164, 2, 69, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (165, 2, 70, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (166, 2, 71, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (167, 2, 72, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (168, 2, 73, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (169, 2, 74, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (170, 2, 75, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (171, 2, 76, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (172, 2, 77, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (173, 2, 78, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (174, 2, 79, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (175, 2, 80, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (176, 2, 81, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (177, 2, 82, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (178, 2, 83, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (179, 2, 84, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (180, 2, 85, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (181, 2, 86, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (182, 2, 87, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (183, 2, 88, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (184, 2, 89, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (185, 2, 90, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (186, 2, 91, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (187, 2, 92, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (188, 2, 93, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (189, 2, 94, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (190, 2, 95, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (191, 2, 96, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (192, 2, 97, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (193, 2, 98, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (194, 2, 99, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (195, 2, 100, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (196, 2, 101, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (197, 2, 102, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (198, 2, 103, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (199, 2, 104, 1)
GO
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (200, 2, 105, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (201, 3, 1, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (202, 3, 2, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (203, 3, 3, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (204, 3, 4, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (205, 3, 5, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (206, 3, 6, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (207, 3, 7, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (208, 3, 8, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (209, 3, 9, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (210, 3, 10, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (211, 3, 16, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (212, 3, 17, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (213, 3, 18, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (214, 3, 19, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (215, 3, 20, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (216, 3, 21, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (217, 3, 22, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (218, 3, 23, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (219, 3, 24, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (220, 3, 25, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (221, 3, 26, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (222, 3, 27, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (223, 3, 28, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (224, 3, 29, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (225, 3, 30, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (226, 3, 31, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (227, 3, 32, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (228, 3, 33, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (229, 3, 34, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (230, 3, 35, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (231, 3, 36, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (232, 3, 37, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (233, 3, 38, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (234, 3, 39, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (235, 3, 40, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (236, 3, 41, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (237, 3, 42, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (238, 3, 43, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (239, 3, 44, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (240, 3, 45, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (241, 3, 46, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (242, 3, 47, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (243, 3, 48, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (244, 3, 49, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (245, 3, 50, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (246, 3, 51, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (247, 3, 52, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (248, 3, 53, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (249, 3, 54, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (250, 3, 55, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (251, 3, 56, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (252, 3, 57, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (253, 3, 58, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (254, 3, 59, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (255, 3, 60, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (256, 3, 61, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (257, 3, 62, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (258, 3, 63, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (259, 3, 64, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (260, 3, 65, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (261, 3, 66, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (262, 3, 67, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (263, 3, 68, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (264, 3, 69, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (265, 3, 70, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (266, 3, 71, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (267, 3, 72, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (268, 3, 73, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (269, 3, 74, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (270, 3, 75, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (271, 3, 76, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (272, 3, 77, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (273, 3, 78, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (274, 3, 79, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (275, 3, 80, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (276, 3, 81, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (277, 3, 82, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (278, 3, 83, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (279, 3, 84, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (280, 3, 85, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (281, 3, 86, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (282, 3, 87, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (283, 3, 88, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (284, 3, 89, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (285, 3, 90, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (286, 3, 91, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (287, 3, 92, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (288, 3, 93, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (289, 3, 94, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (290, 3, 95, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (291, 3, 96, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (292, 3, 97, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (293, 3, 98, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (294, 3, 99, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (295, 3, 100, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (296, 3, 101, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (297, 3, 102, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (298, 3, 103, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (299, 3, 104, 1)
GO
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (300, 3, 105, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (301, 4, 1, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (302, 4, 2, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (303, 4, 3, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (304, 4, 4, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (305, 4, 5, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (306, 4, 6, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (307, 4, 7, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (308, 4, 8, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (309, 4, 9, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (310, 4, 10, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (311, 4, 16, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (312, 4, 17, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (313, 4, 18, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (314, 4, 19, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (315, 4, 20, 0)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (316, 4, 21, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (317, 4, 22, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (318, 4, 23, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (319, 4, 24, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (320, 4, 25, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (321, 4, 26, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (322, 4, 27, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (323, 4, 28, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (324, 4, 29, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (325, 4, 30, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (326, 4, 31, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (327, 4, 32, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (328, 4, 33, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (329, 4, 34, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (330, 4, 35, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (331, 4, 36, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (332, 4, 37, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (333, 4, 38, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (334, 4, 39, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (335, 4, 40, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (336, 4, 41, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (337, 4, 42, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (338, 4, 43, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (339, 4, 44, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (340, 4, 45, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (341, 4, 46, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (342, 4, 47, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (343, 4, 48, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (344, 4, 49, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (345, 4, 50, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (346, 4, 51, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (347, 4, 52, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (348, 4, 53, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (349, 4, 54, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (350, 4, 55, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (351, 4, 56, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (352, 4, 57, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (353, 4, 58, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (354, 4, 59, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (355, 4, 60, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (356, 4, 61, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (357, 4, 62, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (358, 4, 63, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (359, 4, 64, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (360, 4, 65, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (361, 4, 66, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (362, 4, 67, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (363, 4, 68, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (364, 4, 69, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (365, 4, 70, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (366, 4, 71, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (367, 4, 72, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (368, 4, 73, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (369, 4, 74, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (370, 4, 75, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (371, 4, 76, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (372, 4, 77, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (373, 4, 78, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (374, 4, 79, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (375, 4, 80, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (376, 4, 81, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (377, 4, 82, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (378, 4, 83, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (379, 4, 84, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (380, 4, 85, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (381, 4, 86, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (382, 4, 87, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (383, 4, 88, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (384, 4, 89, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (385, 4, 90, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (386, 4, 91, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (387, 4, 92, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (388, 4, 93, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (389, 4, 94, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (390, 4, 95, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (391, 4, 96, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (392, 4, 97, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (393, 4, 98, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (394, 4, 99, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (395, 4, 100, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (396, 4, 101, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (397, 4, 102, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (398, 4, 103, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (399, 4, 104, 1)
GO
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (400, 4, 105, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (401, 5, 1, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (402, 5, 2, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (403, 5, 3, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (404, 5, 4, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (405, 5, 5, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (406, 5, 6, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (407, 5, 7, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (408, 5, 8, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (409, 5, 9, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (410, 5, 10, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (411, 5, 16, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (412, 5, 17, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (413, 5, 18, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (414, 5, 19, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (415, 5, 20, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (416, 5, 21, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (417, 5, 22, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (418, 5, 23, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (419, 5, 24, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (420, 5, 25, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (421, 5, 26, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (422, 5, 27, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (423, 5, 28, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (424, 5, 29, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (425, 5, 30, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (426, 5, 31, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (427, 5, 32, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (428, 5, 33, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (429, 5, 34, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (430, 5, 35, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (431, 5, 36, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (432, 5, 37, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (433, 5, 38, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (434, 5, 39, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (435, 5, 40, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (436, 5, 41, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (437, 5, 42, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (438, 5, 43, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (439, 5, 44, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (440, 5, 45, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (441, 5, 46, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (442, 5, 47, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (443, 5, 48, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (444, 5, 49, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (445, 5, 50, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (446, 5, 51, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (447, 5, 52, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (448, 5, 53, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (449, 5, 54, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (450, 5, 55, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (451, 5, 56, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (452, 5, 57, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (453, 5, 58, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (454, 5, 59, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (455, 5, 60, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (456, 5, 61, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (457, 5, 62, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (458, 5, 63, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (459, 5, 64, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (460, 5, 65, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (461, 5, 66, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (462, 5, 67, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (463, 5, 68, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (464, 5, 69, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (465, 5, 70, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (466, 5, 71, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (467, 5, 72, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (468, 5, 73, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (469, 5, 74, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (470, 5, 75, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (471, 5, 76, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (472, 5, 77, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (473, 5, 78, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (474, 5, 79, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (475, 5, 80, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (476, 5, 81, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (477, 5, 82, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (478, 5, 83, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (479, 5, 84, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (480, 5, 85, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (481, 5, 86, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (482, 5, 87, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (483, 5, 88, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (484, 5, 89, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (485, 5, 90, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (486, 5, 91, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (487, 5, 92, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (488, 5, 93, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (489, 5, 94, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (490, 5, 95, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (491, 5, 96, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (492, 5, 97, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (493, 5, 98, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (494, 5, 99, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (495, 5, 100, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (496, 5, 101, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (497, 5, 102, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (498, 5, 103, 1)
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (499, 5, 104, 1)
GO
INSERT [dbo].[Ghe_Phong] ([ID], [IDPhong], [IDGhe], [TrangThaiGhe]) VALUES (500, 5, 105, 1)
SET IDENTITY_INSERT [dbo].[Ghe_Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[GioChieu] ON 

INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (1, CAST(N'09:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (2, CAST(N'09:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (3, CAST(N'10:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (4, CAST(N'10:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (5, CAST(N'11:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (6, CAST(N'11:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (7, CAST(N'12:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (8, CAST(N'12:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (9, CAST(N'13:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (10, CAST(N'13:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (11, CAST(N'14:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (12, CAST(N'14:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (13, CAST(N'15:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (14, CAST(N'15:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (15, CAST(N'16:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (16, CAST(N'16:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (17, CAST(N'17:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (18, CAST(N'17:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (19, CAST(N'18:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (20, CAST(N'18:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (21, CAST(N'19:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (22, CAST(N'19:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (23, CAST(N'20:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (24, CAST(N'20:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (25, CAST(N'21:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (26, CAST(N'21:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (27, CAST(N'22:00:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (28, CAST(N'22:30:00' AS Time))
INSERT [dbo].[GioChieu] ([IDGioChieu], [GioChieu]) VALUES (29, CAST(N'23:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[GioChieu] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([IDHoaDon], [IDKH], [IDLichChieu], [NgayMuaVe], [SoLuongGhe], [TenGhe], [TongTien]) VALUES (30, 9, 194, CAST(N'2023-12-04' AS Date), 6, N'G5,G6,G7,G8,G9,G10', CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDKH], [IDLichChieu], [NgayMuaVe], [SoLuongGhe], [TenGhe], [TongTien]) VALUES (31, 9, 207, CAST(N'2023-12-04' AS Date), 5, N'E8,D8,D7,D6,C6', CAST(275000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDKH], [IDLichChieu], [NgayMuaVe], [SoLuongGhe], [TenGhe], [TongTien]) VALUES (32, 9, 241, CAST(N'2023-12-04' AS Date), 7, N'J10,J6,J4,J1,J2,J3,J5', CAST(350000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDon] ([IDHoaDon], [IDKH], [IDLichChieu], [NgayMuaVe], [SoLuongGhe], [TenGhe], [TongTien]) VALUES (33, 1, 274, CAST(N'2023-12-04' AS Date), 3, N'B6,B7,B8', CAST(150000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [Email], [SDT], [NgaySinh], [GioiTinh], [DiaChi], [Password], [CreateDate], [LastLogin], [Active], [Salt], [RoleID], [Avatar]) VALUES (1, N'Nguyễn Hoàng Hiệp', N'hoanghiep2002al@gmail.com', N'0963825623', CAST(N'2002-02-18' AS Date), 1, N'Đại Mỗ, Hà Nội', N'b950744a4af9c30a7d21f9c7552d6939', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-04' AS Date), 1, N'{9j@y', 2, N'nguyen-hoang-hiep-dep-trai-vcl1.jpg')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [Email], [SDT], [NgaySinh], [GioiTinh], [DiaChi], [Password], [CreateDate], [LastLogin], [Active], [Salt], [RoleID], [Avatar]) VALUES (2, N'Hoàng Văn Khoa', N'khoa@gmail.com', N'0984773666', CAST(N'2002-05-23' AS Date), 1, N'Thanh Hóa', N'6fe4a1aee36c5e923e2c9fb431953116', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-03' AS Date), 1, N'*:d*r', 2, N'hoang-van-khoa2.jpg')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [Email], [SDT], [NgaySinh], [GioiTinh], [DiaChi], [Password], [CreateDate], [LastLogin], [Active], [Salt], [RoleID], [Avatar]) VALUES (8, N'Nguyễn Thị Thu Phương', N'phuong180211@gmail.com', N'0999999999', CAST(N'2002-11-02' AS Date), 0, N'Xã đàn, Hà Nội ', N'b7d865ad5a16dd935706404b95549228', CAST(N'2023-12-02' AS Date), CAST(N'2023-12-02' AS Date), 1, N'o(lqz', 2, N'nguyen-thi-thu-phuong8.jpg')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [Email], [SDT], [NgaySinh], [GioiTinh], [DiaChi], [Password], [CreateDate], [LastLogin], [Active], [Salt], [RoleID], [Avatar]) VALUES (9, N'Admin', N'admin@panda.cinemas', N'0888888888', CAST(N'2002-02-18' AS Date), 1, N'Sao Hỏa', N'd3cef06bd428fc02eb40e5b3098592b6', CAST(N'2023-12-03' AS Date), CAST(N'2023-12-04' AS Date), 1, N'u$d5m', 1, N'admin9.jpg')
INSERT [dbo].[KhachHang] ([IDKH], [TenKH], [Email], [SDT], [NgaySinh], [GioiTinh], [DiaChi], [Password], [CreateDate], [LastLogin], [Active], [Salt], [RoleID], [Avatar]) VALUES (10, N'Nguyễn Việt Thắng', N'hoanghiep2002@gmail.com', N'0963825621', NULL, 0, NULL, N'2fd0435666e54e8cd9189e6b3b252194', CAST(N'2023-12-04' AS Date), CAST(N'2023-12-04' AS Date), 1, N'40ux!', 2, N'default.jpg')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LichChieuPhim] ON 

INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (186, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 1, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (188, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 11, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (189, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1015, 2, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (190, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1015, 6, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (191, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 2, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (192, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 6, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (193, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 11, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (194, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 24, 1, 94)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (195, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 3, 1, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (196, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1007, 25, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (197, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1026, 1, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (198, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1031, 1, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (199, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1026, 7, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (200, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1026, 11, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (201, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1031, 13, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (202, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1027, 13, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (203, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1029, 9, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (204, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 14, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (205, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1015, 16, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (206, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1032, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (207, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1032, 6, 1, 95)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (208, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1032, 12, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (209, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1029, 16, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (210, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1029, 23, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (211, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1007, 4, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (212, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1007, 14, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (213, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 3, 6, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (214, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 3, 12, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (215, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 2, 18, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (216, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1026, 16, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (217, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1031, 1, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (218, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1031, 10, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (219, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1031, 16, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (220, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1027, 1, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (221, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1027, 10, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (222, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1027, 20, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (223, CAST(N'2023-12-04T00:00:00.000' AS DateTime), 1031, 24, 5, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (224, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1033, 2, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (225, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1033, 12, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (226, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1033, 18, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (227, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 2, 10, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (228, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 2, 18, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (229, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 3, 3, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (230, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1026, 1, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (231, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1026, 12, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (232, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1026, 17, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (233, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 3, 11, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (234, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 3, 17, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (235, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1033, 2, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (236, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1033, 8, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (237, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1033, 15, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (238, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1015, 16, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (239, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1031, 3, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (240, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1031, 12, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (241, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 1031, 22, 4, 93)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (242, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 2, 1, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (243, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 2, 14, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (244, CAST(N'2023-12-05T00:00:00.000' AS DateTime), 2, 19, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (245, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1032, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (246, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1007, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (247, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1032, 12, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (248, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1007, 9, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (249, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1031, 1, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (250, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1029, 1, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (251, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1029, 11, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (252, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1031, 16, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (253, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1015, 6, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (254, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1029, 1, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (255, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1029, 15, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (256, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1029, 24, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (257, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1015, 21, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (258, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1015, 26, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (259, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (260, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 2, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (261, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 3, 5, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (262, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 2, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (263, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 7, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (264, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1007, 1, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (265, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 2, 18, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (266, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 9, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (267, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 18, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (268, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 12, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (269, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 26, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (270, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1031, 17, 2, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (271, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1029, 1, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (272, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 1, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (273, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 6, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (274, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 14, 3, 97)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (275, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1029, 18, 3, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (276, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1007, 8, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (277, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1007, 15, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (278, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 14, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (279, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 20, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (280, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1033, 24, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (281, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1027, 1, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (282, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1027, 10, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (283, CAST(N'2023-12-07T00:00:00.000' AS DateTime), 1027, 18, 4, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (284, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1027, 1, 1, 100)
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (285, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1027, 20, 1, 100)
GO
INSERT [dbo].[LichChieuPhim] ([IDLichChieu], [NgayChieu], [IDPhim], [IDGioChieu], [IDPhong], [GheTrong]) VALUES (286, CAST(N'2023-12-06T00:00:00.000' AS DateTime), 1027, 12, 1, 100)
SET IDENTITY_INSERT [dbo].[LichChieuPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phim] ON 

INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (2, 15, 2, N'dat-rung-phuong-nam.jpg', N'Đất Rừng Phương Nam', 110, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-10-18' AS Date), N'Nguyễn Quang Dũng', N'Hồng Ánh, Huỳnh Hạo Khang, Mai Tài Phến, Công Ninh, Hứa Vĩ Văn, Tuyền Mập, Tuấn Trần', N'Đất Rừng Phương Nam phiên bản điện ảnh được kế thừa và phát triển từ tiểu thuyết cùng tên của nhà văn Đoàn Giỏi và tác phẩm truyền hình nổi tiếng “Đất Phương Nam” của đạo diễn Nguyễn Vinh Sơn. Bộ phim kể về hành trình phiêu lưu của An - một cậu bé chẳng may mất mẹ trên đường đi tìm cha. Cùng với An, khán giả sẽ trải nghiệm sự trù phú của thiên nhiên và nét đẹp văn hóa đặc sắc của vùng đất Nam Kì Lục Tỉnh, sự hào hiệp của những người nông dân bám đất bám rừng và tinh thần yêu nước kháng Pháp đầu thế kỉ 20. Bên cạnh đó, tình cảm gia đình, tình bạn, tình người, tình thầy trò, tình yêu nước là những cung bậc cảm xúc sâu sắc sẽ đọng lại qua mỗi bước chân của An và đồng bạn.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (3, 1, 2, N'qu-am-tin-do.png', N'Quỷ Ám: Tín Đồ', 111, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-10-16' AS Date), N'David Gordon Green', N'Jennifer Nettles, Ellen Burstyn, Leslie Odom Jr.', N'Phần tiếp theo của bộ phim năm 1973 kể về một cô bé 12 tuổi bị một thực thể ma quỷ bí ẩn chiếm hữu, buộc mẹ cô phải tìm đến sự giúp đỡ của hai linh mục để cứu cô.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (4, 1, 1, N'kumanthong-qu-linh-nhi.png', N'Kumanthong: Quỷ Linh Nhi', 110, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-11-06' AS Date), N'Thitipan Raksasat', N'Thanachat Tullayachat, Savika Chaiyadej, Denkhun Ngamnet, Panisara Rikulsurakan', N'Ging đưa con trai đi nghỉ mát ở căn nhà gỗ nằm giữa rừng cây. Tuy nhiên, cậu bé đã bị bắt cóc vào lúc nửa đêm. Sau bao nỗ lực tìm kiếm, manh mối duy nhất của vụ án đều hướng về người đàn ông tên In, làm nghề mai táng ở đền thờ. Quá tuyệt vọng, Ging đành nhờ cậy thầy đồng địa phương thực hiện nghi lễ hiến tế giữa rừng để tìm tung tích con trai. Những bí ẩn trong ngôi nhà ven rừng dần lộ ra, những cơn ác mộng máu me và hàng loạt cái chết đột ngột ập tới, liệu Ging có đang vướng vào một âm mưu tà ám. Và rằng con trai cô có thật sự đang mất tích?')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (6, 12, 1, N'thanh-pho-ngu-gat.png', N'Thành Phố Ngủ Gật', 73, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-10-25' AS Date), N'Lương Đình Dũng', N'Quốc Toàn, Minh Hiền, Đức Trí, Tạ Xuân Tuế, Ba Trường''', N'Nhân vật chính là một chàng thanh niên 26 tuổi, sống đơn độc giữa trung tâm thành phố nhộn nhịp, mưu sinh bằng nghề mổ gà. Một ngày, sự xuất hiện của nhóm giang hồ và một cô gái điếm đã tác động đến cuộc sống của anh. Điều đó đã làm cho bản năng hoang dã của chàng thanh niên trỗi dậy không kiểm soát.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1007, 2, 2, N'cu-may-an-tien.jpg', N'Cú Máy Ăn Tiền', 132, CAST(55000 AS Decimal(18, 0)), CAST(N'2023-11-08' AS Date), N'Kim Jee-Woon', N'Um Tae-goo, Yeom Hye-ran, Jung Woo-Sung, Jung Mi-hyeong, Jung Kyung-ho', N'Cú Máy Ăn Tiền lấy bối cảnh thực tế và câu chuyện làm phim những năm 1970 ở Hàn Quốc. Kim Yeol (Song Kang Ho thủ vai) - một đạo diễn điện ảnh có bộ phim đầu tay được giới phê bình khen ngợi, nhưng sự nghiệp của ông tuột dốc không phanh khi liên tiếp ra đời những tác phẩm bị coi là “phim rác”. Sau khi hoàn thành xong bộ phim mới nhất là Cobweb, đạo diễn Kim cảm thấy cần quay lại cái kết để có thể tạo ra một kiệt tác. Tuy nhiên, kịch bản mới không vượt qua được khâu kiểm duyệt và các diễn viên cũng không thể hiểu được cái kết mới của ông. Giữa lịch trình rối rắm, sự phản đối từ nhà sản xuất, sự can thiệp của cơ quan kiểm duyệt và những mâu thuẫn đang xung đột trước mắt khiến đạo diễn Kim như muốn phát điên, nhưng ông vẫn tiếp tục một cách bất chấp: “Nếu tôi có thể thay đổi cái kết, một kiệt tác sẽ xuất hiện. Tất cả những gì tôi cần là 2 ngày”')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1015, 1, 2, N'mong-du.png', N'Mộng Du', 10, CAST(55000 AS Decimal(18, 0)), CAST(N'2023-11-10' AS Date), N'Hoàng Hiệp', N'Hoàng Hiệp', N'Cú Máy Ăn Tiền lấy bối cảnh thực tế và câu chuyện làm phim những năm 1970 ở Hàn Quốc. Kim Yeol (Song Kang Ho thủ vai) - một đạo diễn điện ảnh có bộ phim đầu tay được giới phê bình khen ngợi, nhưng sự nghiệp của ông tuột dốc không phanh khi liên tiếp ra đời những tác phẩm bị coi là “phim rác”. Sau khi hoàn thành xong bộ phim mới nhất là Cobweb, đạo diễn Kim cảm thấy cần quay lại cái kết để có thể tạo ra một kiệt tác. Tuy nhiên, kịch bản mới không vượt qua được khâu kiểm duyệt và các diễn viên cũng không thể hiểu được cái kết mới của ông. Giữa lịch trình rối rắm, sự phản đối từ nhà sản xuất, sự can thiệp của cơ quan kiểm duyệt và những mâu thuẫn đang xung đột trước mắt khiến đạo diễn Kim như muốn phát điên, nhưng ông vẫn tiếp tục một cách bất chấp: “Nếu tôi có thể thay đổi cái kết, một kiệt tác sẽ xuất hiện. Tất cả những gì tôi cần là 2 ngày”')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1026, 4, 2, N'nguoi-mat-troi.jpg', N'Người Mặt Trời', 115, CAST(55000 AS Decimal(18, 0)), CAST(N'2023-12-04' AS Date), N'Timothy Linh Bùi', N'Chi Pu, Thuận Nguyễn, Trần Ngọc Vàng, Trịnh Thảo,...', N'400 năm qua, loài Ma Cà Rồng đã bí mật sống giữa loài người trong hòa bình, nhưng hiểm họa bỗng ập đến khi một cô gái loài người phát hiện được thân phận của hai anh em Ma Cà Rồng. Người anh khát máu quyết săn lùng cô để bảo vệ bí mật giống loài, trong khi người còn lại chạy đua với thời gian để bảo vệ cô bằng mọi giá.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1027, 4, 2, N'bong-dung-trung-manh.jpg', N'Bỗng Dưng Trúng Mánh', 95, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-12-03' AS Date), N'Hwang Dong-seok', N'Yoo Seon-ho, Kang Mi-na, Yoo In-soo, Shin Soo-hyun,...', N'Bỗng Dưng Trúng Mánh là câu chuyện từ cá biệt toàn trường hoá tài phiệt học đường của Lee Kang-jin - một học sinh vốn thường xuyên bị bắt nạt. Tình cờ nhặt được chiếc phong bì chứa đầy tiền mặt của ông trùm cho vay nặng lãi Rang, cuộc đời Kang-jin đã hoàn toàn thay đổi. Rang dạy Kang-jin những bài học đầu tiên về nghề cho vay siêu lợi nhuận, từ đó biến cậu học trò lầm lì trở thành chiến thần tài chính, đại gia mới nổi, ông hoàng cho vay nặng lãi của trường trung học Geumhwa.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1028, 1, 1, N'ban-khong-than.jpg', N'Bạn Không Thân', 128, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-12-03' AS Date), N'Atta Hemwadee', N'Anthony Buisseret, Pisitpol Ekaphongpisit, Thitiya Jirapornsilp,...', N'Bắt đầu với niềm đam mê làm phim bất diệt cùng những ý tưởng lớn, nhóm học sinh trung học của “Bạn Không Thân” chính là hội bạn trong “hoạn nạn” lại cần tới nhau tại một cuộc thi làm phim ngắn dựa trên câu chuyện về cuộc đời của người bạn cùng lớp mà họ yêu quý. Bằng vốn hiểu biết có giới hạn về người bạn quá cố, cả nhóm với sự nỗ lực 200% đã dần khám phá ra những bí mật ẩn giấu gây bất ngờ tới mức có thể thay đổi quan điểm về niềm đam mê của hội thanh thiếu niên này mãi mãi.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1029, 1, 2, N'vong-am.png', N'Vong Ám', 111, CAST(55000 AS Decimal(18, 0)), CAST(N'2023-12-05' AS Date), N'John McPhail', N'Justin Long, Andrea Bang, Augustus Prew,...', N'Ngay sau khi hoạ sĩ truyện tranh Adam (Augustus Prew) đáp trả những lời bắt nạt trên Internet, anh bắt đầu bị bóng đè khi ngủ - trong lúc đó một chiếc ghế bập bênh trống rỗng di chuyển trong góc căn hộ của anh ấy. Khi ghi lại những sự đáng sợ này trong một loạt dòng tweet, Adam bắt đầu tin rằng mình đang bị ám ảnh bởi hồn ma của một đứa trẻ đã chết tên là David. Được ông chủ BuzzFeed khuyến khích đào sâu chủ đề "Dear David", Adam bắt đầu mất nhận thức, không biết ranh giới giữa thực và ảo. Phim dựa trên chủ đề lan truyền trên Twitter của hoạ sĩ truyện tranh BuzzFeed Adma Ellis năm 2017.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1030, 1, 1, N'cau-hon.jpg', N' Cầu Hồn', 115, CAST(50000 AS Decimal(18, 0)), CAST(N'0001-01-01' AS Date), N'Lester Hsi', N'Lâm Triết Hi, Thi Bá Vũ, Vương Ngọc Văn,...', N'Cầu Hồn bắt đầu trong bối cảnh kỳ lạ của những câu chuyện siêu nhiên được lưu hành trong trường. Các địa điểm chính của trường bao gồm thư viện, phòng tập nhảy và thang máy đều toát lên sự kinh dị về những điềm báo đen tối sẽ diễn ra.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1031, 15, 2, N'chiem-doat.jpg', N'Chiếm Đoạt', 113, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-12-01' AS Date), N'Thắng Vũ', N'Miu Lê, Lãnh Thanh, Karik, Phương Anh Đào,...', N'Kể về người vợ của một gia đình thượng lưu thuê cô bảo mẫu “trong mơ” để chăm sóc con trai mình. Nhưng cô không ngờ rằng, phía sau sự trong sáng, tinh khiết kia, cô bảo mẫu luôn che giấu âm mưu nhằm phá hoại hạnh phúc gia đình và khiến cuộc sống của cô thay đổi mãi mãi.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1032, 2, 2, N'co-giao-em-la-so-1.jpg', N'Cô Giáo Em Là Số 1', 112, CAST(55000 AS Decimal(18, 0)), CAST(N'2023-12-08' AS Date), N'Park Jin - pyo', N'Shin Hae-sun, Lee Jun-young, Cha Chung-hwa,...', N'Si-min là một võ sĩ quyền anh đầy triển vọng nhưng đã từ bỏ quyền thi đấu tại kỳ Thế vận hội Olympic để lấy tiền trả nợ cho cha. Cô trở thành giáo viên hợp đồng của một trường trung học có tiếng cùng mục tiêu trở thành giáo viên chính thức ở đây. Tuy nhiên, Han Soo-Gang - kẻ cầm đầu của một băng đảng quậy phá, chuyên đi bắt nạt và hành hạ người yếu thế đã phá vỡ quy tắc của Si-min. Không thể chịu đựng được những hành vi bạo lực học đường của Soo-Gang, Si-min đeo lên một chiếc mặt nạ mèo và dạy cho tên côn đồ một bài học đáng nhớ.')
INSERT [dbo].[Phim] ([IDPhim], [IDTheLoai], [IDTinhTrangPhim], [img], [TenPhim], [ThoiLuong], [Gia], [NgayKhoiChieu], [DaoDien], [DienVien], [MoTa]) VALUES (1033, 7, 2, N'dieu-uoc.png', N'Điều Ước', 110, CAST(50000 AS Decimal(18, 0)), CAST(N'2023-11-27' AS Date), N'Chris Buck, Fawn Veerasunthorn', N'Ariana DeBose, Chris Pine, Alan Tudyk,...', N'“Wish”- Điều Ước là bộ phim hoạt hình kỷ niệm 100 năm thành lập của Walt Disney Studios (sự kiện toàn cầu D100). Lấy bối cảnh tại một vương quốc diệu kỳ tên Rosas. Ở đây, Asha - một cô gái thông minh và mơ mộng đã ước một điều ước quá sức mạnh mẽ, đến nỗi một thế lực ngoài vũ trụ với sức mạnh vô hạn tên Star đã đáp lại cô. Asha và Star cùng nhau đối mặt với người cầm quyền của Rosas - quốc vương Magnifico, để cứu lấy mọi người và chứng minh rằng ý chí gan dạ của con người kết hợp với phép màu của những vì sao sẽ giúp những điều kỳ diệu xảy ra.')
SET IDENTITY_INSERT [dbo].[Phim] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [SoGhe]) VALUES (1, N'P1', 100)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [SoGhe]) VALUES (2, N'P2', 100)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [SoGhe]) VALUES (3, N'P3', 100)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [SoGhe]) VALUES (4, N'P4', 100)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [SoGhe]) VALUES (5, N'P5', 100)
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'User')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (11, N'Nhân viên')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (17, N'qưe222')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[TheLoaiPhim] ON 

INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (1, N'Kinh dị')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (2, N'Hài hước')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (3, N'Khoa học viễn tưởng')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (4, N'Hành động')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (5, N'Hoạt hình 2D')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (6, N'Chiến tranh')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (7, N'Hoạt hình 3D')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (8, N'Ca nhạc')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (9, N'Kiếm hiệp')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (10, N'Cổ trang')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (11, N'Lịch sử')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (12, N'Tâm lý tội phạm')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (13, N'Phiêu lưu')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (14, N'Chính kịch')
INSERT [dbo].[TheLoaiPhim] ([IDTheLoai], [TenTheLoai]) VALUES (15, N'Tâm lý')
SET IDENTITY_INSERT [dbo].[TheLoaiPhim] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhTrangPhim] ON 

INSERT [dbo].[TinhTrangPhim] ([IDTinhTrangPhim], [TenTinhTrang]) VALUES (1, N'Sắp chiếu')
INSERT [dbo].[TinhTrangPhim] ([IDTinhTrangPhim], [TenTinhTrang]) VALUES (2, N'Đang chiếu')
INSERT [dbo].[TinhTrangPhim] ([IDTinhTrangPhim], [TenTinhTrang]) VALUES (3, N'Ngừng chiếu')
SET IDENTITY_INSERT [dbo].[TinhTrangPhim] OFF
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Accounts_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Accounts_Roles]
GO
ALTER TABLE [dbo].[Ghe_Phong]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong_Ghe] FOREIGN KEY([IDGhe])
REFERENCES [dbo].[Ghe] ([IDGhe])
GO
ALTER TABLE [dbo].[Ghe_Phong] CHECK CONSTRAINT [FK_Ghe_Phong_Ghe]
GO
ALTER TABLE [dbo].[Ghe_Phong]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Phong_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[Ghe_Phong] CHECK CONSTRAINT [FK_Ghe_Phong_Phong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang1] FOREIGN KEY([IDKH])
REFERENCES [dbo].[KhachHang] ([IDKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang1]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_LichChieuPhim] FOREIGN KEY([IDLichChieu])
REFERENCES [dbo].[LichChieuPhim] ([IDLichChieu])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_LichChieuPhim]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_Roles]
GO
ALTER TABLE [dbo].[LichChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_LichChieuPhim_GioChieu] FOREIGN KEY([IDGioChieu])
REFERENCES [dbo].[GioChieu] ([IDGioChieu])
GO
ALTER TABLE [dbo].[LichChieuPhim] CHECK CONSTRAINT [FK_LichChieuPhim_GioChieu]
GO
ALTER TABLE [dbo].[LichChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_LichChieuPhim_Phim] FOREIGN KEY([IDPhim])
REFERENCES [dbo].[Phim] ([IDPhim])
GO
ALTER TABLE [dbo].[LichChieuPhim] CHECK CONSTRAINT [FK_LichChieuPhim_Phim]
GO
ALTER TABLE [dbo].[LichChieuPhim]  WITH CHECK ADD  CONSTRAINT [FK_LichChieuPhim_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[LichChieuPhim] CHECK CONSTRAINT [FK_LichChieuPhim_Phong]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_TheLoaiPhim] FOREIGN KEY([IDTheLoai])
REFERENCES [dbo].[TheLoaiPhim] ([IDTheLoai])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_TheLoaiPhim]
GO
ALTER TABLE [dbo].[Phim]  WITH CHECK ADD  CONSTRAINT [FK_Phim_TinhTrangPhim] FOREIGN KEY([IDTinhTrangPhim])
REFERENCES [dbo].[TinhTrangPhim] ([IDTinhTrangPhim])
GO
ALTER TABLE [dbo].[Phim] CHECK CONSTRAINT [FK_Phim_TinhTrangPhim]
GO

select*from HoaDon
update HoaDon set NgayMuaVe = '2023-10-15' where IDHoaDon = 35