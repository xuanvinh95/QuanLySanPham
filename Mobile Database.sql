USE [master]
GO
/****** Object:  Database [MobileDb]    Script Date: 08/21/2016 15:43:49 ******/
CREATE DATABASE [MobileDb] ON  PRIMARY 
( NAME = N'MobileDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MobileDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MobileDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\MobileDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MobileDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileDb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MobileDb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MobileDb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MobileDb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MobileDb] SET ARITHABORT OFF
GO
ALTER DATABASE [MobileDb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MobileDb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MobileDb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MobileDb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MobileDb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MobileDb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MobileDb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MobileDb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MobileDb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MobileDb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MobileDb] SET  DISABLE_BROKER
GO
ALTER DATABASE [MobileDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MobileDb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MobileDb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MobileDb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MobileDb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MobileDb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MobileDb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MobileDb] SET  READ_WRITE
GO
ALTER DATABASE [MobileDb] SET RECOVERY FULL
GO
ALTER DATABASE [MobileDb] SET  MULTI_USER
GO
ALTER DATABASE [MobileDb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MobileDb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'MobileDb', N'ON'
GO
USE [MobileDb]
GO
/****** Object:  Table [dbo].[tbluser]    Script Date: 08/21/2016 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluser](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[passwd] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[phone] [int] NULL,
	[address] [nvarchar](200) NULL,
	[lv] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbluser] ON
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (1, N'top1phim@gmail.com', N'75435879', N'Anh Tài', 974095295, N'nhà', 1)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (2, N'tambo@gmail.com', N'123', N'Tâm Bô', 123, N'123', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (4, N'vu@gmail.com', N'123123', N'Vũ', 123456789, N'gần nhà tâm bô', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (5, N'tam@gmail.com', N'123123', N'Tâm Ngọn', 123456, N'khác tâm bô', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (6, N'congtam@gmail.com', N'123123', N'công tâm', 123123, N'123', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (7, N'nguyenvu@gmail.com', N'123', N'nguyễn vũ', 123, N'123', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (8, N'ca@gmail.com', N'123456', N'anh tài', 1212345488, N'a203', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (9, N'abc@gmail.com', N'123456', N'tesst', 123456, N'bienhoa', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (10, N'abc@gmail.com', N'123456', N'tesst', 123456, N'bienhoa', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (11, N'tranquangtri95@gmail.com', N'123456', N'Trần Quang Trí', 908295362, N'123111111111', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (14, N'xuanvinh295@gmail.com', N'123456', N'Trần Xuân Vinh', 1234567890, N'123 Xô Viết Nghệ Tĩnh', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (17, N'bcd@gmail.com', N'123', N'abc', 12913381, N'123', 0)
SET IDENTITY_INSERT [dbo].[tbluser] OFF
/****** Object:  Table [dbo].[orders]    Script Date: 08/21/2016 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[recipient_name] [nvarchar](100) NULL,
	[recipient_phone] [int] NULL,
	[recipient_add] [nvarchar](200) NULL,
	[sender_name] [nvarchar](100) NULL,
	[bank] [nvarchar](20) NULL,
	[pay_num] [nvarchar](20) NULL,
	[status] [int] NULL,
	[order_price] [int] NULL,
	[notes] [nvarchar](500) NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[orders] ON
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (54, 0, N'Tâm Bô', 974095295, N'gần nhà vũ', N'tâm bô', N'Vietcombank', N'123456', 1, 52000000, N'xuống dồng
test nãy giờ ko
được')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (55, 0, N'Trương Công Tâm', 0, N'CNTT K37 ĐH ĐỒNG NAI', N'Công tâm', N'', N'', 1, 52000000, N'thanh toán tại quầy')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (56, 0, N'Nguyễn Văn Ca', 956465, N'ktx', N'Nguyễn văn ca', N'132123', N'123132', 1, 12000000, N'ca mua iphone 6')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (57, 1, N'Tâm Bô', 974095295, N'gần nhà vũ', N'tâm bô', N'Vietcombank', N'123456', 1, 12000001, N'11111111111')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (58, 1, N'Tâm bô', 123456789, N'bô tâm', N'tâm bô', N'bô tâm', N'123456', 1, 12000000, N'nokia')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (59, 1, N'Công Tâm', 123456789, N'nhà', N'Đức Tâm', N'Vietcombank', N'123456789', 1, 104000000, N'tặng sinh nhật')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (60, 10, N'123', 132, N'123', N'123', N'132', N'123', 1, 72000000, N'132')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (61, 0, N'', 0, N'', N'', N'', N'', 1, 22000000, N'')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (62, 11, N'trí', 908295326, N'123', N'', N'', N'', 1, 12000000, N'')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (63, 0, N'', 0, N'', N'', N'', N'', 1, 2100000, N'')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (64, 0, N'A', 111, N'B', N'C', N'D', N'12311', 1, 18390000, N'SDAFAFFAASA')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (65, 0, N'a', 333, N's', N'g', N'rr', N'45', 1, 9990000, N'')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (66, 0, N'q', 2323, N'eew', N'rer', N'assdsad', N'1133', 1, 4219000, N'efsdfsdfsdfsdfsdfs')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (67, 0, N'wewrer', 543535, N'rerewre', N't4t45', N'54545hdgfg', N'45524', 1, 3990000, N'rrtff')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (68, 0, N'qqwq', 123435464, N'rerewr', N'gdfd', N'rfgdbdf', N'456787', 1, 2100000, N'fsdgdfjkkkjhgfghgjkhgfds')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (70, 0, N'dfdsfsd', 12121212, N'dsfsf', N'', N'', N'', 1, 199000, N'twtrtr')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (71, 0, N'eee', 22222, N'eeeee', N'', N'', N'', 1, 3990000, N'èee2e22')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (72, 0, N'eee', 12345, N'qwqwq', N'5ffdff', N'dffd', N'24534', 1, 3990000, N'fddg')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (73, 0, N'345432', 3453244, N'2332', N'434245', N'44534234354', N'354344', 1, 229000, N'23344')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (74, 0, N'12212', 23323323, N'32323', N'334343', N'43434', N'343434', 1, 199000, N'5454')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (75, 0, N'1232', 232, N'32', N'323', N'323', N'232323', 1, 199000, N'32323')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (76, 0, N'12', 121, N'121', N'212', N'2121', N'1212', 1, 900000, N'121212')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (77, 0, N'111', 1111, N'1111', N'111111', N'1111111', N'11111111', 1, 199000, N'11111111111')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (79, 0, N'1111111111', 2222, N'1111111111111111111111', N'22', N'22', N'2', 1, 17490000, N'111111111111111111111111111')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (80, 0, N'345', 545, N'454', N'34534', N'43545', N'45345', 1, 2100000, N'5435345')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (81, 0, N'33', 34343, N'333', N'43', N'4334', N'433443', 1, 3990000, N'434343')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (82, 0, N'112', 212221, N'2121', N'21212', N'12121', N'21212', 1, 29980000, N'121212121')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (83, 0, N'', 0, N'', N'', N'', N'', 1, 18910000, N'')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (84, 0, N'1243', 4345434, N'2344334', N'4345434', N'344343', N'4343', 1, 4500000, N'4434343')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (85, 11, N'q323', 234, N'1234', N'234', N'1234', N'2345', 1, 18000000, N'2345')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (86, 11, N'', 0, N'', N'', N'', N'', 1, 4500000, N'')
INSERT [dbo].[orders] ([order_id], [user_id], [recipient_name], [recipient_phone], [recipient_add], [sender_name], [bank], [pay_num], [status], [order_price], [notes]) VALUES (87, 0, N'111', 111, N'111', N'111', N'11', N'111', 1, 15219000, N'11111')
SET IDENTITY_INSERT [dbo].[orders] OFF
/****** Object:  Table [dbo].[news]    Script Date: 08/21/2016 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NULL,
	[images] [nvarchar](100) NULL,
	[content] [nvarchar](4000) NULL,
	[posting_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[news] ON
INSERT [dbo].[news] ([id], [title], [images], [content], [posting_datetime]) VALUES (1, N'Khuyến mãi tháng 6', N'upload/Chrysanthemum.jpg', N'Nạp tài khoản cho điện thoại của mình vào ngày 29/4/2016 bằng hình thức nạp trực tuyến các thuê bao trả trước sẽ nhận được ưu đãi hấp dẫn sau: Tặng ngay 50% mệnh giá nạp vào tài khoản khuyến mãi: 25% vào KM2, 25% vào KM3, tiền khuyến mãi dùng để liên lạc nội mạng và liên mạng; Tặng 100% ngày sử dụng cho thuê bao MobiCard nếu giao dịch nạp tiền trực tuyến làm cho tài khoản chính của thuê bao > 0đ; Tất cả số lần nạp tiền và mệnh giá tiền bằng hình thức trực tuyến theo đúng yêu cầu của nhà mạng thực hiện trong ngày 29/04 đều được hưởng ưu đãi 50%.', CAST(0x0000A50700A4CB80 AS DateTime))
INSERT [dbo].[news] ([id], [title], [images], [content], [posting_datetime]) VALUES (2, N'Xuất hiện giá bán chính thức tốt hơn dự kiến của bộ ba Sony Xperia X', N'upload/Koala.jpg', N'Hiện tại thì Sony đã cho phép đặt trước X Performance tại Châu Âu, cụ thể ở Pháp và Hà Lan là 700 EUR (khoảng 17.8 triệu đồng), 729 EUR (khoảng 18.6 triệu đồng) là số tiền mà khách hàng tại Ý và Tây Ban Nha phải bỏ ra.', CAST(0x0000A52400000000 AS DateTime))
INSERT [dbo].[news] ([id], [title], [images], [content], [posting_datetime]) VALUES (4, N'Chơi game ngay trên màn hình khóa iPhone khá thú vị', N'upload/Tulips.jpg', N'Chơi game trong màn hình chính quá là bình thường nhưng chơi trên màn hình khóa thì rất thú vị và mức độ giải trí cũng cao hơn. Hãy thử ngay trên chiếc iPhone của bạn nhé!', CAST(0x0000A43C0126A15E AS DateTime))
SET IDENTITY_INSERT [dbo].[news] OFF
/****** Object:  Table [dbo].[category]    Script Date: 08/21/2016 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (1, N'Điện thoại', 0)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (2, N'Laptop', 0)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (3, N'Nokia', 1)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (4, N'SamSung', 1)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (5, N'iPhone (Apple)', 1)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (9, N'SmartWatch', 0)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (10, N'Phụ kiện', 0)
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[product_bills]    Script Date: 08/21/2016 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_bills](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[product_num] [int] NULL,
 CONSTRAINT [PK_product_bills] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product_bills] ON
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (13, 54, 4, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (14, 54, 7, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (15, 54, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (16, 55, 4, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (17, 55, 7, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (18, 55, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (19, 56, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (20, 57, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (21, 57, 22, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (22, 58, 4, 4)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (23, 59, 7, 5)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (24, 59, 5, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (25, 60, 7, 6)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (26, 61, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (27, 62, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (28, 63, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (29, 64, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (30, 64, 4, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (31, 65, 61, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (32, 66, 2, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (33, 66, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (34, 67, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (35, 68, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (36, 70, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (37, 71, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (38, 72, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (39, 73, 2, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (40, 74, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (41, 75, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (42, 76, 4, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (43, 77, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (44, 79, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (45, 80, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (46, 81, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (47, 82, 1, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (48, 83, 68, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (49, 83, 64, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (50, 84, 70, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (51, 85, 70, 4)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (52, 86, 70, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (53, 87, 1, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (54, 87, 2, 1)
SET IDENTITY_INSERT [dbo].[product_bills] OFF
/****** Object:  Table [dbo].[product]    Script Date: 08/21/2016 15:43:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](100) NULL,
	[category_id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[price] [int] NULL,
	[product_img] [nvarchar](100) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (1, N'iPhone 7 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 18990000, N'upload/iphone6plus.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (2, N'Nokia 1202', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: Màn hình đơn sắc - Kích thước màn hình: 1.3 inch - Sổ địa chỉ: 200địa chỉ - Số sim : 1 Sim -  Camera: Không có - Thời gian đàm thoại: 8 giờ.', 229000, N'upload/no1202.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (3, N'Nokia 1280', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: Màn hình đơn sắc - Kích thước màn hình: 1.36 inch - Sổ địa chỉ: 500địa chỉ - Số sim : 1 Sim - Camera: Không có - Thời gian đàm thoại: 8.5 giờ.', 199000, N'upload/no1080.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (4, N'Microsoft Lumia 530', 3, N'Hệ điều hành: Windows Phone 8.1 - Camera sau: 5 MP - Camera trước: Không - CPU: Qualcomm Snapdragon 200 4 nhân 32-bit, 1.2 GHz - Bộ nhớ trong: 4 GB - Hỗ trợ thẻ nhớ: MicroSD, 128 GB - Thẻ SIM: 2 SIM 2 sóng, Micro SIM - Dung lượng pin: 1430 mAh - Thiết kế: Pin rời', 900000, N'upload/lu530.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (5, N'iPhone 6 Plus 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 5.5", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 2915 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 17490000, N'upload/iphone6plus.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (6, N'Samsung Galaxy Note 3', 4, N'Màn hình: TFT, 4", FWVGA - Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.7inch - RAM: 3GB - Hệ điều hành: Android OS, v4.3 (Jelly Bean) - Bộ vi xử lý : ARM Cortex A15 (1.9 GHz Quad-core) & Cortex A7 (1.3 GHz Quad-core) - Số sim : 1 Sim - Số lượng Cores: Quad Core (4 nhân) - Camera: 13 Megapixel.', 3990000, N'upload/galaxynote3.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (7, N'Samsung Galaxy S3', 4, N'Màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Kích thước màn hình: 4.8inch - RAM: 1GB - Hệ điều hành: Android OS, v4.0 (Ice Cream Sandwich) - Bộ vi xử lý : ARM Cortex A9 (1.4 GHz Quad-core) - Số sim : 1 Sim - Số lượng Cores: Quad Core (4 nhân) - Camera: 8 Megapixel.', 2100000, N'upload/galaxys3.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (60, N'Samsung Galaxy S7 Edge', 4, N'Hãng sản xuất: Samsung - Camera trước: 5Megapixel - Kiểu màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.5inch - RAM: 4GB - Hệ điều hành: Android OS, v6.0 (Marshmallow) - Chipset: Qualcomm MSM8996 Snapdragon 820 - Số sim : 1 Sim - Số core: Kryo (2.15 GHz Dual-core) & Kryo (1.6 GHz Dual-core) - Camera sau: 12Megapixel.', 18990000, N'upload/samsung-galaxy-s7-edge-1-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (61, N'Microsoft Lumia 950', 1, N'Hãng sản xuất: Microsoft - Kiểu màn hình: 16M màu-AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.7inch - RAM: 3GB - Hệ điều hành: Microsoft Windows Phone 10 - Chipset: ARM Cortex-A53 (1.5 GHz Quad-core) & ARM Cortex-A57 (2.0 GHz Quad-core) - Số sim : 1 Sim - Số core: Octa Core (8 nhân) - Camera sau: 20Megapixel.', 9990000, N'upload/microsoft-lumia-950-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (62, N'iPhone SE 16GB', 5, N'Hãng sản xuất: Apple - Camera trước: 1.2Megapixel - Kiểu màn hình: 16M màu LED-backlit IPS LCD Touchscreen (Cảm ứng) - Kích thước màn hình: 4inch - RAM: 2GB - Hệ điều hành: iOS 9.3 - Chipset: Apple A9 - Số sim : 1 Sim - Số core: 1.84 GHz Dual-core - Camera sau: 12Megapixel.', 10499000, N'upload/apple-iphone-se-16gb-gold-ban-quoc-te.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (63, N'iPhone 5S 16GB', 5, N'Hãng sản xuất: Apple - Kiểu màn hình: 16M màu-TFT LED-backlit IPS Touchscreen (Cảm ứng) - Kích thước màn hình: 4inch - RAM: 1GB - Hệ điều hành: iOS 7 - Chipset: 1.3 GHz Dual-Core - Số sim : 1 Sim - Số core: Dual Core (2 nhân) - Camera sau: 8Megapixel.', 7990000, N'upload/apple-iphone-5s-16gb-gold-ban-quoc-te-anh-2.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (64, N'iPhone 6s 16GB', 5, N'Hãng sản xuất: Apple - Kiểu màn hình: 16M màu LED-backlit IPS LCD Touchscreen (Cảm ứng) - Kích thước màn hình: 4.7inch - RAM: 2GB - Hệ điều hành: iOS 9 - Chipset: Apple A9 (1.84 GHz Dual-core) - Số sim : 1 Sim - Số core: Dual Core (2 nhân) - Camera sau: 12Megapixel.', 18490000, N'upload/apple-iphone-6s-16gb-gold-ban-quoc-te-anh-2.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (65, N'Samsung Galaxy J7', 4, N'Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-TFT Touchscreen (Cảm ứng) - Kích thước màn hình: 5.5inch - RAM: 1.5GB - Hệ điều hành: Android OS, v5.1 (Lollipop) - Bộ vi xử lý : 1.2 GHz Octa-core - Số sim : 2 Sim - 2 Sóng - Số lượng Cores: Octa Core (8 nhân) - Camera: 13Megapixel.', 4990000, N'upload/samsung-galaxy-j7-sm-j700f-16gb-gold.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (66, N'Samsung Galaxy A8', 4, N'Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.7inch - RAM: 2GB - Hệ điều hành: Android OS, v5.1 (Lollipop) - Bộ vi xử lý : ARM Cortex-A53 (1.5 GHz Quad-core) & ARM Cortex-A53 (1.0 GHz quad-core) - Số sim : 2 Sim - 2 Sóng - Số lượng Cores: Octa Core (8 nhân) - Camera: 16Megapixel.', 8990000, N'upload/samsung-galaxy-a8-1-400x533.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (67, N'Galaxy Grand Prime G531', 4, N'Hãng sản xuất: Samsung Galaxy - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-TFT Touchscreen (Cảm ứng) - Kích thước màn hình: 5inch - RAM: 1GB - Hệ điều hành: Android OS, v4.4.2 (KitKat) - Bộ vi xử lý : ARM Cortex-A53 (1.2 GHz Quad-Core) - Số sim : 2 Sim - 2 Sóng - Số lượng Cores: Quad Core (4 nhân) - Camera: 8Megapixel.', 3290000, N'upload/samsung-galaxy-grand-prime-g531-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (68, N'Nokia 105', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: 65K màu-TFT - Kích thước màn hình: 1.45inch - Số sim : 1 Sim - Camera: Không có - Thời gian đàm thoại: 12.5giờ.', 420000, N'upload/nokia-105-png.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (69, N'Nokia 6300', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-TFT - Kích thước màn hình: 2inch - Số sim : 1 Sim - Camera: 2Megapixel - Thời gian đàm thoại: 3.5giờ.', 550000, N'upload/nokia-6300-silver.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (70, N'Samsung Galaxy S5', 4, N'Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.1inch - RAM: 2GB - Hệ điều hành: Android OS, v4.4 (KitKat) - Bộ vi xử lý : Krait 400 (2.5GHz Quad-core) - Số sim : 1 Sim - Số lượng Cores: Quad Core (4 nhân) - Camera: 16Megapixel.', 4500000, N'upload/samsung-galaxy-s5-galaxy-s-v-sm-g900f-32gb-white-anh-3.jpg', 1)
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  StoredProcedure [dbo].[use_XoaDT]    Script Date: 08/21/2016 15:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_XoaDT]
	@product_id int
AS
BEGIN
		IF(NOT EXISTS(SELECT * FROM product WHERE product_id = @product_id))
		RETURN 0 -- Chưa tồn tại
		ELSE 
			BEGIN
					DELETE product WHERE product_id = @product_id
					RETURN 1 -- Sửa thành công
			END
		RETURN -1 -- Sửa không thành công
END
GO
/****** Object:  StoredProcedure [dbo].[use_ThemDT]    Script Date: 08/21/2016 15:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_ThemDT]
	@product_name nvarchar(100)
,	@category_id int
,	@description nvarchar(500)
,	@price int
,	@product_img nvarchar(100)
,	@user_id int
AS
BEGIN
		INSERT INTO product(product_name, category_id, description, product_img, user_id) 
		VALUES (@product_name, @category_id, @description, @product_img, @user_id)
		RETURN 1 -- Thêm thành công
		RETURN -1 -- Thêm không thành công
END
GO
/****** Object:  StoredProcedure [dbo].[use_SuaTTDT]    Script Date: 08/21/2016 15:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_SuaTTDT]
	@product_id int
,	@product_name nvarchar(100)
,	@category_id int
,	@description nvarchar(500)
,	@price int
,	@product_img nvarchar(100)
,	@user_id int
AS
BEGIN
		IF(EXISTS(SELECT * FROM product WHERE product_id = @product_id))
		BEGIN
				UPDATE product SET product_name = @product_name
										,category_id = @category_id
										,description = @description
										,price = @price
										,product_img = @product_img
										,user_id = @user_id
					WHERE product_id = @product_id
					RETURN 1 -- Sửa thành công
		END
		ELSE 
			BEGIN
				RETURN 0 -- Chưa tồn tại
			END
		RETURN -1 --LOI HE THONG
END
GO
/****** Object:  Table [dbo].[product_img]    Script Date: 08/21/2016 15:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_img](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[product_img] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_product_img] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product_img] ON
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (1, 1, N'/upload/iphone1.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (2, 1, N'/upload/iphone2.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (3, 1, N'/upload/iphone3.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (4, 1, N'/upload/iphone4.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (5, 1, N'/upload/iphone5.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (6, 2, N'')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (7, 2, N'/upload/iphone1.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (8, 2, N'/upload/iphone1.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (9, 2, N'/upload/iphone1.jpg')
SET IDENTITY_INSERT [dbo].[product_img] OFF
/****** Object:  ForeignKey [FK_product_category]    Script Date: 08/21/2016 15:43:51 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
/****** Object:  ForeignKey [FK_product_img_product]    Script Date: 08/21/2016 15:45:02 ******/
ALTER TABLE [dbo].[product_img]  WITH CHECK ADD  CONSTRAINT [FK_product_img_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_img] CHECK CONSTRAINT [FK_product_img_product]
GO
