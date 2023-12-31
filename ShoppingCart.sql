USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/9/2023 5:34:40 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 10/9/2023 5:34:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/9/2023 5:34:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/9/2023 5:34:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[BrandId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231006221945_v0', N'6.0.21')
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (6, N'Samsung', N'Được sản xuất ngay tại Việt Nam với công nghệ đạt chuẩn quốc tế của Hàn Quốc, những chiếc điện thoại Samsung hoàn toàn chinh phục được người dùng Việt bởi sự đa dạng phân khúc, độ bền cao đi cùng là những công nghệ tiên tiến mà hãng đã áp dụng cho sản phẩm của mình.', N'Samsung', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [Status]) VALUES (7, N'Apple', N'Là một trong số ít những đơn vị được Apple cấp chứng chỉ AAR (Apple Authorised Reseller), bạn luôn có được đa dạng sự lựa chọn về các sản phẩm iPhone VN/A khi tới CellphoneS cũng như nhận được chính sách bảo hành chính hãng uy tín, dịch vụ hỗ trợ nhiệt tình nếu điện thoại không may phát sinh vấn đề.', N'Apple', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (8, N'Điện thoại', N'Điện thoại thông minh', N'Điện-thoại', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [Status]) VALUES (9, N'Máy tính bảng', N'Máy tính bảng (còn được gọi là tablet) - chỉ các thiết bị di động chạy hệ điều hành có kích thước màn hình lớn từ 7 inch trở lên, thao tác cảm ứng để nhập liệu, có thể kết hợp thêm bàn phím và chuột.', N'Máy-tính-bảng', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (20, N'Samsung Galaxy Tab S9 Wifi 12GB 256', N'Samsung-Galaxy-Tab-S9-Wifi-12GB-256', N'<p>Giải tr&iacute; đỉnh cao mọi l&uacute;c mọi nơi - M&agrave;n h&igrave;nh 11 inch Dynamic AMOLED 2X,Tần số qu&eacute;t đến 120Hz</p>
', CAST(123213.00 AS Decimal(18, 2)), 6, 8, N'c5f8663a-57c7-49ed-a29e-f291fcdb00b2_THUMB_Media_Assets_Thumb_galaxy_a04_green_(1).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (21, N'Samsung Galaxy Z Flip5 256', N'Samsung-Galaxy-Z-Flip5-256', N'<p>Thần th&aacute;i nổi bật, c&acirc;n mọi phong c&aacute;ch- Lấy cảm hứng từ thi&ecirc;n nhi&ecirc;n với m&agrave;u sắc thời thượng, xu hướng</p>
', CAST(31231.00 AS Decimal(18, 2)), 6, 8, N'ba2238bd-3961-4d3f-80cc-23b66d6d45c3_3.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (22, N'Samsung Galaxy S22 Ultra (12GB - 256)', N'Samsung-Galaxy-S22-Ultra-(12GB---256)', N'<p>Camera mắt thần b&oacute;ng đ&ecirc;m Nightography - Chụp đ&ecirc;m cực đỉnh</p>
', CAST(123.00 AS Decimal(18, 2)), 6, 8, N'df4e826d-b024-45cc-9329-8f40055ef752_4.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (23, N'Samsung Galaxy Z Fold5 12GB 256', N'Samsung-Galaxy-Z-Fold5-12GB-256', N'<p>Bền bỉ bất chấp mọi t&igrave;nh huống - Đạt chuẩn kh&aacute;ng bụi v&agrave; nước IP68 c&ugrave;ng chất liệu nh&ocirc;m Armor Aluminum gi&uacute;p hạn chế cong v&agrave; xước</p>
', CAST(3213.00 AS Decimal(18, 2)), 6, 8, N'cdc83a1a-0e34-40c8-bc58-942621647edd_12.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (24, N'Samsung Galaxy S23 Ultra 12GB 512GB', N'Samsung-Galaxy-S23-Ultra-12GB-512GB', N'<p>Thoả sức chụp ảnh, quay video chuy&ecirc;n nghiệp - Camera đến 200MP, chế độ chụp đ&ecirc;m cải tiến, bộ xử l&iacute; ảnh th&ocirc;ng minh</p>
', CAST(1233.00 AS Decimal(18, 2)), 6, 8, N'2055e229-d7e4-48c2-b958-039c259eb777_11.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (25, N'Samsung Galaxy Z Flip5 512', N'Samsung-Galaxy-Z-Flip5-512', N'<p>Bền bỉ bất chấp mọi t&igrave;nh huống - Đạt chuẩn kh&aacute;ng bụi v&agrave; nước IP68 c&ugrave;ng chất liệu nh&ocirc;m Armor Aluminum gi&uacute;p hạn chế cong v&agrave; xước</p>
', CAST(123312.00 AS Decimal(18, 2)), 6, 8, N'f62b8ce4-ea2f-4a29-a856-539cd1fb79d9_11 (2).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (26, N'Samsung Galaxy S21 FE 8GB 128', N'Samsung-Galaxy-S21-FE-8GB-128', N'<p>Mượt m&agrave; mọi t&aacute;c vụ - Chip Exynos 2100 tiến tr&igrave;nh 5nm mạnh mẽ</p>
', CAST(3123.00 AS Decimal(18, 2)), 6, 8, N'269bd999-fb36-415f-a6b9-3acf3feaa609_11 (3).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (27, N'Samsung Galaxy M14 5G 4GB 128', N'Samsung-Galaxy-M14-5G-4GB-128', N'<p>Kiểu d&aacute;ng hiện đại c&ugrave;ng nhiều lựa chọn về m&agrave;u sắc gi&uacute;p ph&ugrave; hợp với nhiều người</p>
', CAST(1233.00 AS Decimal(18, 2)), 6, 8, N'6e000e01-9875-491a-9573-073c158207b5_11 (4).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (28, N'Samsung Galaxy A05S 4GB 128', N'Samsung-Galaxy-A05S-4GB-128', N'<p>Vận h&agrave;nh t&aacute;c vụ mượt m&agrave; như mong đợi - Xử l&iacute; tốt hơn với chip Snapdragon SM6225 v&agrave; RAM 4GB</p>
', CAST(1233.00 AS Decimal(18, 2)), 6, 8, N'276314c9-f0b8-4c55-ba61-5f53494db0a7_11 (5).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (29, N'Samsung Galaxy A34 5G 8GB 128', N'Samsung-Galaxy-A34-5G-8GB-128', N'<p>M&agrave;n h&igrave;nh Super AMOLED tr&agrave;n viền v&ocirc; cực mang đến kh&ocirc;ng gian hiển thị tuyệt vời</p>
', CAST(12343.00 AS Decimal(18, 2)), 6, 8, N'e4b22351-a914-49ff-8ddb-207083d33081_11 (6).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (30, N'iPhone 15 128GB | Chính hãng VN', N'iPhone-15-128GB-|-Chính-hãng-VN', N'<p>Thiết kế thời thượng v&agrave; bền bỉ - Mặt lưng k&iacute;nh được pha m&agrave;u xu hướng c&ugrave;ng khung viền nh&ocirc;m bền bỉ</p>
', CAST(123.00 AS Decimal(18, 2)), 7, 8, N'13fa1e86-904d-47c7-acf7-c8729a81f88b_1.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (31, N'iPhone 15 Pro Max 256GB | Chính hãng VN', N'iPhone-15-Pro-Max-256GB-|-Chính-hãng-VN', N'<p>Thiết kế khung viền từ titan chuẩn h&agrave;ng kh&ocirc;ng vũ trụ - Cực nhẹ, bền c&ugrave;ng viền cạnh mỏng cầm nắm thoải m&aacute;i</p>
', CAST(312.00 AS Decimal(18, 2)), 7, 8, N'29c7a05c-3734-4668-aa58-b6d08d445fb0_1 (11).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (32, N'iPhone 14 Pro Max 128GB | Chính hãng VN', N'iPhone-14-Pro-Max-128GB-|-Chính-hãng-VN', N'<p>M&agrave;n h&igrave;nh Dynamic Island - Sự biến mất của m&agrave;n h&igrave;nh tai thỏ thay thế bằng thiết kế vi&ecirc;n thuốc, OLED 6,7 inch, hỗ trợ always-on display</p>
', CAST(31232.00 AS Decimal(18, 2)), 7, 8, N'5bfeb251-0dee-473d-a7c7-7f3bd933d3b9_1 (10).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (33, N'iPhone 15 Pro 128GB | Chính hãng VN', N'iPhone-15-Pro-128GB-|-Chính-hãng-VN', N'<p>Thiết kế khung viền từ titan mới - Vật liệu cực nhẹ, bền c&ugrave;ng viền cạnh mỏng cho cảm gi&aacute;c cầm nắm thoải m&aacute;i</p>
', CAST(1233.00 AS Decimal(18, 2)), 7, 8, N'8fde7873-d0be-4f1b-83ae-193256474dc5_1 (9).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (34, N'iPhone 15 Pro Max 512GB | Chính hãng VN', N'iPhone-15-Pro-Max-512GB-|-Chính-hãng-VN', N'<p>Thiết kế khung viền từ titan chuẩn h&agrave;ng kh&ocirc;ng vũ trụ - Cực nhẹ, bền c&ugrave;ng viền cạnh mỏng cầm nắm thoải m&aacute;i</p>
', CAST(123.00 AS Decimal(18, 2)), 7, 8, N'2851f202-33ee-410e-b9c2-72765b7d8fdd_1 (8).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (35, N'iPhone 15 Plus 128GB | Chính hãng VN/A', N'iPhone-15-Plus-128GB-|-Chính-hãng-VN/A', N'<p>Thiết kế dẫn đầu xu hướng - Nhiều m&agrave;u sắc trendy c&ugrave;ng chất liệu k&iacute;nh pha m&agrave;u v&agrave; khung nh&ocirc;m v&ocirc; c&ugrave;ng bền bỉ</p>
', CAST(1233.00 AS Decimal(18, 2)), 7, 8, N'b2cbbb0d-cbd1-4eea-a1ee-d8b2f36440fa_1 (6).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (36, N'iPhone 13 128GB | Chính hãng VN', N'iPhone-13-128GB-|-Chính-hãng-VN', N'<p>Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao</p>
', CAST(12312.00 AS Decimal(18, 2)), 7, 8, N'b4e80da3-3ba7-41d8-9a57-fb759a95db96_1 (6).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (37, N'iPhone 14 Pro 128GB | Chính hãng VN', N'iPhone-14-Pro-128GB-|-Chính-hãng-VN', N'<p>Trải nghiệm thị gi&aacute;c ấn tượng - M&agrave;n h&igrave;nh Dynamic Island, sắc n&eacute;t với c&ocirc;ng nghệ Super Retina XDR, mượt m&agrave; 120 Hz</p>
', CAST(123.00 AS Decimal(18, 2)), 7, 8, N'8a65d930-6bf3-4b17-b2de-1333ccc4924e_1 (5).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (38, N'iPhone 15 Pro 256GB | Chính hãng VN/A +', N'iPhone-15-Pro-256GB-|-Chính-hãng-VN/A-+', N'<p>Thiết kế khung viền từ titan mới - Vật liệu cực nhẹ, bền c&ugrave;ng viền cạnh mỏng cho cảm gi&aacute;c cầm nắm thoải m&aacute;i</p>
', CAST(312.00 AS Decimal(18, 2)), 7, 8, N'a6a297cc-e7d8-4874-8d4c-2b8556a66224_1 (5).jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandId], [CategoryId], [Image]) VALUES (39, N'iPhone 13 Pro Max 128GB | Chính hãng VN/', N'iPhone-13-Pro-Max-128GB-|-Chính-hãng-VN/', N'<p>Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao</p>
', CAST(123.00 AS Decimal(18, 2)), 7, 8, N'a82e2ce2-1bfe-46d0-8e4a-73af91d4efee_1 (2).jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
