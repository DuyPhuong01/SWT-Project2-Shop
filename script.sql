USE [ProjectPRJ]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[UserID] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Phone] [varchar](24) NULL,
	[Email] [varchar](255) NULL,
	[Picture] [nvarchar](255) NULL,
	[role] [int] NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	[Picture] [nvarchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Content] [ntext] NOT NULL,
	[UserID] [varchar](20) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order Details]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [smallint] NOT NULL,
	[Discount] [real] NOT NULL,
 CONSTRAINT [PK_Order_Details] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](20) NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[Phone] [varchar](24) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Data] [nvarchar](100) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](200) NULL,
	[UserID] [varchar](20) NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](20) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[UnitsOnOrder] [smallint] NULL,
	[image] [nvarchar](100) NULL,
	[Brand] [nvarchar](30) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[Phone] [nvarchar](24) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shops]    Script Date: 3/24/2022 10:03:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shops](
	[UserID] [varchar](20) NOT NULL,
	[ShopName] [nvarchar](100) NOT NULL,
	[Describe] [ntext] NULL,
 CONSTRAINT [PK_Shops] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'admin', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'doraemon123', N'56879', N'Trần Văn Quang', N'Bá hiến, bình xuyên', N'vĩnh phúc', N'19856471', N'doraemon123@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'eren', N'123', N'Trần Văn Quang', N'hà nội', N'hà nội', N'123456987', N'eren@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'Linh', N'123', N'Linh Bùi', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0123456789', N'linh@email.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'malphite', N'malphite', N'Đá Cao nguyên', N'Việt Nam', N'Việt Nam', N'789', N'malphite@gmail.com', NULL, NULL)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'mra', N'mra', N'Mra', N'Hà Nội', N'hà nội', N'19856471', N'mra@gmail.com', NULL, NULL)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'mrb', N'mrb', NULL, NULL, NULL, NULL, N'mrb@gmaill.com', NULL, NULL)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'mrc', N'mrc', NULL, NULL, NULL, NULL, N'mrc@gmail.com', NULL, NULL)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'putin', N'asdas', NULL, NULL, NULL, NULL, N'putin@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'qtran9587', N'aaa', NULL, NULL, NULL, NULL, N'quangtran07102001@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'QUANG', N'123', N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662', N'qtran9587@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'quangtvhe153307', N'123', NULL, NULL, NULL, NULL, N'quangtvhe153307@fpt.edu.vn', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'quangvjppr0', N'111111', NULL, NULL, NULL, NULL, N'quangvjppr0@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'saitama1', N'111111', NULL, NULL, NULL, NULL, N'saitama@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'takemikazuchi', N'111111', NULL, NULL, NULL, NULL, N'takemikazuchi@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'tokudashigeo', N'123456', NULL, NULL, NULL, NULL, N'tokudashigeo@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'tuannguyen12', N'dsgdsh', NULL, NULL, NULL, NULL, N'tuannguyen12@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'trump', N'sdfsdf', NULL, NULL, NULL, NULL, N'trump@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'user1', N'111111', N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662', N'user1@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'user123', N'123456', NULL, NULL, NULL, NULL, N'user123@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'user345', N'111111', NULL, NULL, NULL, NULL, N'user345@gmail.com', NULL, 2)
INSERT [dbo].[Accounts] ([UserID], [Password], [ContactName], [Address], [City], [Phone], [Email], [Picture], [role]) VALUES (N'yasuo', N'yasuo', NULL, NULL, NULL, NULL, N'yasuo@gmail.com', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (1, N'Máy tính', N'Máy tính hay máy điện toán là một máy có thể được hướng dẫn để thực hiện các các chuỗi các phép toán số học hoặc logic một cách tự động thông qua lập trình máy tính.', N'image/c3f3edfaa9f6dafc4825b77d8449999d_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (2, N'Điện thoại', N'Thiết bị di động dùng để liên lạc', N'image/31234a27876fb89cd522d7e3db1ba5ca_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (3, N'Tai nghe', N'Thiết bị âm thanh', N'image/tainghe.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (4, N'Quần áo', N'vật dụng thiết yếu của con người, thông qua quần áo sẽ đem lại nét đẹp thẩm mỹ bên ngoài', N'image/687f3967b7c2fe6a134a2c11894eea4b_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (5, N'Giày dép', N'Giày dép là vật dụng quan trọng hàng ngày mỗi người đều phải sử dụng đến. Một bộ trang phục đẹp chắc chắn không thể thiếu một đôi giày hay một đôi dép phù hợp', N'image/74ca517e1fa74dc4d974e5d03c3139de_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (6, N'Thực phẩm', N'Thực phẩm, cũng gọi là thức ăn là bất kỳ vật phẩm nào, bao gồm chủ yếu các chất: chất bột (cacbohydrat), chất béo (lipid), chất đạm (protein), khoáng chất, hoặc nước', N'image/c432168ee788f903f1ea024487f2c889_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (7, N'Đồng hồ', N'Cố máy được chế tạo thứ viên đá thời gian, mang sức mạnh kiểm soát thời gian', N'image/86c294aae72ca1db5f541790f7796260_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (8, N'Trang sức', N'Đồ dùng trang trí cá nhân', N'image/8e71245b9659ea72c1b4e737be5cf42e_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (9, N'Sách', N'Sách là một loạt các tờ giấy có chữ hoặc hình ảnh được viết tay hoặc in ấn, được buộc hoặc dán với nhau về một phía', N'image/36013311815c55d303b0e6c62d6a8139_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (10, N'Thú cưng', N'Đồ dùng thú cưng', N'image/cdf21b1bf4bfff257efe29054ecea1ec_tn.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (11, N'Nước hoa', N'dầu thơm là hỗn hợp của tinh dầu thơm hoặc các hợp chất tạo mùi thơm, chất hãm hương và dung môi, thường ở dạng lỏng', N'image/champs-n5-perfume-1000x1000.png')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description], [Picture]) VALUES (12, N'Đồ chơi', N'Đồ chơi', N'image/ce8f8abc726cafff671d0e5311caa684_tn.png')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (15, 3, N'Sản phẩm tuyệt vời 4', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (16, 5, N'Sản phẩm tuyệt vời 6', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (17, 6, N'Sản phẩm tuyệt vời 7', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (18, 7, N'Sản phẩm tuyệt vời 8', N'Linh', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (19, 8, N'Sản phẩm tuyệt vời 9', N'QUANG', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (20, 9, N'Sản phẩm tuyệt vời 10', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (21, 10, N'Sản phẩm tuyệt vời 11', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (22, 22, N'Sản phẩm tuyệt vời 1', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (23, 22, N'Sản phẩm tuyệt vời 2', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (24, 22, N'Sản phẩm tuyệt vời 3', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (25, 22, N'Sản phẩm tuyệt vời 4', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (26, 22, N'Sản phẩm tuyệt vời 6', N'user123', CAST(N'2022-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (27, 22, N'Sản phẩm tuyệt vời 7', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (28, 22, N'Sản phẩm tuyệt vời 8', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (29, 22, N'Sản phẩm tuyệt vời 9', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (30, 22, N'Sản phẩm tuyệt vời 10', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (31, 22, N'Sản phẩm tuyệt vời 11', N'user123', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (32, 22, N'Uy tín', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (33, 22, N'Uy tín', N'user345', CAST(N'2022-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (34, 22, N'Uy tín', N'user345', CAST(N'2022-03-06T04:45:47.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (35, 22, N'Cáº£m Æ¡n em ÄÃ£ rá»i xa anh', N'admin', CAST(N'2022-03-06T16:49:50.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (36, 22, N'để anh biết không gì là mãi mãi', N'admin', CAST(N'2022-03-06T16:50:54.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (37, 22, N'he', N'admin', CAST(N'2022-03-06T16:51:02.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (38, 22, N'sản phẩm thật là tuyệt vời', N'admin', CAST(N'2022-03-06T16:51:18.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (39, 21, N'abcdefg', N'admin', CAST(N'2022-03-06T16:54:43.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (40, 26, N'abcdefg', N'admin', CAST(N'2022-03-06T16:57:59.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (41, 26, N'he', N'admin', CAST(N'2022-03-06T16:58:03.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (42, 42, N'Linh Bui', N'user1', CAST(N'2022-03-06T21:02:46.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (43, 42, N'asda', N'user1', CAST(N'2022-03-06T21:04:19.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (44, 17, N'abcdefg', N'user1', CAST(N'2022-03-06T21:09:45.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (45, 17, N'asdasdasd', N'user1', CAST(N'2022-03-06T21:09:49.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (46, 17, N'sản phẩm thật là tuyệt vời', N'user1', CAST(N'2022-03-06T21:09:55.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (47, 17, N'a', N'user1', CAST(N'2022-03-06T21:10:00.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (48, 17, N'b', N'user1', CAST(N'2022-03-06T21:10:01.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (49, 17, N'c', N'user1', CAST(N'2022-03-06T21:10:05.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (50, 17, N'chê', N'user1', CAST(N'2022-03-06T21:13:51.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (51, 18, N'để anh biết không gì là mãi mãi', N'user1', CAST(N'2022-03-06T21:15:57.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (52, 22, N'sadsadsad', N'user123', CAST(N'2022-03-07T11:04:07.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (53, 24, N'điện thoại đẹp', N'Linh', CAST(N'2022-03-09T22:05:18.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (54, 22, N'sadsadsad', N'eren', CAST(N'2022-03-14T20:05:56.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (55, 22, N'dasdas', N'eren', CAST(N'2022-03-14T20:06:12.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (56, 22, N'sadsadsad', N'eren', CAST(N'2022-03-14T20:06:17.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (57, 22, N'asdasd', N'eren', CAST(N'2022-03-14T20:06:27.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (58, 129, N'sadsadsad', N'QUANG', CAST(N'2022-03-15T09:11:29.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (59, 18, N'để anh biết không gì là mãi mãi', N'admin', CAST(N'2022-03-15T11:23:36.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (60, 8, N'3', N'admin', CAST(N'2022-03-17T10:26:57.000' AS DateTime))
INSERT [dbo].[Feedbacks] ([FeedbackID], [ProductID], [Content], [UserID], [date]) VALUES (61, 8, N'sadsadsad', N'admin', CAST(N'2022-03-17T10:27:02.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
GO
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 5, 23999000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 6, 26499000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 7, 28920000.0000, 3, 0.1)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 8, 20999000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (2, 30, 850000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (2, 31, 1600000.0000, 3, 0.1)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (2, 32, 950000.0000, 2, 0.3)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (3, 39, 5000000.0000, 1, 0.1)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (3, 40, 3500000.0000, 1, 0.1)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (3, 41, 3500000.0000, 10, 0.1)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (3, 42, 4109000.0000, 23, 0.1)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1003, 12, 92990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1008, 12, 92990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1009, 22, 33990000.0000, 6, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1010, 10, 29999000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1010, 20, 10990000.0000, 5, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1010, 21, 8490000.0000, 4, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1010, 22, 33990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1010, 27, 6790000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1011, 22, 33990000.0000, 5, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1012, 12, 92990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1012, 18, 10990000.0000, 3, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1013, 8, 20999000.0000, 3, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1013, 33, 1300000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1014, 5, 23999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1014, 10, 29999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1016, 5, 23999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1016, 10, 29999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1017, 29, 1990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1018, 8, 20999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1018, 11, 16999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1019, 7, 28920000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1019, 10, 29999000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1020, 18, 10990000.0000, 101, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1020, 52, 39150.0000, 5, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1021, 8, 20999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1021, 10, 29999000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1022, 8, 20999000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1023, 29, 1990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1024, 12, 92990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1024, 75, 1272000.0000, 3, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1025, 8, 20999000.0000, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1025, 43, 800000.0000, 25, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1026, 44, 950000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1026, 76, 632000.0000, 65, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1027, 143, 4918000.0000, 50, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1028, 30, 850000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1028, 75, 1272000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1028, 76, 632000.0000, 3, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1029, 18, 10990000.0000, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1030, 44, 950000.0000, 10, 0)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1, N'QUANG', CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL, NULL, NULL, 53998000.0000, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (2, N'Linh', CAST(N'2021-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, 166900000.0000, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (3, N'takemikazuchi', CAST(N'2021-03-08T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1002, N'Linh', CAST(N'2022-03-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 166900000.0000, N'Linh Bùi', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0123456789')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1003, N'Linh', CAST(N'2022-02-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 92990000.0000, N'Linh Bùi', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0123456789')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1004, N'Linh', CAST(N'2022-03-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 92990000.0000, N'Linh Bùi', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0123456789')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1007, N'user1', CAST(N'2022-03-10T00:00:00.000' AS DateTime), NULL, NULL, 4, 167158000.0000, N'User1', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1008, N'user1', CAST(N'2022-03-09T00:00:00.000' AS DateTime), NULL, NULL, 1, 92990000.0000, N'Quang Trần', N'Bình Xuyên, Vĩnh Phúc', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1009, N'user1', CAST(N'2022-03-08T00:00:00.000' AS DateTime), NULL, NULL, 1, 203940000.0000, N'Trần Văn Quang', N'Bình Xuyên, Vĩnh Phúc', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1010, N'yasuo', CAST(N'2022-03-07T00:00:00.000' AS DateTime), NULL, NULL, 5, 189688000.0000, N'Yasuo', N'Thạch Thất', N'Hà Nội', N'0265349875')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1011, N'quangtvhe153307', CAST(N'2022-03-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 169950000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1012, N'quangtvhe153307', CAST(N'2022-03-11T00:00:00.000' AS DateTime), NULL, NULL, 6, 125960000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1013, N'quangtvhe153307', CAST(N'2022-06-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 64297000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1014, N'quangtvhe153307', CAST(N'2022-03-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 53998000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1015, N'quangtvhe153307', CAST(N'2022-10-11T00:00:00.000' AS DateTime), NULL, NULL, 1, 999999999.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1016, N'qtran9587', CAST(N'2022-03-11T00:00:00.000' AS DateTime), NULL, NULL, 3, 53998000.0000, N'Trần Văn Quang', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1017, N'qtran9587', CAST(N'2022-08-11T00:00:00.000' AS DateTime), NULL, NULL, 2, 199000000.0000, N'Trần Văn Quang', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1018, N'QUANG', CAST(N'2022-11-12T00:00:00.000' AS DateTime), NULL, NULL, 1, 37998000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1019, N'Linh', CAST(N'2022-03-12T00:00:00.000' AS DateTime), NULL, NULL, 1, 88918000.0000, N'Linh Bùi', N'Vĩnh Phúc', N'Vĩnh Phúc', N'0123456789')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1020, N'QUANG', CAST(N'2022-09-13T00:00:00.000' AS DateTime), NULL, NULL, 1, 1110185750.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1021, N'QUANG', CAST(N'2022-03-13T00:00:00.000' AS DateTime), NULL, NULL, 1, 50998000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1022, N'QUANG', CAST(N'2022-07-14T00:00:00.000' AS DateTime), NULL, NULL, 1, 41998000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1023, N'QUANG', CAST(N'2022-06-14T00:00:00.000' AS DateTime), NULL, NULL, 1, 1990000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1024, N'QUANG', CAST(N'2022-05-14T00:00:00.000' AS DateTime), NULL, NULL, 1, 96806000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1025, N'QUANG', CAST(N'2022-04-14T00:00:00.000' AS DateTime), NULL, NULL, 1, 61998000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1026, N'QUANG', CAST(N'2022-03-15T00:00:00.000' AS DateTime), NULL, NULL, 1, 42030000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1027, N'QUANG', CAST(N'2022-03-15T00:00:00.000' AS DateTime), NULL, NULL, 1, 245900000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1028, N'user1', CAST(N'2022-03-15T00:00:00.000' AS DateTime), NULL, NULL, 2, 4018000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1029, N'QUANG', CAST(N'2022-03-15T00:00:00.000' AS DateTime), NULL, NULL, 1, 10990000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
INSERT [dbo].[Orders] ([OrderID], [UserID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [Phone]) VALUES (1030, N'QUANG', CAST(N'2022-03-15T00:00:00.000' AS DateTime), NULL, NULL, 1, 9500000.0000, N'Trần Văn Quang', N'Bá Hiến, Bình Xuyên', N'Vĩnh Phúc', N'0395073662')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (1, 22, N'image/iphone-13-pro-max-1-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (2, 22, N'image/iphone-13-pro-max-2-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (3, 22, N'image/iphone-13-pro-max-3-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (4, 22, N'image/iphone-13-pro-max-4-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (5, 22, N'image/iphone-13-pro-max-5-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (6, 22, N'image/iphone-13-pro-max-6-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (7, 22, N'image/iphone-13-pro-max-7-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (8, 22, N'image/iphone-13-pro-max-8-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (9, 22, N'image/iphone-13-pro-max-9-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (10, 22, N'image/iphone-13-pro-max-10-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (11, 22, N'image/iphone-13-pro-max-11-2.jpg')
INSERT [dbo].[ProductImages] ([ImageID], [ProductID], [Data]) VALUES (12, 22, N'image/iphone-13-pro-max-12-2.jpg')
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (3, N'Máy tính nguyên tử', N'QUANG', 1, N'1 product per box', 565656.0000, 1234, 0, N'img/product03.png', N'Không Thương Hiệu')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (5, N'Laptop Acer Nitro Gaming AN515-45-R6EV R5 5600H/8GB/512GB SSD/GTX1650 4GB/Win11', N'user1', 1, N'1 product per box', 23999000.0000, 1111, 0, N'image/eRiLUVH1gCwpARnSq4ZR.jpg', N'Acer')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (6, N'Laptop Acer Nitro Gaming AN515-57-54MV i5 11400H/8GB/512GB SSD/RTX 3050 4GB/Win11', N'user1', 1, N'1 product per box', 26499000.0000, 10, 0, N'image/Acer-Nitro-Gaming-AN515-57-54MV.png', N'Không thương hiệu')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (7, N'Laptop Lenovo Gaming Legion 5 15ACH6 R7 5800H/8GB/512GB/15.6?FHD/RTX 3050Ti/Win 11', N'user1', 1, N'1 product per box', 28920000.0000, 103, 0, N'image/lenovo-legion-5-15ach6-5800h-didongviet.jpg', N'Lenovo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (8, N'Laptop MSI Gaming GF63 10SC 804VN i5 10500H/8GB/512GB/15.6', N'user1', 1, N'1 product per box', 20999000.0000, 850, 0, N'image/45970_gaming_gf63_thin_10_ha5.jpg', N'MSI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (9, N'Laptop MSI Gaming GF65 10UE 286VN i5 10500H/16GB/512GB/15.6FHD/RTX 3060 Max-Q 6Gb/Win 10', N'user1', 1, N'1 product per box', 29699000.0000, 20, 0, N'image/37674_37071_36995_product_160706843846580395eca0c3c5b3130d67bd2baf3f.png', N'MSI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (10, N'Laptop MSI Gaming Katana GF66 11UC 641VN i7 11800H/8GB/512GB/RTX 3050 4GB/Win 10', N'user1', 1, N'1 product per box', 29999000.0000, 13, 0, N'image/44262_katana_gf66_ha1.jpg', N'MSI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (11, N'Laptop MSI Modern 14 B5M R5 5500U/8GB/512GB/AMD Radeon Graphics/14"FHD/Win 10', N'user1', 1, N'1 product per box', 16999000.0000, 19, 0, N'image/39939_39123_msi_modern_14_b5m_064vn_r5_5500u_2_5b90f29a7aa5498f8ffd1044a83ac6ab_master.png', N'MSI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (12, N'MacBook Pro 16', N'user1', 1, N'1 product per box', 92990000.0000, 99, 0, N'image/637702682507677814_macbook-pro-16-2021-xam-2.jpg', N'MacBook')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (13, N'MacBook Pro 14" 2021 M1 Pro Ram 32GB', N'user1', 1, N'1 product per box', 63990000.0000, 20, 0, N'image/637702664476604311_macbook-pro-14-2021-xam-2.jpg', N'MacBook')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (14, N'MacBook Pro 13" 2020 Touch Bar M1 16GB/512GB', N'user1', 1, N'1 product per box', 44999000.0000, 20, 0, N'image/macbook-pro-13-fpt-1.jpg', N'MacBook')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (15, N'Laptop Dell Inspiron N3501 i3 1115G4/4GB/256GB/15.6', N'user1', 1, N'1 product per box', 14199000.0000, 201, 0, N'image/41373_inspiron_3501_black_ha4.jpg', N'Dell')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (16, N'Laptop Dell Gaming G7 15 7500 i7 10750H/8GB/512GB/15.6', N'user1', 1, N'1 product per box', 38999000.0000, 202, 0, N'image/637606707028358029_dell-gaming-g7-15-den-3.jpg', N'Dell')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (17, N'Điện thoại Samsung Galaxy Z Fold3 5G 256GB', N'user123', 2, N'1 product per box', 41990000.0000, 9, 0, N'image/samsung-galaxy-z-fold-3-silver-1-600x600.jpg', N'Samsung')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (18, N'Điện thoại iPhone 11 64GB ', N'user123', 2, N'1 product per box', 10990000.0000, 455, 21, N'image/iphone-xi-do-600x600.jpg', N'Iphone')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (19, N'Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)', N'user123', 2, N'1 product per box', 15990000.0000, 64, 455, N'image/Samsung-Galaxy-S21-FE-tim-600x600.jpg', N'Samsung')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (20, N'Điện thoại Xiaomi 11T 5G 128GB', N'user123', 2, N'1 product per box', 10990000.0000, 451, 456, N'image/Xiaomi-11T-White-1-2-3-600x600.jpg', N'Xiaomi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (21, N'Điện thoại Vivo V23e', N'user123', 2, N'1 product per box', 8490000.0000, 452, 456, N'image/Vivo-V23e-1-2-600x600.jpg', N'Vivo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (22, N'Điện thoại iPhone 13 Pro Max 128GB ', N'user123', 2, N'1 product per box', 33990000.0000, 444, 123, N'image/iphone-13-pro-max-gold-1-600x600.jpg', N'Iphone')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (23, N'Điện thoại iPhone 12 Pro Max 128GB', N'user123', 2, N'1 product per box', 32990000.0000, 124, 22, N'image/iphone-12-pro-max-xam-new-600x600-600x600.jpg', N'Iphone')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (24, N'Điện thoại Samsum Galary S21 Ultra', N'user123', 2, N'1 product per box', 30990000.0000, 45, 456, N'image/Galaxy-S22-Ultra-Burgundy-600x600.jpg', N'Samsung')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (25, N'Điện thoại iPhone 13 Pro 128GB', N'user123', 2, N'1 product per box', 30990000.0000, 15, 56, N'image/iphone-13-pro-sierra-blue-600x600.jpg', N'Iphone')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (26, N'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB', N'user123', 2, N'1 product per box', 30990000.0000, 12, 13, N'image/samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', N'Samsung')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (27, N'Tai nghe Bluetooth AirPods Pro MagSafe Charge Apple MLWK3 Trắng', N'user345', 3, N'1 product per box', 6790000.0000, 1, 3, N'image/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-thumb-600x600.jpg', N'Apple')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (28, N'Tai nghe chụp tai Bluetooth Sony WH-XB910N Đen', N'user345', 3, N'1 product per box', 4090000.0000, 2, 3, N'image/chup-tai-bluetooth-sony-wh-xb910n-den-thumb-1-600x600.jpg', N'Sony')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (29, N'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds Live R180 Gold', N'user345', 3, N'1 product per box', 1990000.0000, 0, 3, N'image/ai-nghe-bluetooth-true-wireless-samsung-galaxy-buds-live-r180-gold-thumb-600x600.jpeg', N'Samsung')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (30, N'ÁO THUN DESIGNED 4 RUNNING', N'qtran9587', 4, N'1 product per box', 850000.0000, 1, 3, N'image/áo-thun-designed-4-running.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (31, N'ÁO GIÓ PHẢN QUANG RUN FAST', N'qtran9587', 4, N'1 product per box', 1600000.0000, 2, 3, N'image/áo-gió-phản-quang-run-fast.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (32, N'ÁO THUN DÀI TAY 3 SỌC PHẢN QUANG RUN ICON', N'qtran9587', 4, N'1 product per box', 950000.0000, 2, 3, N'image/áo-thun-dài-tay-3-sọc-phản-quang-run-icon.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (33, N'QUẦN RUN ICON', N'qtran9587', 4, N'1 product per box', 1300000.0000, 1, 3, N'image/quần-run-icon.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (34, N'QUẦN LEGGING CHẠY BỘ 7/8 OWN THE RUN', N'qtran9587', 4, N'1 product per box', 1250000.0000, 2, 3, N'image/quần-legging-chạy-bộ-7-8-own-the-run.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (35, N'ULTRABOOST 22', N'tuannguyen12', 5, N'1 shoes per box', 5200000.0000, 2, 3, N'image/ultraboost-22.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (36, N'GIÀY ADIDAS 4DFWD PULSE', N'tuannguyen12', 5, N'1 shoes per box', 4500000.0000, 2, 3, N'image/giày-adidas-4dfwd-pulse.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (37, N'GIÀY ULTRABOOST 21', N'tuannguyen12', 5, N'1 shoes per box', 5000000.0000, 2, 3, N'image/giày-ultraboost-21.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (38, N'GIÀY ADIZERO TAKUMI SEN 8', N'tuannguyen12', 5, N'1 shoes per box', 4500000.0000, 2, 3, N'image/giày-adizero-takumi-sen-8.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (39, N'GIÀY ULTRABOOST 20 X JAMES BOND', N'tuannguyen12', 5, N'1 shoes per box', 5000000.0000, 2, 3, N'image/giày-ultraboost-20-x-james-bond.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (40, N'GIÀY ADISTAR', N'tuannguyen12', 5, N'1 shoes per box', 3500000.0000, 2, 3, N'image/giày-adistar.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (41, N'GIÀY TRAINER DROPSET', N'tuannguyen12', 5, N'1 shoes per box', 3500000.0000, 2, 3, N'image/giày-trainer-dropset.jpg', N'Adidas')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (42, N'Air Jordan 1 Elevate Low SE', N'tuannguyen12', 5, N'1 shoes per box', 4109000.0000, 2, 3, N'image/air-jordan-1-elevate-low-se-shoes-vrrNpV.jfif', N'Nike')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (43, N'Tai nghe Bluetooth True Wireless Rezo F15', N'user1', 3, N'1 product per box', 800000.0000, 174, 0, N'image/bluetooth-true-wireless-rezo-f15-thumb-600x600.jpeg', N'Rezo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (44, N'Tai nghe Bluetooth True Wireless Rezo QT13', N'user1', 3, N'1 product per box', 950000.0000, 288, 0, N'image/bluetooth-true-wireless-rezo-qt13-thumb1-600x600.jpeg', N'Rezo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (46, N'Lãnh Đạo Không Kiểm Soát', N'saitama1', 9, N'1 book per pack ', 50400.0000, 25, 0, N'image/51cf4da2b568ebdb35b9110086a66723.jpg', N'Sách kinh tế')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (47, N'Combo 5 cuốn sách kinh doanh', N'saitama1', 9, N'5 book per pack', 633000.0000, 67, 0, N'image/db6a7bd8bb68661bd0fcacff2a11024b.jpg', N'Sách kinh tế')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (48, N'Thành Công Luôn Nằm Trong Tay Bạn Carlos Slim', N'saitama1', 9, N'1 book per pack ', 123000.0000, 123, 0, N'image/ce1ca353fcfd696eb2afcca47a9c9ffe.jpg', N'Sách kinh tế')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (49, N'Combo Thế Giới Ảo, Thương Hiệu Thật + Quản Trị Thương Hiệu Trực Tuyến', N'saitama1', 9, N'2 book per pack', 180600.0000, 111, 0, N'image/32d9970c21867a3a921b06d786f348d8.jpg', N'Sách kinh tế')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (50, N'Bộ Sách Triệu Phú', N'saitama1', 9, N'4 book per pack ', 620000.0000, 232, 0, N'image/880e4e5e15a975e35226780f3d0d3e45.jpg', N'Sách kinh tế')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (51, N'Đại Việt Sử Ký Toàn Thư Trọn Bộ (Tái Bản)', N'saitama1', 9, N'1 book per pack ', 168000.0000, 652, 0, N'image/0826ba60e45accd88a9a193a0c1a78ff.jpg', N'Sách lịch sử')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (52, N'Lược Khảo Nguồn Gốc Địa Danh Nam Bộ', N'saitama1', 9, N'1 book per pack ', 39150.0000, 640, 0, N'image/fc40cdc6b09414cbff58fcde7c5f266d.jpg', N'Sách lịch sử')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (53, N'Sách lịch sử:Việt Nam Thời Dựng Nước', N'saitama1', 9, N'1 book per pack ', 269000.0000, 56, 0, N'image/3b9ac52a15b8425cdfed973b7ea4bd80.jpg', N'Sách lịch sử')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (54, N'Sách Các Thương Cảng Ven Biển Bắc Trung Bộ Thế Kỷ X-XIX', N'saitama1', 9, N'1 book per pack ', 209000.0000, 65, 0, N'image/b413b70ac049d22737c7085988619d42.jpg', N'Sách lịch sử')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (55, N'HỒ CHÍ MINH CƠ HỘI CUỐI CÙNG - BÌA CỨNG - BÌNH BOOK', N'saitama1', 9, N'1 book per pack ', 250000.0000, 36, 0, N'image/51de56f318c515509837527dc443d5d8.jpg', N'Sách lịch sử')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (56, N'Sách Nam Kỳ Và Cư Dân - Tác Phẩm Lịch Sử Ghi Chép Mọi Thứ Về Nam Kỳ', N'saitama1', 9, N'2 book per pack', 535000.0000, 36, 0, N'image/502b5cb38a417ac13f17692d7ffcc881.png', N'Sách lịch sử')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (57, N'Python Dành Cho Người Bắt Đầu', N'saitama1', 9, N'1 book per pack ', 152250.0000, 12, 0, N'image/36bf2c5b7d33ce6bb3bb41002d095dad.jpg', N'Sách CNTT')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (58, N'Combo Code Dạo Kí Sự + Gián Điệp Mạng', N'saitama1', 9, N'1 book per pack ', 375000.0000, 123, 0, N'image/034f5ba64a043030ae3c3150c1158e3c.jpg', N'Sách CNTT')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (59, N'An toàn thông tin', N'saitama1', 9, N'1 book per pack ', 99000.0000, 123, 0, N'image/0cc9c6ab797f3e8c54f427335df7f89a.jpg', N'Sách CNTT')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (60, N'Quy định về an toàn thông tin', N'saitama1', 9, N'1 book per pack ', 95000.0000, 36, 0, N'image/8a1a5d27117d36f1a55fe0d63eabec67.jpg', N'Sách CNTT')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (62, N'Truyện tranh- One Piece (combo 1-96)', N'saitama1', 9, N'Combo 1-96', 1920000.0000, 36, 0, N'image/0e3ac6cd5318aca7325c92e80caf1f03_tn.jpg', N'Truyện Tranh')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (63, N'Truyện tranh Fate Stay Night trọn bộ 20 tập ', N'saitama1', 9, N'20 books per pack', 860000.0000, 34, 0, N'image/a5e28350d85c641f74207dc30f146841_tn.jpg', N'Truyện Tranh')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (64, N'Truyện tranh - Doraemon truyện ngắn (full 45 tập)', N'saitama1', 9, N'45 books per pack', 810000.0000, 36, 0, N'image/ca206ea0f76d4864af3dc021f11e57f7_tn.jpg', N'Truyện Tranh')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (65, N'Bánh tráng xike (500g)', N'tokudashigeo', 6, N'500g per unit', 85500.0000, 378, 0, N'image/1e434b59-1cd6-4135-a9f5-ccc8c3cd-4098bc9b-220306233828.jpeg', N'Xike')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (66, N'Bánh tráng xike (1kg)', N'tokudashigeo', 6, N'1kg per unit', 153000.0000, 98, 0, N'image/1e434b59-1cd6-4135-a9f5-ccc8c3cd-4098bc9b-220306233828 (1).jpeg', N'Xike')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (67, N'Cà phê đá Napoli Coffee (15gói * 17g)', N'tokudashigeo', 6, N'15 packs per box', 65700.0000, 26, 0, N'image/16b9e84b-7b64-4629-9873-3b751436-607c1cd8-210904215526.jpeg', N'Napoli')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (68, N'Cà phê sữa đá 3in1 Napoli Coffee (10gói * 22g)', N'tokudashigeo', 6, N'10 packs per box', 55800.0000, 556, 0, N'image/28379e30-139f-4d62-a7a0-c253386a-7b6e5b81-210904215851 (1).jpeg', N'Napoli')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (69, N'Tokbokki / tokpokki Hàn Quốc O''food gói 140gr, 5 vị truyền thống, phô mai cay & không cay, tương đen, chua ngọt', N'tokudashigeo', 6, N'140g ', 30000.0000, 59, 0, N'image/3f0ffbc272f5f08544f7347b166fab47.jpg', N'O''food')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (70, N'Bánh Gạo Lứt Nguyên Hạt HAPPI OHA 170g - Hỗ Trợ Giảm Cân Và Ăn Kiêng', N'tokudashigeo', 6, N'170g per box', 39900.0000, 96, 0, N'image/e0958dfd0dea0c11ff01f8be37e0ad96.jpg', N'HAPPI OHA')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (71, N'Combo 2 Hộp bánh oreo Sôcôla Pie 360g/hộp', N'tokudashigeo', 6, N'360 per box', 101000.0000, 26, 0, N'image/a6542a8a597c92a64ee1b907b0963b08.jpg', N'oreo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (72, N'Combo 5 hộp bánh quế OREO vị sôcôla', N'tokudashigeo', 6, N'5x54g', 53000.0000, 544, 0, N'image/323276205770120cf36a9e301d452618.jpg', N'oreo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (73, N'Kẹo Alpenliebe Hương Xoài Nhân Muối Ớt 16 Thỏi', N'tokudashigeo', 6, N'16 bars per bag', 95000.0000, 228, 0, N'image/8c7e575e339e45a8326bc6078d950410.jpg', N'Alpenliebe ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (74, N'Kẹo Mút Alpenliebe Ice-Cream Gói 32 Que', N'tokudashigeo', 6, N'32 sticks per bag', 76000.0000, 98, 0, N'image/14abedf9a0114744b813624077471bb9.jpg', N'Alpenliebe ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (75, N'Tai nghe Bluetooth True Wireless Earphones 2 Basic Xiaomi BHR4089GL Trắng', N'user345', 3, N'1 product per box ', 1272000.0000, 52, 0, N'image/tai-nghe-true-wireless-earphones-2-basic-xiaomi-thumb-600x600.png', N'Xiaomi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (76, N'Tai nghe Bluetooth True Wireless Xiaomi Earbuds Basic 2 BHR4272GL', N'user345', 3, N'1 product per box ', 632000.0000, 10, 0, N'image/bluetooth-tws-xiaomi-earbuds-basic-2-thumb-1-600x600.jpeg', N'Xiaomi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (77, N'Tai nghe chụp tai Bluetooth Sony WH-XB910N Đen', N'user345', 3, N'1 product per box ', 4090000.0000, 56, 0, N'image/chup-tai-bluetooth-sony-wh-xb910n-den-thumb-1-600x600.jpg', N'Sony')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (78, N'Tai nghe EP Bluetooth Sony WI-1000XM2', N'user345', 3, N'1 product per box ', 5490000.0000, 45, 0, N'image/nhet-tai-bluetooth-sony-wi-1000x2-080322-053629-600x600.jpeg', N'Sony')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (79, N'Tai nghe Bluetooth True Wireless Sony WF-C500', N'user345', 3, N'1 product per box ', 1990000.0000, 78, 0, N'image/bluetooth-true-wireless-sony-wf-c500-thumb-600x600.jpg', N'Sony')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (80, N'Tai nghe Bluetooth TWS Sony WF-1000XM3SME ', N'user345', 3, N'1 product per box ', 3790000.0000, 56, 0, N'image/bluetooth-tws-sony-wf-1000xm3sme-trang-thumb-600x600.jpg', N'Sony')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (81, N'Gấu Bông In Ảnh Cao Cấp Memon', N'quangvjppr0', 12, N'1 product per bag', 40000.0000, 89, 0, N'image/bded426c47052a269dc1f79eb001ac65.jpg', N'Memon')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (82, N'Bạch Tuộc Cảm Xúc Bông Cao Cấp Memon', N'quangvjppr0', 12, N'1 product per bag', 95000.0000, 78, 0, N'image/1bb2100ca13467823aef5bdc4e3954f9.jpg', N'Memon')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (84, N'Đồ chơi lắp ráp khủng long 3D mini Pikaboo cho bé trai và bé gái thiết kế nhựa PP an toàn cho bé', N'quangvjppr0', 12, N'1 product per bag', 11000.0000, 56, 0, N'image/cdea4ae0b70d971af12c58077ce5b00c.jpg', N'Pikaboo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (85, N'Xe ô tô địa hình điều khiển từ xa bằng cử động tay và tay cầm xoay 360 độ có nhạc và đèn cao cấp Pikaboo', N'quangvjppr0', 12, N'1 product per box ', 795000.0000, 89, 0, N'image/e09fd2b02c0c2be0db8b48a2ae7e0e61.jpg', N'Pikaboo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (86, N'Cung tên đồ chơi thể thao cho bé Pikaboo thiết kế nhựa ABS cao cấp gồm 3 mũi tên bắn cung và 1 bia', N'quangvjppr0', 12, N'1 product per box ', 170000.0000, 89, 0, N'image/44888dcec0b31c79d1d0831677b1be10.jpg', N'Pikaboo')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (87, N'LEGO CREATOR Trực Thăng Thám Hiểm 31092', N'quangvjppr0', 12, N'1 product per box ', 239000.0000, 56, 0, N'image/17d8225c1e24103ee67de4e6010c3eca.jpg', N'LEGO')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (88, N'LEGO SUPERHEROES 76168 Chiến Giáp Captain America ( 121 Chi tiết)', N'quangvjppr0', 12, N'1 product per box ', 269000.0000, 98, 0, N'image/8d248f4510d3eb65572ab4906ef31017.jpg', N'LEGO')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (89, N'LEGO TECHNIC 42117 Phi Cơ Đua ( 154 Chi tiết)', N'quangvjppr0', 12, N'1 product per box ', 216000.0000, 55, 0, N'image/571a786ebb6b3fab891527e3ae5cbab7.jpg', N'LEGO')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (90, N'LEGO CITY 60285 Xe Ô Tô Thể Thao ( 89 Chi tiết) Bộ gạch đồ chơi lắp ráp cho trẻ em', N'quangvjppr0', 12, N'1 product per box ', 319000.0000, 99, 0, N'image/6c2948b6515738e60fc92dd700f5bc97.jpg', N'LEGO')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (91, N'LEGO DUPLO 10915 Đoàn Tàu Học Chữ (36 Chi tiết) Đồ chơi lắp ráp giáo dục mầm non', N'quangvjppr0', 12, N'1 product per bag', 761000.0000, 45, 0, N'image/277c280717fc320c1ee3e569057e43cc.jpg', N'LEGO')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (92, N'REEBOK HIIT TR', N'eren', 5, N'1 product per box', 2390000.0000, 123, 0, N'image/fv6640_flt_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (93, N'EVZN - FTWR WHITE/ORANGE FLARE /CORE BLACK', N'eren', 5, N'1 product per box', 1235000.0000, 98, 0, N'image/fx3693_flt_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (94, N'EVZN - FTWR WHITE/BASIL GREEN/CORE BLACK', N'eren', 5, N'1 product per box', 1235000.0000, 78, 0, N'image/fx3694_slc_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (95, N'REEBOK VECTOR RUNNER - BLACK/BEIGE/SALTED CARAMEL', N'eren', 5, N'1 product per box', 1990000.0000, 65, 0, N'image/h02990_flt_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (96, N'CLUB C REVENGE - WHITE/GOLD MET./FOREST GREEN', N'eren', 5, N'1 product per box', 1990000.0000, 45, 0, N'image/fx2100_slc_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (97, N'INTV LOGO', N'eren', 5, N'1 product per box', 1990000.0000, 43, 0, N'image/fy0948_flt_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (98, N'REEBOK VECTOR SMASH SYN - CHALK/COURT GREEN/HIGH VIS ORANGE', N'eren', 5, N'1 product per box', 1390000.0000, 65, 0, N'image/fz2826_flt_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (99, N'REEBOK VECTOR SMASH SYN - FTWR WHITE/VECTOR NAVY/VECTOR RED', N'eren', 6, N'1 product per box', 1390000.0000, 88, 0, N'image/fz2824_flt_ecom.jpg', N'Reebok')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (100, N'Nhẫn thép titan mạ vàng đính đá/ngọc trai nhân tạo phong cách Hàn Quốc thời trang cho nữ', N'doraemon123', 8, N'1 product per box', 16999.0000, 54, 0, N'image/0a5720ab40dd4b8385ef803bd5de0f0c.jpg', N'Không Thương Hiệu')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (101, N'Dây chuyền bạc đeo sát cổ mặt hình bướm đính pha lê nhân tạo kiểu dáng thanh lịch dành cho bạn nữ', N'doraemon123', 8, N'1 product per box', 14580.0000, 32, 0, N'image/2845e08aca3c8948e9bb10dc71088c31.jpg', N'Không Thương Hiệu')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (102, N'Mặt dây chuyền Kim cương Vàng trắng 14K PNJ DDDDW001207', N'doraemon123', 8, N'1 product per box', 65241000.0000, 2, 0, N'image/gmddddw001207_mat_day_chuyen_kim_cuong_vang_trang_14k_pnj_001.png', N'PNJ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (103, N'Nhẫn Kim cương Vàng 14K PNJ DDDDH000184', N'doraemon123', 8, N'1 product per box', 33491.0000, 5, 0, N'image/gnddddh000184-nhan-kim-cuong-vang-14k-pnj-01.png', N'PNJ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (104, N'Nhẫn Kim cương Vàng trắng 14K PNJ DDDDW003910', N'doraemon123', 8, N'1 product per box', 23158000.0000, 9, 0, N'image/gnddddw003910-nhan-kim-cuong-vang-trang-14k-pnj.png', N'PNJ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (105, N'Dây cổ Kim cương Vàng trắng 14K PNJ DD00W000266', N'doraemon123', 8, N'1 product per box', 157299000.0000, 23, 0, N'image/gcdd00w000266-day-co-kim-cuong-vang-trang-14k-pnj-01.png', N'PNJ')
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (106, N'Dây cổ Kim cương Vàng Trắng 14K Disney|PNJ Beauty & The Beast DD00X000027', N'doraemon123', 8, N'1 product per box', 8451000.0000, 56, 0, N'image/gcdd00x000027-day-co-kim-cuong-vang-trang-14k-disneypnj-beauty-and-the-beast-4001.png', N'PNJ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (107, N'NHẪN DJR1398', N'doraemon123', 8, N'1 product per box', 55660000.0000, 43, 0, N'image/djr1398-1-dXBsb2FkcHJvZHVjdHRyYW5nLXN1Yy1raW0tY3VvbmdzaGluaW5nLWRyb3A=-mb.jpg', N'DOJI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (108, N'MẶT DÂY DJP404', N'doraemon123', 8, N'1 product per box', 60890000.0000, 89, 0, N'image/djp404-1-dXBsb2FkcHJvZHVjdHRyYW5nLXN1Yy1raW0tY3VvbmdzaGluaW5nLWRyb3A=-mb.jpg', N'DOJI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (109, N'BÔNG TAI DJE393', N'doraemon123', 8, N'1 product per box', 59290000.0000, 56, 0, N'image/dje393-1-dXBsb2FkcHJvZHVjdHRyYW5nLXN1Yy1raW0tY3VvbmdzaGluaW5nLWRyb3A=-mb.jpg', N'DOJI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (110, N'MẶT DÂY DJP1379-2', N'doraemon123', 8, N'1 product per box', 66430000.0000, 56, 0, N'image/djp1379-2-1-dXBsb2FkcHJvZHVjdHRyYW5nLXN1Yy1raW0tY3VvbmdzaGluaW5nLWRyb3A=-mb.jpg', N'DOJI')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (111, N'Mặt Dây Chuyền Vàng 610 18K Nữ AvaJi AVJ.P000211 ', N'doraemon123', 8, N'1 product per box', 2040000.0000, 45, 0, N'image/mat-day-chuyen-vang-610-18k-nu-avaji-avjp000211-100222-020143-600x600.jpg', N'AvaJi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (112, N'Dây Chuyền Vàng 610 18K Unisex AvaJi AVJ.N000563', N'doraemon123', 8, N'1 product per box', 3210000.0000, 34, 0, N'image/day-chuyen-vang-610-18k-unisex-avaji-avjn000563-100222-114428-600x600.jpg', N'AvaJi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (113, N'Bông Tai Vàng 610 18K Nữ AvaJi AVJ.E000952', N'doraemon123', 8, N'1 product per box', 2639000.0000, 56, 0, N'image/bong-tai-vang-610-18k-nu-avaji-avje000952-100222-110725-600x600.jpg', N'AvaJi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (114, N'Bông Tai Vàng 610 18K Nữ AvaJi AVJ.E000953', N'doraemon123', 8, N'1 product per box', 3366000.0000, 57, 0, N'image/bong-tai-vang-610-18k-nu-avaji-avje000953-100222-111047-600x600.jpg', N'AvaJi')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (115, N'Thức Ăn Hamster P-Food', N'quangvjppr0', 10, N'400g per bag', 28500.0000, 12, 0, N'image/cd01af77dd53d6e67bab78be430dbf26.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (116, N'Sữa tắm cho chó SOS 530ml poodle, lông trắng, lông tối màu - Sữa tắm chó mèo Vẩu Pet Shop', N'quangvjppr0', 10, N'530ml per bottle', 67200.0000, 222, 0, N'image/375d0d82948d8befb0a38e72571b7ea1.jpg', N'SOS')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (117, N'Thức ăn dinh dưỡng nhiều loại cho hamster', N'quangvjppr0', 10, N'1 product per box', 2000.0000, 123, 0, N'image/1413d5abc7246abd449ee9494929ba6b.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (118, N'Thức ăn hamster cheap food 500gr', N'quangvjppr0', 10, N'500 grams per bag', 23750.0000, 56, 0, N'image/a136d2f0239c57cec27420c499daf0b9.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (119, N'Sữa Tắm SOS dành cho Chó Và Mèo (530ml)', N'quangvjppr0', 10, N'530ml per bottle', 80000.0000, 56, 0, N'image/47cc1693ecbe554658f72dcb122b2ac4.jpg', N'SOS')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (120, N'Sâu sấy khô lọ 330ml 65gr', N'quangvjppr0', 10, N'65gr', 19000.0000, 456, 0, N'image/1d9f40044e10bf60ea74ee13b48a8a8a.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (121, N'Thức Ăn Cho Chó Lớn, Đồ Ăn Hạt Khô Classic Adult Vị Thịt Bò 400g - iPet Shop', N'quangvjppr0', 10, N'400g per bag', 14480.0000, 123, 0, N'image/9a2f70c1c4f3a12d50a18c85420d882a.jpg', N'Classic Pets')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (122, N'Thức ăn hamster cheese hộp 25g', N'quangvjppr0', 10, N'25gr per bag', 10000.0000, 123, 0, N'image/1eb470207cd102eff0f830459e160065.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (123, N'thức ăn hamster Cá tuyết sợi 100% hàng thái lan lọ 32gr', N'quangvjppr0', 10, N'32 gram per bottle', 10000.0000, 123, 0, N'image/04d45730b88da744a421a7dbd2dc9887.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (124, N'Sữa tắm chó mèo - Sữa Tắm SOS 530ml', N'quangvjppr0', 10, N'530ml per bottle', 64800.0000, 111, 0, N'image/5bf9c45321c6c5fab5a81b490fa7b374.jpg', N'SOS')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (125, N'SỮA TẮM SOS DÀNH CHO CHÓ VÀ MÈO 530ML - HÀNG CHÍNH HÃNG Pet-1989', N'quangvjppr0', 10, N'530ml per bottle', 65900.0000, 123, 0, N'image/29962765760fabc0ca6fbec59c363766.jpg', N'SOS')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (126, N'Sữa Tắm SOS dành cho Chó Và Mèo (530ml)', N'quangvjppr0', 10, N'530ml per bottle', 75500.0000, 123, 0, N'image/3a8e4ecea9658c11187a7c3eeea79bb9.jpg', N'SOS')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (127, N'Thanh gặm timothy mài răng cho guinea pig, thỏ, bọ, hamster', N'quangvjppr0', 10, N'1 product per box', 3500.0000, 1111, 0, N'image/6adf768d5830e8d456a8a66c47b8f917.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (128, N'sâu khô cho hamster, nhím, sóc ( lọ 36gr )', N'quangvjppr0', 10, N'36gr per bottle', 9500.0000, 1111, 0, N'image/9e914da02ad5ebd63fa78583d4d81d4f.jpg', N'Pet kingdom ú cưng')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (129, N'Thức Ăn Hạt Khô Minino Vị Cá Ngừ Cho Mèo Mọi Lứa Tuổi 480g', N'quangvjppr0', 10, N'480gr per bags', 26840.0000, 1111, 0, N'image/b9312390f7f287b5d6ccadcd9b5b4d3a.jpg', N'Minino')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (130, N'Thức Ăn Hạt Khô Cho Mèo Minino Yum Của Pháp', N'quangvjppr0', 10, N'1 product per box', 28000.0000, 1234, 0, N'image/9ee56768294c1bb79f4c23aaf4899057.jpg', N'Minino')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (131, N'Sữa tắm cho chó SOS chai 520ml - Hàng chính hãng có tem tròn', N'quangvjppr0', 10, N'530ml per bottle', 79000.0000, 456, 0, N'image/2d994cb54cca19fa813aaf18e6b25769.jpg', N'SOS')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (132, N'Đồng hồ Nam MVW MS075-01 ', N'takemikazuchi', 7, N'1 product per box', 1592000.0000, 263, 0, N'image/dong-ho-nam-mvw-ms075-01-1.-600x600.jpg', N'MVW')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (133, N'Đồng hồ Nam MVW ML065-01', N'takemikazuchi', 7, N'1 product per box', 1790000.0000, 123, 0, N'image/dong-ho-nam-mvw-ml065-01-1.-600x600.jpg', N'MVW')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (134, N'Đồng hồ Nam MVW ML064-01', N'takemikazuchi', 7, N'1 product per box', 1592000.0000, 123, 0, N'image/dong-ho-nam-mvw-ml064-01-1.-600x600.jpg', N'MVW')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (135, N'Đồng hồ Nam MVW ML063-01 ', N'takemikazuchi', 7, N'1 product per box', 1790000.0000, 111, 0, N'image/dong-ho-nam-mvw-ml064-01-1.-600x600 (1).jpg', N'MVW')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (136, N'Đồng hồ Nam Orient Star RE-AT0001L00B', N'takemikazuchi', 7, N'1 product per box', 14161000.0000, 12, 0, N'image/orient-star-re-at0001l00b-nam-thumb-600x600.jpg', N'Orient')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (137, N'Đồng hồ Nam Orient Star RE-AU0001S00B', N'takemikazuchi', 7, N'1 product per box', 15725000.0000, 123, 0, N'image/orient-star-re-au0001s00b-nam-1-600x600.jpg', N'Orient')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (138, N'Đồng hồ Nam Orient Star RE-AU0403L00B', N'takemikazuchi', 7, N'1 product per box', 13948000.0000, 564, 0, N'image/1-600x600.jpg', N'Orient')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (139, N'Đồng hồ Nam Orient Star RE-AT0108L00B', N'takemikazuchi', 7, N'1 product per box', 18198000.0000, 111, 0, N'image/orient-star-re-at0108l00b-nam-1-600x600.jpg', N'Orient')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (140, N'Đồng hồ Nam Timex TW2U88900', N'takemikazuchi', 7, N'1 product per box', 4736000.0000, 34, 0, N'image/timex-tw2u88900-nam-070222-104751-600x600.jpg', N'Timex')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (141, N'Đồng hồ Nam Timex TW2U89100', N'takemikazuchi', 7, N'1 product per box', 4192000.0000, 45, 0, N'image/timex-tw2u89100-nam-thumb-600x600.jpg', N'Timex')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (142, N'Đồng hồ Nam Rossini 7713G05D ', N'takemikazuchi', 7, N'1 product per box', 3992000.0000, 88, 0, N'image/rossini-7713g05d-nam-090222-043810-600x600.jpg', N'Rossini')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (143, N'Đồng hồ đôi Citizen BH3002-03A/EJ6122-08A', N'takemikazuchi', 7, N'1 product per box', 4918000.0000, 73, 0, N'image/ava-600x600.jpg', N'Citizen')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (144, N'Gucci Bloom For Women EDP', N'trump', 11, N'30ml', 2090000.0000, 123, 0, N'image/Untitled-1-9-165x165.jpg', N'Gucci')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (145, N'Versace Pour Homme', N'trump', 11, N'5ml', 420000.0000, 1112, 0, N'image/Versace-Pour-Homme_1-165x165.jpg', N'Versace')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (146, N'Narciso Rodriguez For Her EDP', N'trump', 11, N'30ml', 1730000.0000, 145, 0, N'image/Narciso-Rodriguez-For-Her-EDP-100ML_t6av-n0-165x165.jpg', N'Narciso Rodriguez')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (147, N'Lolita Lempicka EDP', N'trump', 11, N'100ml', 1900000.0000, 365, 0, N'image/Untitledxx-6-165x165.jpg', N'Lolita Lempicka')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (148, N'Versace Eros Pour Femme', N'trump', 11, N'100ml', 3311000.0000, 12, 0, N'image/Versace-Eros-Pour-Femme-3-165x165.jpg', N'Versace')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (149, N'Chanel Chance Eau Tendre EDP', N'trump', 11, N'100ml', 3740000.0000, 56, 0, N'image/Untitledxx-165x165.jpg', N'Chanel')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (150, N'Moschino Toy 2 Bubble Gum For Women', N'trump', 11, N'100ml', 2255000.0000, 56, 0, N'image/moschino-toy-2-bubble-gum-orchardvn-hinh6-165x165.jpg', N'Moschino')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (151, N'Lancôme La Vie Est Belle L’Eau De Parfum', N'trump', 11, N'100ml', 3250000.0000, 89, 0, N'image/Lancôme-La-Vie-Est-Belle-EDP-_1_4134-da-165x165.jpg', N'Lancôme ')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UserID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [image], [Brand]) VALUES (152, N'Jean Paul Gaultier Scandal By Night EDP Intense', N'trump', 11, N'80ml', 3090000.0000, 89, 0, N'image/Jean-Paul-Gaultier_Scandal-by-night-50ml-orchard-165x165.jpg', N'Jean Paul Gaultier')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Shippers] ON 

INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (1, N'Viettel Post', N'0123456789')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (2, N'Giao hàng tiết kiệm', N'0395073662')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (3, N'Giao hàng nhanh', N'0456823179')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (4, N'VNpost – EMS', N'0258943167')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (5, N'J&T Express', N'0123556489')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (6, N'Shopee Express', N'0123459999')
SET IDENTITY_INSERT [dbo].[Shippers] OFF
GO
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'doraemon123', N'Mèo máy luxury', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'eren', N'Eren sneaker', N'')
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'Linh', N'Linh Bui', N'abc')
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'putin', N'Putin Shop', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'qtran9587', N'Shop thời trang cao cấp', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'QUANG', N'Quang Trần', N'')
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'quangtvhe153307', N'Linh Bui', N'abc')
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'quangvjppr0', N'Thiên đường thú cưng', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'saitama1', N'Bầu trời tri thức', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'takemikazuchi', N'Người kiểm soát thời gian', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'tokudashigeo', N'Tokuda food', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'tuannguyen12', N'Tuấn sneaker', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'trump', N'Perfume', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'user1', N'Kho công nghệ online', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'user123', N'Thế giới di động', NULL)
INSERT [dbo].[Shops] ([UserID], [ShopName], [Describe]) VALUES (N'user345', N'Vua tai nghe', NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Email]    Script Date: 3/24/2022 10:03:17 AM ******/
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [UC_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Order Details] ADD  CONSTRAINT [DF_Order_Details_Discount]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Freight]  DEFAULT ((0)) FOR [Freight]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsInStock]  DEFAULT ((0)) FOR [UnitsInStock]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitsOnOrder]  DEFAULT ((0)) FOR [UnitsOnOrder]
GO
ALTER TABLE [dbo].[Feedbacks]  WITH CHECK ADD  CONSTRAINT [FK_Feedbacks_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Feedbacks] CHECK CONSTRAINT [FK_Feedbacks_Products]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Orders]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order_Details_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order_Details_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Accounts] FOREIGN KEY([UserID])
REFERENCES [dbo].[Accounts] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Accounts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY([ShipVia])
REFERENCES [dbo].[Shippers] ([ShipperID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Shippers]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Shops] FOREIGN KEY([UserID])
REFERENCES [dbo].[Shops] ([UserID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Shops]
GO
ALTER TABLE [dbo].[Shops]  WITH CHECK ADD  CONSTRAINT [FK_Shops_Account] FOREIGN KEY([UserID])
REFERENCES [dbo].[Accounts] ([UserID])
GO
ALTER TABLE [dbo].[Shops] CHECK CONSTRAINT [FK_Shops_Account]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [CK_Discount] CHECK  (([Discount]>=(0) AND [Discount]<=(1)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Discount]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [CK_Quantity] CHECK  (([Quantity]>(0)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_Quantity]
GO
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [CK_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [CK_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_Products_UnitPrice] CHECK  (([UnitPrice]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_Products_UnitPrice]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_UnitsInStock] CHECK  (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsInStock]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [CK_UnitsOnOrder] CHECK  (([UnitsOnOrder]>=(0)))
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [CK_UnitsOnOrder]
GO
