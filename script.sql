USE [PRJ301_SE1625]
GO
/****** Object:  Table [dbo].[Account_HE151027]    Script Date: 7/20/2022 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_HE151027](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[displayName] [nvarchar](100) NULL,
	[address] [nvarchar](500) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_HE151027]    Script Date: 7/20/2022 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_HE151027](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail_HE151027]    Script Date: 7/20/2022 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail_HE151027](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](100) NULL,
	[productImage] [nvarchar](3000) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders_HE151027]    Script Date: 7/20/2022 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders_HE151027](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [nvarchar](1000) NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_HE151027]    Script Date: 7/20/2022 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_HE151027](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
	[description] [nvarchar](3000) NULL,
	[imageUrl] [varchar](1000) NULL,
	[created_date] [date] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping_HE151027]    Script Date: 7/20/2022 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping_HE151027](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_HE151027] ON 

INSERT [dbo].[Account_HE151027] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (1, N'user', N'123456', N'User', N'Ha Noi', N'user@gmail.com', N'0987654321', N'USER')
INSERT [dbo].[Account_HE151027] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (7, N'ok', N'123', N'ok', N'Ha Noi', N'ok@gmail.com', N'0123456789', N'USER')
INSERT [dbo].[Account_HE151027] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (8, N'user1', N'12345', N'User 1', N'HCM', N'user1@gmail.com', N'0123456789', N'USER')
INSERT [dbo].[Account_HE151027] ([id], [username], [password], [displayName], [address], [email], [phone], [role]) VALUES (9, N'admin', N'123456', N'ADMIN', N'HN', N'admin@gmail.com', N'0123456789', N'ADMIN')
SET IDENTITY_INSERT [dbo].[Account_HE151027] OFF
GO
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (1, N'Creed')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (2, N'Dior')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (3, N'Gucci')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (4, N'Chanel')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (5, N'Hermes')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (6, N'Versace')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (7, N'Tom Ford')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (8, N'Buberry')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (9, N'Victoria''s Secret')
INSERT [dbo].[Category_HE151027] ([id], [name]) VALUES (10, N'Dolce & Gabbana (D&G)')
GO
SET IDENTITY_INSERT [dbo].[OrderDetail_HE151027] ON 

INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 5, N'Rapture (Arrebato)', N'http://dummyimage.com/250x250.png/dddddd/000000', 28.9, 1)
INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 5, N'Art of Getting By, The', N'http://dummyimage.com/250x250.png/cc0000/ffffff', 43.2, 1)
INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (9, 5, N'Journey to Italy (Viaggio in Italia) (Voyage to Italy) (Voyage in Italy)', N'http://dummyimage.com/250x250.png/cc0000/ffffff', 37.4, 4)
INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (10, 6, N'Gucci Bloom For Women EDP', N'https://orchard.vn/wp-content/uploads/2017/09/Untitled-1-9.jpg', 64, 10)
INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (11, 7, N'Gucci Bloom For Women EDP', N'https://orchard.vn/wp-content/uploads/2017/09/Untitled-1-9.jpg', 64, 16)
INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (12, 8, N'Gucci Bloom For Women EDP', N'https://orchard.vn/wp-content/uploads/2017/09/Untitled-1-9.jpg', 64, 16)
INSERT [dbo].[OrderDetail_HE151027] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (13, 9, N'Gucci Bloom For Women EDP', N'https://orchard.vn/wp-content/uploads/2017/09/Untitled-1-9.jpg', 64, 16)
SET IDENTITY_INSERT [dbo].[OrderDetail_HE151027] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders_HE151027] ON 

INSERT [dbo].[Orders_HE151027] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (5, 1, 221.7, N'ok', CAST(N'2022-07-01' AS Date), 1)
INSERT [dbo].[Orders_HE151027] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (6, 1, 640, N'ok', CAST(N'2022-07-14' AS Date), 2)
INSERT [dbo].[Orders_HE151027] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (7, 1, 1024, N'hihi', CAST(N'2022-07-15' AS Date), 3)
INSERT [dbo].[Orders_HE151027] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (8, 1, 1024, N'ok', CAST(N'2022-07-15' AS Date), 4)
INSERT [dbo].[Orders_HE151027] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (9, 1, 1024, N'12', CAST(N'2022-07-15' AS Date), 5)
SET IDENTITY_INSERT [dbo].[Orders_HE151027] OFF
GO
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (1, N'Gucci Bloom For Women EDP', 0, 64, N'Hương thơm
Hương chính: Hoa nhài Sambac, Hoa huệ trắng, Rễ cây diên vĩ
Dòng nước hoa Gucci Bloom thuộc nhóm Floral (Hương hoa cỏ). Hoa huệ trắng và Rễ cây diên vĩ là hai hương bạn có thể dễ dàng cảm nhận được nhất khi sử dụng nước hoa này.

Một mùi hương được chế tạo để tạo dấu ấn, sức sống và sự biến hoá đa dạng của phụ nữ. Gucci Bloom “đậm” hương hoa. Hương thơm toả trên da thịt khiến bạn như một vườn hoa ngát hương. Mùi hương sang trọng và tinh tế.

Cảm nhận đầu tiên khi xịt lên da là một hương thơm vô cùng nữ tính từ hoa Kim Ngân. Tiếp đến là sự nồng nàn từ hoa Nhài Sambac. Chiết xuất hoa nhài thu được thông qua một phương pháp khai thác độc quyền để truyền đạt một mùi hương tươi xanh trên da. Hoa đào chuông (Rangoon creeper) thể hiện ý tưởng và tên của nước hoa.

Mùi hoa huệ trắng mềm mại, nhẹ nhàng mà trang trọng. Nhà thiết kế đã thêm vào đó hương của rễ cây diên vĩ để tất cả các hương hoa có trong Gucci Bloom trộn lẫn hài hòa với nhau.', N'https://orchard.vn/wp-content/uploads/2017/09/Untitled-1-9.jpg', CAST(N'2021-03-29' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (2, N'Dior Sauvage EDP', 7, 24.4, N'Hương thơm của Dior Sauvage EDP :
Hương đầu: cam Bergamot
Hương giữa: hoa oải hương, tiêu Tứ Xuyên, đại hồi, hạt nhục đậu khấu
Hương cuối: nhựa Ambroxan, vanilla. Sự tươi mát mạnh mẽ của Dior Sauvage toát lên các khía cạnh gợi cảm và bí ẩn mới. Đổi mới dấu ấn của nó với một thành phần khéo léo. Thành phần được giữ ở phiên bản gốc gồm cam bergamot ngon ngọt. Cho bạn cảm giác fresh-tươi mới khi vừa xịt lên cơ thể. Và kích thích tinh thần hơn bao giờ hết, những note cay mới để thêm vào sự sung mãn và gợi cảm. Cuối cùng, Hổ phách ngọt dịu được bọc trong những note hương ngọt ngào của vanilla.', N'https://orchard.vn/wp-content/uploads/2018/04/m18230616_P3220029_medium.jpg', CAST(N'2021-11-27' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (3, N'Creed Aventus', 17, 28.9, N'Hương thơm của Creed Aventus
Hương đầu: quả lý chua đen, dứa, cam bergamot, táo.
Hương giữa: hoa hồng, hoa bạch dương khô, hoa nhài, hoắc hương.
Hương cuối: xạ hương, rêu sồi, long diên hương, vani.
Để tô đậm thêm tinh thần của vị hoàng đế vĩ đại, vỏ chai nước hoa Creed Aventus cũng được khắc hình vị hoàng đế đầy oai phong trên con ngựa bạc dũng mãnh này.  Mùi hương nam tính mạnh mẽ này được tạo ra bởi cha con nhà Oliver Creed Sixth Generation và Erwin Creed Seventh Generation.', N'https://orchard.vn/wp-content/uploads/2015/04/pww-340_1z.jpg', CAST(N'2021-03-13' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (4, N'Creed Spring Flower For Women', 13, 37.4, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả dưa tây, quả đào, quả táo
Hương giữa: hoa nhài, hoa hồng
Hương cuối: xạ hương, long diên hương
Nhóm hương: Floral Fruity
Phong cách: Sang trọng, tinh tế, nữ tính
Dung tích: 75ml
Cách sử dụng: Xịt
Người sáng lập: Olivier Creed Sixth Generation
Năm phát hành: 2006
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/12/zoom_variation_NA_view_01_990x1290.jpg', CAST(N'2021-09-10' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (5, N'Victoria’s Secret Wicked EDP', 16, 28.4, N'Thương hiệu: Victoria’s Secret
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng: hoa lan nam phi, đường nâu, vanilla. Nhóm hương: Oriental Vanilla
Phong cách: quyến rũ, ngọt ngào, tinh tế
Độ lưu hương: 6h đến 8h
Độ tỏa hương: xa – trong vòng hai cánh tay.
Thời gian sử dụng: cả ngày lẫn đêm.
Độ tuổi khuyên dùng: Trên 25
Dung tích: 100ml, 50ml
Cách sử dụng: Xịt
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2018/06/8.png', CAST(N'2021-09-26' AS Date), 9)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (6, N'Versace Pour Homme', 11, 10.9, N'Hương thơm
Mùi hương đặc trưng:
Hương đầu: Chanh, tinh dầu hoa cam, cam Bergamot, hoa hồng
Hương giữa: Hoa lan dạ hương, hoa Clary Sage, gỗ tuyết tùng và phong lữ
Hương cuối: Đậu Tonka, xạ hương và hổ phách
Được dẫn dắt bởi nhà thiết kế táo bạo và có ảnh hưởng nhất thế giới, nhãn hiệu Versace đồng nghĩa với sự cao cấp bậc nhất. Chính vì lẽ đó mà những dòng sản phẩm của Versace luôn gắn liền với phong cách lịch lãm, sang trọng…', N'https://orchard.vn/wp-content/uploads/2014/06/Versace-Pour-Homme_1.jpg', CAST(N'2021-10-05' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (7, N'Burberry London For Men', 18, 10.5, N'Mùi hương đặc trưng:
Hương đầu: Hoa levender, Cam bergamot, Hương quế.
Hương giữa: Hoa mimosa, Mùi da thuộc.
Hương cuối: Cây opoponax, Thuốc lá, Gỗ guaiac, Cây oakmoss.', N'https://orchard.vn/wp-content/uploads/2014/06/Burberry-London-For-Men_1.jpg', CAST(N'2022-01-02' AS Date), 8)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (8, N'Tom Ford For Men', 8, 27.8, N'Thương hiệu: Tom Ford

Nồng độ: Eau De Toillete (EDT)

Loại nước hoa: Nam

Mùi hương đặc trưng:

Hương đầu: gừng, quả quýt, tinh dầu lá chanh, cây húng quế, cam Bergamot, lá Violet

Hương giữa: hoa cam, hồ tiêu, cây thuốc lá

Hương cuối: hổ phách, hoắc hương, địa y, cỏ Vetiver, tuyết tùng

Nhóm hương: Woody Floral Musk

Phong cách: Nam tính, hấp dẫn, quyến rũ

Dung tích: 100ml

Cách sử dụng: dạng xịt

Người sáng lập: Yves Cassar


Năm phát hành: 2007
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2014/06/Tom-Ford-For-Men.jpg', CAST(N'2021-12-25' AS Date), 7)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (9, N'Dolce & Gabbana The One For Men EDP', 5, 33.7, N'Thương hiệu: Dolce & Gabbana
Nồng độ: Eau de Parfum (EDP)
Loại nước hoa nam
Mùi hương đặc trưng:
Hương đầu: hạt rau mùi, bưởi, rau húng quế
Hương giữa: gừng, hoa cam, bạch đậu khấu
Hương cuối: thuốc lá, hổ phách, tuyết tùng
Phân loại mùi hương: Woody-Spicy
Phong cách: nam tính, mạnh mẽ, sang trọng
Dung tích: 100ml
Cách sử dụng: xịt
Người sáng lập: Olivier Polge
Năm phát hành: 2015
Xuất xứ: Ý', N'https://orchard.vn/wp-content/uploads/2015/12/%C3%81DF.jpg', CAST(N'2021-04-11' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (10, N'Creed Original Santal', 5, 47.9, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nam và nữ
Mùi hương đặc trưng:
Hương đầu: gỗ đàn hương Ấn Độ, quế, rau mùi, berry.
Hương giữa: hoa oải hương, lá cây màu cam, lá hương thảo, gừng
Hương cuối: đậu Tonka, vani
Nhóm hương: Oriental Woody
Phong cách: sang trọng, thanh lịch.
Thích hợp sử dụng hằng ngày
Dung tích: 120ml
Cách sử dụng: Xịt
Tên người sáng lập: Sotirios Bulgaris
Năm phát hành: 2005
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2015/04/13292520405-2-700_30nq-3c.jpg', CAST(N'2021-06-12' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (11, N'Creed Green Irish Tweed For Men', 11, 42.3, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nam
Mùi hương đặc trưng:
Hương đầu: cỏ roi ngựa, chanh.
Hương giữa: lá violet
Hương cuối: xạ hương, cây đàn hương.
Nhóm hương: Floral Musk
Phong cách: Tươi mát, hấp dẫn
Thích hợp sử dụng hằng ngày
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Creed Sixth Generation
Năm phát hành: 1985
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2015/04/PWW-112_1z_xrs4-ta.jpg', CAST(N'2022-01-08' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (12, N'Creed Millesime Imperial', 16, 47, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nam và nữ
Mùi hương đặc trưng:
Hương đầu: trái cây, muối biển.
Hương giữa: chanh, cam bergamot, iris, cam quýt
Hương cuối: xạ hương, gỗ, hương biển Nhóm hương: Woody Floral Musk (Gỗ – Hoa Cỏ – Xạ Hương)
Phong cách: Sang trọng, quý phái
Độ lưu hương: Tạm ổn – 3 giờ đến 6 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thích hợp sử dụng hằng ngày
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Creed Sixth Generation
Năm phát hành: 1995
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2015/04/nuoa-hoa-niche-cao-cap-creed-millesime-imperial-anh3.jpg', CAST(N'2021-04-12' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (13, N'Creed Royal Water', 5, 21.2, N'Mùi hương đặc trưng :
Hương đầu: chanh tươi, bạc hà.
Hương giữa: cây bách xù, húng quế.
Hương cuối: xạ hương, long diên hương.
Phù hợp với :
Nam và nữ, muốn tìm kiếm một mùi hương sang trọng, hoàng gia, quý phái.', N'https://orchard.vn/wp-content/uploads/2015/04/creed-royal-water-orchard.vn-1.jpg', CAST(N'2021-12-07' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (14, N'Creed Silver Mountain Water', 20, 47.9, N'Mùi hương đặc trưng:
Hương đầu: Cam Bergamot, Quả quýt hồng.
Hương giữa: Trà xanh, Quả lý chua đen.
Hương cuối: Nhựa Galbanum, Xạ hương, Gỗ đàn hương, Tinh dầu lá cam.', N'https://orchard.vn/wp-content/uploads/2016/11/creed-silver-mountain-water-orchard.vn_.jpg', CAST(N'2021-03-14' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (15, N'Creed Creed Viking For Men EDP', 20, 22.5, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nam
Mùi hương đặc trưng:
Hương Đầu: Cam Bergamot, Quả lý chua đen, Hồng tiêu
Hương giữa: Gỗ trôi, Muối, Hoa hồng, Hương trái cây

Hương cuối: Long diên hương, Rêu sồi, Gỗ đàn hương, Muối biển

Phong cách:
Độ lưu hương: Rất kém – Dưới 1 giờ
Độ toả hương: Rất gần – Thoang thoảng trên làn da
Thời điểm khuyên dùng: Đêm, Đông
Dung tích: 100ml
Cách sử dụng: Xịt
Năm phát hành: 2016
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2018/08/viking.png', CAST(N'2021-07-25' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (16, N'Creed Aventus For Her', 19, 35.1, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng:
Hương Đầu: Cây hoắc hương, Táo xanh, Cam Bergamot, Quả chanh vàng, Hồng tiêu, Hoa tím
Hương giữa: Gỗ đàn hương, Hoa hồng, Bồ đề, Xạ hương
Hương cuối: Quả đào, Quả lý chua đen, Hoa tử đinh hương, Hoa ngọc lan tây, Hổ phách Nhóm hương: Chypre Fruity
Phong cách: Nữ tính, tự dọ, rạng rỡ
Độ lưu hương: Tốt, 6-8h trên cơ thể
Độ toả hương: Rất gần – Thoang thoảng trên làn da
Thời điểm khuyên dùng: Ngày, Đêm, Xuân
Dung tích: 75ml
Cách sử dụng: Xịt
Năm phát hành: 2016
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2018/08/products-A4H.jpg', CAST(N'2021-10-15' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (17, N'Creed Love In White', 18, 42.6, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: vỏ cam
Hương giữa: hoa hồng, hoa nhài, hoa mộc lan, hoa thuỷ tiên, hoa iris, gao trắng.
Hương cuối: long diên hương, vani, gỗ đàn hương Nhóm hương: Oriental Floral
Phong cách: Thanh lịch, sang trọng, thuần khiết
Độ lưu hương: Lâu – 7 giờ đến 12 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thời điểm khuyên dùng: Ban ngày, tất cả các mùa trong năm
Thích hợp sử dụng đi tiệc, hẹn hò, dùng hàng ngày
Dung tích: 75ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Creed & Erwin Creed
Năm phát hành: 2005
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2018/09/golden_scent_perfume_creed_perfumes_love_in_white_for_women_eau_de_parfum.jpg', CAST(N'2021-02-27' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (18, N'Creed Love In Black EDP For Women', 18, 40.5, N'Thương hiệu: Creed
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa: nữ
Mùi hương đặc trưng:
Hương Đầu: Hoa tím Ý, Gỗ tuyết tùng Virginia, Hoa dại

Hương giữa: Hoa diên vĩ, Đinh hương, Xạ hương

Hương cuối: Quả lý chua đen, Hoa hồng Bulgary

Nhóm hương: Floral
Phong cách:  Nữ tính , Gợi cảm , Bí ẩn
Độ lưu hương:  Lâu – 7 giờ đến 12 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thời điểm khuyên dùng: 
Thích hợp sử dụng:  Ngày, Đêm, Thu, Đông
Dung tích: 75ml
Cách sử dụng: Xịt
Năm phát hành: 2008
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2019/02/creed-love-in-black.jpg', CAST(N'2021-08-08' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (19, N'Creed Himalaya EDP', 19, 23.9, N'Mùi hương đặc trưng
Hương Đầu: Quả bưởi, Cam Bergamot Calabria, Quả chanh vàng Sicili.
Hương giữa: Gỗ đàn hương.
Hương cuối: Xạ hương, Long diên hương, Gỗ tuyết tùng.
Faceboo: https://www.facebook.com/orchardvn/', N'https://orchard.vn/wp-content/uploads/2020/03/creep-himalaya-orchard.jpg', CAST(N'2021-11-18' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (20, N'Creed Aventus Cologne EDP', 8, 37.5, N'Hương thơm của Creed Aventus Cologne 
Hương đầu: Quả quýt, Gừng, Tiêu hồng.
Hương giữa: Cỏ hương bài, Hoắc hương, Gỗ đàn hương.
Hương cuối: Xạ hương, Bạch dương, Đậu tonka, Styrax.', N'https://orchard.vn/wp-content/uploads/2021/04/creed-aventus-cologne-orchard.vn_.jpg', CAST(N'2021-05-23' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (21, N'Dior Sauvage Parfum', 9, 14.7, N'Thương hiệu: Dior
Nồng độ: Parfum
Loại nước hoa nam
Phong cách: Mạnh mẽ, nam tính, quyến rũ
Nhóm hương: Citrus & Woods
Notes hương chính: Bergamot, Amber, Vanilla
Dung tích: 100ml
Cách sử dụng: Xịt
Năm phát hành: 2019
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2019/09/3348901486392_672fa1db2d985714658c181fc5f0ac72.jpg', CAST(N'2021-11-28' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (22, N'Dior Sauvage Elixir', 20, 9.8, N'Mùi hương đặc trưng:
Hương Đầu: Bưởi, Quế, Nhục đậu khấu, Bạch đậu khấy.
Hương giữa: Oải hương.
Hương cuối: Hổ phách, cỏ hương bài Haiti, gỗ đàn hương, hoắc hương, cam thảo.', N'https://orchard.vn/wp-content/uploads/2022/01/dior_sauvage_elixir_orchardvn_hinh2.png', CAST(N'2021-06-08' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (23, N'Dior Miss Dior Blooming Bouquet', 16, 32.6, N'Mùi hương đặc trưng:
Hương đầu: Quả quýt.
Hương giữa: Hoa mẫu đơn hồng, Hoa hồng, Quả mơ, Quả đào.
Hương cuối: Xạ hương.', N'https://orchard.vn/wp-content/uploads/2015/01/Dior-Miss-Dior-Blooming-Bouquet-EDT-1.jpg', CAST(N'2021-04-23' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (24, N'Christian Dior Sauvage Deodorant Stick For Men', 12, 19.1, N'Mùi hương đặc trưng: Cam Bergamot, tiêu đen, phong lữ, oải hương, hồng Peppe, tiêu Tứ Xuyên, cỏ hương bài, hổ phách, gỗ tuyết tùng.', N'https://orchard.vn/wp-content/uploads/2020/03/Christian-Dior.jpg', CAST(N'2021-02-22' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (25, N'Giftset Dior Miss Dior EDP 2021 2pcs (EDP 50ml – Travel 10ml)', 15, 36.4, N'Thương hiệu: Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu:  Hoa diên vỹ, hoa mẫu đơn, hoa lan chuông
Hương giữa: Hoa hồng Grasse, quả đào, quả mơ
Hương cuối: Vani, gỗ đàn hương, xạ hương, benzoin, đậu tonka
Nhóm hương: Amber Floral
Phong cách: Mãnh liệt, duyên dáng, quyến rũ
Độ lưu hương: Tốt – 6 giờ đến 8 giờ
Độ toả hương:  Vừa Phải – Toả hương trong vòng bán kính  1,5m
Thời điểm khuyên dùng: Ngày, Đêm, Xuân, Hạ, Thu, Đông', N'https://orchard.vn/wp-content/uploads/2022/03/2588646.jpg', CAST(N'2021-04-22' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (26, N'Dior Hypnotic Poison', 20, 5.9, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả mơ, quả mận, quả dừa
Hương giữa: hoa huệ, hoa nhài, hoa linh lan, hoa hồng, gỗ hồng sắc, cây carum
Hương cuối: gỗ đàn hương, quả hạnh, hương vani, xạ hương Nhóm hương: Oriental Vanilla
Phong cách: Bí ẩn, mê hoặc, đầy thu hút
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Annick Menardo
Năm phát hành: 1998
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Hypnotic-Poison.jpg', CAST(N'2021-08-28' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (27, N'Dior Homme Sport 2017', 18, 43.1, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: quả bưởi, bưởi đỏ, quả lê, chanh vàng
Hương giữa: hạt tiêu hồng, nhục đậu khấu, hoa phong lữ
Hương cuối: cỏ vetiver, gỗ đàn hương Nhóm hương: Woody Aromatic
Phong cách: Mạnh mẽ, lịch lãm, khoẻ khoắn.
Dung tích: 75ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy
Năm phát hành: 2017
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2018/09/CHRISTIANDIOR_DIORHOMMESPORT2017_EDT125.jpg', CAST(N'2021-09-02' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (28, N'Dior J’Adore', 20, 8.1, N'Mùi hương đặc trưng:
Hương đầu: hoa mộc lan, dưa gang, đào, lê, cam bergamot, quýt
Hương giữa: hoa huệ, mận, hoa violet, phong lan, lan Nam Phi, hoa nhài, hoa lan chuông, hoa hồng
Hương cuối: xạ hương, vani, tuyết tùng, trái mâm xôi
Dior J’Adore sở hữu ba tầng hương với hương đầu là hoa mộc lan, dưa gang, đào, lê, cam bergamot, quýt, hương giữa là sự hòa quyện nhiều hương liệu nhất với hoa huệ, mận, hoa violet, phong lan, lan Nam Phi, hoa nhài, hoa lan chuông, hoa hồng và hương cuối là xạ hương, vani, tuyết tùng, trái mâm xôi.', N'https://orchard.vn/wp-content/uploads/2014/06/dior-jadore.jpg', CAST(N'2021-07-22' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (29, N'Dior Miss Dior', 19, 29.7, N'Hương đầu: quả quýt.
Hương giữa: hoa hồng, hoa nhài.
Hương cuối: hoắc hương, xạ hương.
Chịu trách nhiệm tạo ra phiên bản mới cho dòng nước hoa cao cấp của Christian Dior chính là chuyên gia Francois Demachy. Nước hoa mới có mùi hương đầu của cam bergamot, cam và quýt. Mùi hương giữa pha trộn giữa hoa hồng và nhài, trong khi lớp hương cuối là gỗ đàn hương, hoắc hương và cỏ vertiver. Vẫn là hình ảnh đặc trưng của Miss Dior, lọ nước hoa được tô điểm bởi chiếc nơ satin hồng nằm duyên dáng nơi cổ chai.', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Miss-Dior-EDP_1.jpg', CAST(N'2021-10-25' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (30, N'Dior Sauvage EDT', 7, 6.3, N'Mùi hương :
Hương đầu: cam Bergamot, tiêu.
Hương giữa: hoa phong lữ, hoa oải hương, tiêu hồng, tiêu Tứ Xuyên, cỏ Vetiver, cây Patchouli.
Hương cuối: nhựa Ambroxan, nhựa Labdanum, gỗ.', N'https://orchard.vn/wp-content/uploads/2016/03/11b7e5aeba005056ae6a4c_rtsc-00.jpg', CAST(N'2021-08-02' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (31, N'Dior Miss Dior Rose N’Roses EDT', 12, 42.1, N'Mùi hương đặc trưng:
Hương đầu: Cam Begamot, Tinh chất phong lữ, Quả quýt Ý.
Hương giữa: Hoa hồng Grasse, Hoa hồng Damask.
Hương cuối: Xạ hương trắng.', N'https://orchard.vn/wp-content/uploads/2020/06/nuoc-hoa-nu-dior-miss-dior-rose-orchard.vn-6.jpg', CAST(N'2021-07-29' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (32, N'Dior J’adore Infinissime EDP', 13, 49.8, N'Mùi hương đặc trưng:
Hương đầu: Cam Bergamot, Quả cam máu, Tiêu hồng.
Hương giữa: Hoa hồng, Hoa nhài Sambac, Hoa Ylang-Ylang, Lily thung lũng, Hoa huệ.
Hương cuối: Gỗ đàn hương.', N'https://orchard.vn/wp-content/uploads/2020/07/nuoc-hoa-nu-dior-jadore-infinissime-orchard.vn_.jpg', CAST(N'2021-08-15' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (33, N'Dior Fahrenheit 32', 16, 38.6, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: hoa cam
Hương giữa: cỏ Vetiver
Hương cuối: hương vani
Nhóm hương: Phương Đông
Phong cách: Nam tính, gợi cảm
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy và Louise Turner
Năm phát hành: 2007
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/b216b39c-c005-42b9-978c-c784fffb599b_Dior_Fahrenheit_32.jpg', CAST(N'2021-11-27' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (34, N'Dior Homme Sport EDT', 5, 36.5, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: bưởi, cam bergamot, chanh, nhựa elemi
Hương giữa: cỏ vetiver, tuyết tùng, gừng
Hương cuối: gỗ đàn hương, hoa hương thảo, hoa oải hương
Nhóm hương: Citrus
Phong cách: Trẻ trung, tươi mát, tự nhiên
Dung tích: 100ml
Cách sử dụng: Xịt
Thích hợp sử dụng hàng ngày
Tên người sáng lập: Francois Demachy
Năm phát hành: 2008
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/1-paris-gallery-christian-dior-f068924009.jpg', CAST(N'2022-01-17' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (35, N'Dior Addict Eau Delice', 16, 25.6, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả nam việt quất, cam Bergamot, quả cam, quả cherry
Hương giữa: hoa ngọc lan tây, hoa nhài Ai Cập, hoa nhài Ấn Độ, hoa hồng, quả hạnh đắng
Hương cuối: xạ hương, tuyết tùng, hương vani
Nhóm hương: Floral Fruity
Phong cách: Sang trọng, tinh tế
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2013
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/3348901134231_ezaz.jpg', CAST(N'2021-11-10' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (36, N'Dior Addict Eau Fraiche 2012', 20, 35.3, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam Bergamot, bưởi chùm
Hương giữa: hoa sen, hoa lan Nam Phi, quả lựu
Hương cuối: xạ hương, hương gỗ
Nhóm hương: Hoa cỏ, trái cây
Phong cách: Nhẹ nhàng, trẻ trung, nữ tính
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2012
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/dior-addict-eau-fraiche-edt-100ml.jpg', CAST(N'2021-10-30' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (37, N'Dior Addict Shine', 6, 44.9, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng: hoa dành dành, tuyết tùng, chanh, quả mâm xôi
Nhóm hương: Trái cây
Phong cách: Nữ tính, quyến rũ, tinh tế
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2007
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/07069480106.jpg', CAST(N'2021-07-17' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (38, N'Dior Dune For Women', 5, 21.8, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: aldehyt, hoa mẫu đơn, quả quýt, cam Bergamot, gỗ hồng sắc
Hương giữa: hoa Lily, hoa nhài, hoa ngọc lan tây, hoa hồng, hoa quế trúc
Hương cuối: gỗ đàn hương, hổ phách, hoắc hương, xạ hương, nhựa Benzoin, hương vani, địa y
Nhóm hương: Phương Đông
Phong cách: Tươi mát, huyền ảo, lấp lánh
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Jean-Louis Sieuzac và Nejla Barbir
Năm phát hành: 1993
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Christian-Dior-Christian-Dior-Dune-Women-Perfume-100ml-17612462-eec1b862-5e81-4b7f-aa69-0c8d12483e2c-jpg.jpg', CAST(N'2021-12-16' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (39, N'Dior Hypnotic Poison Eau Sensuelle', 6, 33.8, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hoa ngọc lan tây, hoa cam, hoa hồng
Hương giữa: hoa phong lan, hương xanh
Hương cuối: gỗ đàn hương, hương vani, xạ hương, hương gỗ
Nhóm hương: Phương Đông
Phong cách: Khiêu gợi, táo bạo, quyến rũ
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2010
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Hypnotic-Poison-Eau-Sensuelle-EDT-1.jpg', CAST(N'2022-02-09' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (40, N'Dior J’adore L’absolu', 14, 19.5, N'Thương hiệu: Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hoa ngọc lan tây
Hương giữa: hoa huệ, hoa nhài, hoa hồng
Hương cuối: hương trái cây, xạ hương, hương gỗ
Nhóm hương: Hoa cỏ, trái cây
Phong cách: Tự tin, gợi cảm, nữ tính
Dung tích: 75ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy
Năm phát hành: 2007
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/3348901110563.png', CAST(N'2021-04-29' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (41, N'Dior J’adore Voile De Parfum', 17, 22, N'Thương hiệu: Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hoa mộc lan, dưa gang, đào, lê, cam bergamot, quýt
Hương giữa: hoa huệ, mận, hoa violet, phong lan, lan Nam Phi, hoa nhài, hoa lan chuông, hoa hồng
Hương cuối: xạ hương, vani, tuyết tùng, trái mâm xôi
Nhóm hương: Floral – Fruity
Phong cách: quyến rũ, hiện đại, sang trọng
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Calice Becker
Năm phát hành: 1999
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/BEAUTY_REVIEW_Dior_J%E2%80%99adore_Voile_de_Parfum_EDT_DECOR.jpg', CAST(N'2021-11-14' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (42, N'Dior Midnight Charm', 16, 21.3, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hương trái cây, hương green, quả quýt
Hương giữa: quả đào, hoa nhài, hoa hồng
Hương cuối: da thuộc, hổ phách
Nhóm hương: Hoa cỏ
Phong cách: Lãng mạn, độc đáo, gợi cảm
Dung tích: 50ml
Cách sử dụng: Xịt
Năm phát hành: 2006
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Midnight-Charm-50ml_2_xr7e-6u.jpg', CAST(N'2021-11-18' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (43, N'Dior Midnight Poison', 9, 46.4, N'Thương hiệu: Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả quýt, cam bergamot
Hương giữa: hoa hồng
Hương cuối: hoắc hương, hổ phách, hương vani
Nhóm hương: Phương Đông
Phong cách: Thú vị, ngọt ngào, tươi trẻ
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Jacques Cavaliier, Olivier Cresp và Francois Demachy
Năm phát hành: 2007
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Midnight-Poison.jpg', CAST(N'2021-07-09' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (44, N'Dior Miss Dior Chérie', 13, 47.3, N'Thương hiệu: Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả quýt, quả dâu tây
Hương giữa: hoa nhài, hoa hồng
Hương cuối: cỏ Vetiver, gỗ đàn hương, hoắc hương, địa y, hổ phách
Nhóm hương: Chypre
Phong cách: Tinh nghịch, ngây thơ, trong trắng
Độ lưu hương: Lâu – 7 giờ đến 12 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thời điểm khuyên dùng: Ngày, Đêm, Xuân
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2011
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Miss_Dior_Cherie_edp.jpg', CAST(N'2021-11-02' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (45, N'Dior Miss Dior Chérie Blooming Bouquet', 10, 46.1, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả quýt
Hương giữa: hoa mẫu đơn
Hương cuối: xạ hương
Nhóm hương: Hoa cỏ
Phong cách: Ngọt ngào, lãng mạn, nữ tính
Dung tích: 50ml
Cách sử dụng: Xịt
Năm phát hành: 2008
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Miss-Dior-Blooming-Bouquet.jpg', CAST(N'2021-02-07' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (46, N'Dior Miss Dior Chérie L’eau', 6, 25, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả cam đắng
Hương giữa: hoa mẫu đơn
Hương cuối: xạ hương
Nhóm hương: Hoa cỏ
Phong cách: Trẻ trung, vui tươi, thanh lịch
Dung tích: 50ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2009
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Miss-Dior-Cherie-Leau-5.jpg', CAST(N'2021-04-18' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (47, N'Dior Miss Dior Eau Fraiche', 6, 35.2, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam quýt, galbanum, cam bergamot
Hương giữa: hoa nhài, hoa dành dành
Hương cuối: hoắc hương
Nhóm hương: Chypre
Phong cách: Nữ tính, thanh lịch, gợi cảm
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2012
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/1-paris-gallery-christian-dior-f005224209.jpg', CAST(N'2021-01-24' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (48, N'Dior Addict 2', 15, 30, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: quả cam, hoa lan Nam Phi, quả bưởi, cam Bergamot
Hương giữa: quả dứa, quả lựu, hoa linh lan, quả dưa hấu, hoa sen
Hương cuối: gỗ đàn hương, tuyết tùng, xạ hương
Nhóm hương: Hoa cỏ
Phong cách: Bay bổng, say đắm, nữ tính
Dung tích: 100ml
Cách sử dụng: Xịt
Năm phát hành: 2005
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/120420141120051.jpg', CAST(N'2021-12-27' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (49, N'Dior Addict EDP', 11, 24.9, N'Thương hiệu: Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hoa Silkwood, quả quýt
Hương giữa: hoa xương rồng khế
Hương cuối: hương vani
Nhóm hương: Hoa cỏ
Phong cách: Gợi cảm, nhẹ nhàng, nữ tính
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2012
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/s631937-main-zoom.jpg', CAST(N'2021-08-01' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (50, N'Dior Dolce Vita', 13, 6.7, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hoa Lily, quả đào, quả bưởi, cam Bergamot, hoa hồng, bạch đậu khấu
Hương giữa: quả mơ, hoa mộc lan, hoa Lily, vỏ cây quế, hoa vòi voi, gỗ hồng sắc
Hương cuối: gỗ đàn hương, quả dừa, hương vani, tuyết tùng
Nhóm hương: Phương Đông
Phong cách: Tươi vui, hạnh phúc
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Pierre Bourdon và Maurice Roger
Năm phát hành: 1994
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Dolce-Vita.jpg', CAST(N'2021-01-02' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (51, N'Dior Eau Sauvage', 9, 31, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: cây hương thảo, cây carum, các loại trái cây, cây húng quế, cam Bergamot, chanh
Hương giữa: cây rau mùi, hoa cẩm chướng, gỗ đàn hương, hoắc hương, rễ cây oris, hoa nhài, hoa hồng
Hương cuối: hổ phách, xạ hương, địa y, cỏ Vetiver Nhóm hương: Aromaric
Phong cách: Mạnh mẽ, quyến rũ
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Edmond Roudnitska
Năm phát hành: 1966
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Eau-Sauvage.jpg', CAST(N'2021-06-16' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (52, N'Dior Fahrenheit', 20, 24.7, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: hoa oải hương, quả quýt, cây táo gai, hoa nhục đậu khấu, tuyết tùng, cam Bergamot, cúc Chamomile, chanh
Hương giữa: hạt nhục đậu khấu, cây kim ngân, hoa cẩm chướng, gỗ đàn hương, lá Violet, hoa nhài, hoa linh lan, tuyết tùng
Hương cuối: da thuộc, đậu Tonka, hổ phách, hoắc hương, xạ hương, cỏ Vetiver
Nhóm hương: Gỗ, trái cây
Phong cách: Hiện đại, nồng ấm, tươi mát
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Jean-Louis Sieuzac và Maurice Roger
Năm phát hành: 1988
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Fahrenheit.jpg', CAST(N'2021-09-08' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (53, N'Dior Miss Dior EDT', 11, 24, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: tinh dầu hoa cam
Hương giữa: hoa hồng Bulgari, hoa hồng Thổ Nhĩ Kỳ
Hương cuối: cây hoắc hương
Nhóm hương: Chypre – Floral
Phong cách: lãng mạn, hiện đại, nữ tính
Dung tích: 100ml
Cách sử dụng: Xịt
Năm phát hành: 2013
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Miss-Dior-EDT-.jpg', CAST(N'2021-08-25' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (54, N'Dior Poison Girl', 13, 39.1, N'Thương hiệu: Dior
Nồng độ: Eau de Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam đắng, chanh
Hương giữa: hoa hồng Grasse, hồng Đan Mạch, hoa cam
Hương cuối: đậu Tonka, gỗ đàn hương, hương vani, hạnh nhân, nhựa cây Balsam, gỗ Nhóm hương: Oriental Vanilla
Phong cách: Nổi loạn, hiện đại, quyến rũ
Dung tích: 100ml
Cách sử dụng: Xịt
Người sáng lập: Francois Demachy
Năm phát hành: 2016
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2016/10/Poison_girl_zmcu-h9.jpg', CAST(N'2021-04-19' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (55, N'Dior Homme Parfum', 11, 43.2, N'Thương hiệu: Nước hoa Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa dành cho nam
Mùi hương đặc trưng: hoa diên vĩ Tuscany, gỗ đàn hương, da thuộc
Nhóm hương: Leather
Phong cách: Nam tính, lịch lãm, quyến rũ
Độ lưu hương: Rất lâu – Trên 12 giờ
Độ toả hương: Xa – Toả hương trong vòng bán kính 2 mét
Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông
Dung tích: 75ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy
Năm phát hành: 2014
Xuất xứ: Ý', N'https://orchard.vn/wp-content/uploads/2016/05/3348901218245_ph66-cn.jpg', CAST(N'2021-09-29' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (56, N'Dior Poison Girl EDT', 9, 38, N'Thương hiệu: Dior
Nồng độ: Eau de Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam, chanh
Hương giữa: Hoa hồng Đan Mạch, hoa hồng tháng năm, hoa nhài, hoa cam.
Hương cuối: Hương Va ni, Đậu Tonka, cashmere, hoa vòi voi, caramel. Nhóm hương: Oriental Vanilla
Phong cách: Tự do, táo bạo, gợi cảm
Độ lưu hương: Lâu – 7 giờ đến 12 giờ
Độ toả hương: Xa – Toả hương trong vòng bán kính 2 mét
Thời điểm khuyên dùng: Ngày, Đêm, Xuân, Hạ, Thu, Đông
Dung tích: 30, 50,100ml
Người sáng lập: Francois Demachy
Năm phát hành: 2017
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2017/09/Dior-Poison-Girl-1.png', CAST(N'2021-06-07' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (57, N'Dior Eau Sauvage Parfum', 5, 32, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: Cam Bergamot.
Hương giữa: Cỏ hương bài.
Hương cuối: Nhựa thơm Myrrh. Nhóm hương: Citrus Aromaric
Phong cách: Mạnh mẽ, quyến rũ
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy
Năm phát hành: 2011
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2017/07/t%E1%BA%A3i-xu%E1%BB%91ng-3.jpg', CAST(N'2021-02-15' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (58, N'Dior Pure Poison', 7, 10, N'Mùi hương đặc trưng :
Hương đầu: Quả cam, Quả quýt, Cam bergamot, Hoa nhài.
Hương giữa: Hoa cam, Hoa dành dành.
Hương cuối: Gỗ đàn hương, Tuyết tùng, Hổ phách.
Pure Poison là dòng nước hoa với phong cách lôi cuốn mới. Pure Poison mang hương hoa hiện đại với mùi hương của những khóm hoa trắng pha lẫn với mùi thơm của hổ phách tươi. Loại nước hoa này vừa tinh khiết vừa hấp dẫn, gây ấn tượng mạnh bằng hương hoa thoang thoảng và mùi thơm quyến rũ không dứt của hổ phách và xạ hương. Bạn sẽ luôn rực rỡ khi dùng Pure Poison dù đêm hay ngày.', N'https://orchard.vn/wp-content/uploads/2014/06/Dior-Pure-Poison.jpg', CAST(N'2021-06-23' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (59, N'Dior Homme Intense', 8, 12.7, N'Thương hiệu: Nước hoa Dior
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa dành cho nam
Mùi hương đặc trưng:
Hương đầu: Oải hương, quả lê.
Hương giữa: cỏ vetiver.
Hương cuối: Gỗ tuyết tùng, Đàn hương, Xạ hương trắng.
Nhóm hương: Woody Floral Musk
Phong cách: Sang trọng, Lịch lãm, Thu hút.
Độ lưu hương: Rất lâu – Trên 12 giờ
Độ toả hương: Xa – Toả hương trong vòng bán kính 2 mét
Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy
Năm phát hành: 2011
Xuất xứ: Ý', N'https://orchard.vn/wp-content/uploads/2015/04/3348900838185_47ga-tj.jpg', CAST(N'2021-04-30' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (60, N'Dior Homme Eau For Men', 14, 25.6, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: bưởi, cam bergamot, rau mùi.
Hương giữa: hoa Iris Tuscan
Hương cuối: tuyết tùng Virginin, hổ phách
Nhóm hương: Woody Aromatic
Phong cách: Cứng rắn , lịch thiệp , quyến rũ
Độ lưu hương: Lâu – 7 giờ đến 12 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thời điểm khuyên dùng: Ngày, Đêm, Xuân, Hạ, Thu
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Francois Demachy
Năm phát hành: 2014
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2015/08/3348901215930_cut_saqg-of.png', CAST(N'2021-10-24' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (61, N'Dior Fahrenheit EDT For Men', 14, 45.8, N'Thương hiệu: Dior
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương Đầu: Hoa Oải Hương, Quả quýt hồng, Hoa sơn trà, Hoa nhục đậu khấu, Gỗ tuyết tùng, Cam Bergamot, Hoa cúc La mã, Quả chanh vàng

Hương giữa: Nhục đậu khấu, Hoa kim ngân, Hoa cẩm chướng, Gỗ đàn hương, Lá hoa tím, Hoa nhài, Hoa linh lan thung lũng, Gỗ tuyết tùng

Hương cuối: Da thuộc, Đậu Tonka, Hổ phách, Cây hoắc hương, Xạ hương, Cỏ hương bài

Nhóm hương: Hương gỗ hoa cỏ xạ hương
Độ lưu hương: Lâu – 7 giờ đến 12 giờ
Độ toả hương: Xa – Toả hương trong vòng bán kính 2 mét
 

Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông
 

Phong cách: Đầy năng lượng , Gợi cảm
Cách sử dụng: Xịt
Năm phát hành: 1988
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2019/10/269128972f006628009new.jpg', CAST(N'2021-03-08' AS Date), 2)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (62, N'Gucci Guilty Pour Homme EDP', 19, 45.5, N'Mùi hương đặc trưng:
Hương Đầu: Hoa Hồng Tươi, Ớt, Giấm balsamic, Muối.
Hương Giữa: Hoa Cam, Hoa Oải Hương, Tinh dầu hoa cam.
Hương Cuối: Hoắc Hương, Tuyết Tùng.', N'https://orchard.vn/wp-content/uploads/2020/12/nuoc-hoa-nam-gucci-guilty-pour-homme-edp-orchard.vn-3.jpg', CAST(N'2022-01-10' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (63, N'Gucci Bloom Deluxe Edition EDP', 19, 20, N'Hương thơm
Hương chính: Hoa nhài Sambac, Hoa huệ trắng, Km ngân
Dòng nước hoa Gucci Bloom thuộc nhóm Floral (Hương hoa cỏ). Đây là bản mix ngọt ngào của Hoa huệ trắng và hoa nhài mà bạn có thể dễ dàng cảm nhận được nhất khi sử dụng nước hoa này.

Một mùi hương được chế tạo để tạo dấu ấn, sức sống và sự biến hoá đa dạng của phụ nữ. Gucci Bloom “đậm” hương hoa. Hương thơm toả trên da thịt khiến bạn như một vườn hoa ngát hương. Mùi hương sang trọng và tinh tế.', N'https://orchard.vn/wp-content/uploads/2021/03/gucci-bloom-deluxe-edition-orchard.vn-4.jpg', CAST(N'2021-09-20' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (64, N'Gucci Bloom Profumo Di Fiori EDP', 15, 21.2, N'Thương hiệu: Gucci
Nồng độ: EDP
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu:  Hoa nhài sambac, hoa sử quân tử

Hương giữa: Hoa huệ, hoa nhài, ngọc lan tây

Hương cuối: Hương mặt trời, rễ diên vỹ, hương gỗ, xạ hương, benzoin, gỗ đàn hương

Nhóm hương: Amber floral
Phong cách: Sang trọng, quyến rũ, nữ tính
Cách sử dụng: xịt
Năm phát hành: 2020
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2021/10/gucci-bloom-profumo-di-fiori-orchardvn-hinh2.jpg', CAST(N'2021-12-20' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (65, N'Giftset Gucci Guilty Pour Homme EDP 2pcs (90ml + 15ml)', 18, 28.1, N'Mùi hương đặc trưng:
Hương Đầu: Hoa Hồng Tươi, Ớt, Giấm balsamic, Muối.
Hương Giữa: Hoa Cam, Hoa Oải Hương, Tinh dầu hoa cam.
Hương Cuối: Hoắc Hương, Tuyết Tùng.', N'https://orchard.vn/wp-content/uploads/2022/02/Giftset_gucci_guilty_pourhomme_edp_1.jpg', CAST(N'2021-04-11' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (66, N'Gucci Cushion De Beauté Foundation', 18, 41, N'Tiếp sau thành công của dòng phấn Phủ  Poudre De Beauté Mat Naturel, thương hiệu Gucci thường thắng xông lên bằng dòng phấn nước trang điểm mịn màng, mỏng nhẹ với tên gọi Gucci Cushion De Beauté Foundation. Thiết kế vỏ hộp nữ tính với màu nude thời trang kết hợp cùng họa tiết vintage gợi nhớ đến phong cách tinh tế, thanh lịch mà vẫn vô cùng hiện đại.', N'https://orchard.vn/wp-content/uploads/2022/04/phan-nuoc-cushion-de-beaute-spf-foundation-tone-12.jpg', CAST(N'2021-05-09' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (67, N'Gucci Guilty Black Pour Femme', 13, 44.6, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: hạt tiêu hồng, quả mộng đỏ
Hương giữa: quả mâm xôi, quả đào, hoa Lily, hoa Violet
Hương cuối: hoắc hương, hổ phách
Nhóm hương: hoa cỏ và Phương Đông
Phong cách: Nữ tính, mê hoặc
Dung tích: 75ml
Cách sử dụng: dạng xịt
Năm phát hành: 2013
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Guilty-Black-Pour-Femme-_1.jpg', CAST(N'2021-10-09' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (68, N'Gucci Flora By Gucci Glamorous Magnolia', 11, 10.4, N'Thương hiệu: Gucci

Nồng độ: Eau De Toillete (EDT)

Loại nước hoa: Nữ

Mùi hương đặc trưng:

Hương đầu: hoa lan Nam Phi, cam

Hương giữa: hoa mộc lan, hoa mẫu đơn

Hương cuối: xạ hương, hương gỗ, chocolate

Nhóm hương: hoa cỏ

Phong cách: Nữ tính, quyến rũ

Dung tích: 100ml

Cách sử dụng: dạng xịt

Năm phát hành: 2012

Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Flora-By-Gucci-Glamorous-Magnolia_1_x110-pn.jpg', CAST(N'2022-01-26' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (69, N'Gucci Flora By Gucci Gorgeous Gardenia', 17, 11.1, N'Thương hiệu: Gucci

Nồng độ: Eau De Toillete (EDT)

Loại nước hoa: Nữ

Mùi hương đặc trưng:

Hương đầu: quả đào, quả mộng đỏ

Hương giữa: hoa dành dành, hoa đại

Hương cuối: hoắc hương, đường nâu

Nhóm hương: hoa cỏ

Phong cách: Nữ tính, quyến rũ

Dung tích: 100ml

Cách sử dụng: dạng xịt

Năm phát hành: 2012

Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/q_vhsw-oo.jpg', CAST(N'2021-02-22' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (70, N'Gucci Flora by Gucci Gracious Tuberose', 9, 40.9, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: quả đào, lá Violet
Hương giữa: hoa cam, hoa huệ, hoa hồng
Hương cuối: nhựa ladanum, tuyết tùng
Nhóm hương: hoa cỏ
Phong cách: Nữ tính, quyến rũ
Dung tích: 100ml
Cách sử dụng: dạng xịt
Năm phát hành: 2012
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Flora-by-Gucci-Gracious-Tuberose_1.jpg', CAST(N'2021-09-22' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (71, N'Gucci Made To Measure Pour Homme', 13, 46.2, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nam
Mùi hương đặc trưng:
Hương đầu: cam Bergamot, hoa cam, hoa oải hương, cây anit
Hương giữa: hạt nhục đậu khấu, hoa súng, quả mận, vỏ cây quế, cây bách xù
Hương cuối: nhựa hoa ladanum, hoắc hương, da thuộc, hổ phách
Nhóm hương: Phương Đông
Phong cách: Sang trọng, nam tính, mạnh mẽ
Dung tích: 90ml
Cách sử dụng: dạng xịt
Năm phát hành: 2013
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Made-To-Measure-Pour-Homme-_1.jpg', CAST(N'2021-01-01' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (72, N'Gucci Guilty Intense Pour Homme', 15, 33, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nam
Mùi hương đặc trưng:
Hương đầu: hoa oải hương, rau mùi, chanh
Hương giữa: hoa cam, dầu hoa cam
Hương cuối: hoắc hương, gỗ tuyết tùng, hổ phách
Nhóm hương: gỗ
Phong cách: Nam tính, mạnh mẽ, quyến rũ
Dung tích: 90ml
Cách sử dụng: dạng xịt
Năm phát hành: 2011
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Guilty-Intense-Pour-Homme_1.jpg', CAST(N'2021-05-19' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (73, N'Gucci By Gucci Pour Homme', 20, 18.5, N'Mùi hương đặc trưng:
Hương đầu: cam Bergamot, cây bách, hoa Violet
Hương giữa: cây thuốc lá, hoa nhài
Hương cuối: hoắc hương, nhựa hương, hổ phách, nhựa cây, da', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-By-Gucci-Pour-Homme-EDT_1_4oxe-kw.jpg', CAST(N'2021-03-30' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (74, N'Gucci By Gucci Sport Pour Homme', 16, 47.5, N'Thương hiệu: Gucci

Nồng độ: Eau De Toillete (EDT)

Loại nước hoa: Nam

Mùi hương đặc trưng:

Hương đầu: quả bưởi, quả quýt, cây bách

Hương giữa: bạch đậu khấu, quả mọng, quả sung

Hương cuối: cỏ Vetiver, hoắc hương, hạt cây vông vàng

Nhóm hương: gỗ

Phong cách: Năng động, tự nhiên, tươi mát

Dung tích: 50ml

Cách sử dụng: dạng xịt

Năm phát hành: 2010

Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-By-Gucci-Sport-Pour-Homme_1.jpg', CAST(N'2021-04-22' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (75, N'Gucci By Gucci For Women EDP', 19, 13.5, N'Thương hiệu: Gucci
Nồng độ: Eau De Perfume (EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: quả ổi, quả đào
Hương giữa: hoa Tiare
Hương cuối: hoắc hương, xạ hương, mật ong
Nhóm hương: Chypre
Phong cách: Nữ tính, hiện đại
Dung tích: 75ml
Cách sử dụng: dạng xịt
Người sáng lập: Ilias Ermenidis
Năm phát hành: 2007
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-By-Gucci-Women-EDP_1.jpg', CAST(N'2021-09-13' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (76, N'Gucci Flora By Gucci 1966', 8, 6.5, N'Thương hiệu: Gucci

Nồng độ: Eau De Perfume (EDP)

Loại nước hoa: Nữ

Mùi hương đặc trưng:

Hương đầu: cam Bergamot, hồ tiêu

Hương giữa: hoa mẫu đơn, hoa hồng

Hương cuối: hoắc hương, cỏ Vetiver, xạ hương

Nhóm hương: Chypre Floral

Phong cách: Sang trong, tinh tế, cuốn hút

Dung tích: 100ml

Cách sử dụng: Xịt

Năm phát hành: 2013

Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Flora-By-Gucci-1966_1.jpg', CAST(N'2022-01-18' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (77, N'Gucci Guilty For Women EDT', 15, 20.1, N'Nhóm hương: hoa cỏ và Phương Đông
Tầng hương:
Hương Đầu: Quả quýt hồng, Hồng tiêu, Cam BergamotHương giữa: Hoa phong lữ, Quả đào, Hoa tử đinh hương, Quả lý chua đen, Hoa nhàiHương cuối: Cây hoắc hương, Hổ phách, Hương Va ni, Xạ hương trắng', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Guilty-For-Women-EDT_1.jpg', CAST(N'2021-04-25' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (78, N'Gucci Guilty Black Pour Homme', 14, 28.9, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nam
Mùi hương đặc trưng:
Hương đầu: rau mùi xanh, hoa oải hương
Hương giữa: hoa cam, dầu hoa cam, hương xanh
Hương cuối: hoắc hương, tuyết tùng
Nhóm hương: Aromatic
Phong cách: Táo bạo, lãng mạn, nam tính
Dung tích: 90ml
Cách sử dụng: dạng xịt
Năm phát hành: 2013
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Guilty-Black-Pour-Homme_1.jpg', CAST(N'2021-08-13' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (79, N'Gucci Guilty Pour Homme ', 14, 17.5, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nam
Mùi hương đặc trưng:
Hương đầu: hoa oải hương, quả chanh
Hương giữa: hoa cam
Hương cuối: hoắc hương, gỗ tuyết tùng
Nhóm hương: gỗ
Phong cách: Nam tính, lạnh lùng, quyến rũ
Dung tích: 90ml
Cách sử dụng: dạng xịt
Năm phát hành: 2011
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Guilty-Pour-Homme_1.jpg', CAST(N'2021-09-03' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (80, N'Gucci Guilty Studs Pour Homme
', 12, 29, N'Thương hiệu: Gucci
Nồng độ: Eau De Toillete (EDT)
Loại nước hoa: Nam
Mùi hương đặc trưng:
Hương đầu: hoa oải hương, chanh
Hương giữa: hoa cam
Hương cuối: tuyết tùng, hoắc hương
Nhóm hương: Woody Aromatic
Phong cách: Nam tính, lạnh lùng, quyến rũ
Dung tích: 90ml
Cách sử dụng: dạng xịt
Năm phát hành: 2013
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Guilty-Studs-Pour-Homme-1.jpg', CAST(N'2021-07-03' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (81, N'Gucci Flora By Gucci Generous Violet', 11, 30.1, N'Thương hiệu: Gucci

Nồng độ: Eau De Toillete (EDT)

Loại nước hoa: Nữ

Mùi hương đặc trưng:

Hương đầu: lá Violet

Hương giữa: hoa irit, hoa Violet, rễ cây irit

Hương cuối: da lộn

Nhóm hương: hoa cỏ

Phong cách: Nữ tính, phong cách, táo bạo

Dung tích: 5ml

Cách sử dụng: dạng chấm

Năm phát hành: 2012

Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Flora-By-Gucci-Generous-Violet-EDT-5ML_1_lsmp-j0.jpg', CAST(N'2021-11-03' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (82, N'Gucci Première For Women EDP', 18, 28.4, N'Thương hiệu: Gucci
Nồng độ: Eau De Perfume (EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: cam Bergamot, hoa cam
Hương giữa: hoa trắng, xạ hương
Hương cuối: gỗ, da thuộc
Nhóm hương: gỗ
Phong cách: Nữ tính, quyến rũ, hấp dẫn
Dung tích: 75ml
Cách sử dụng: dạng xịt
Năm phát hành: 2012
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Premi%C3%A8re-For-Women-EDP_1.jpg', CAST(N'2021-11-18' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (83, N'Gucci Eau De Parfum II', 14, 30.8, N'Thương hiệu: Gucci
Nồng độ: Eau De Perfume (EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: quả nho rừng đen, cam mandarin, lá nho, quả dại đỏ, cam chát.
Hương giữa: hoa mẫu đơn, mâm xôi đen, hoa violet, lan Nam Phi, hoa nhài, hoa lan chuông.
Hương cuối: xạ hương, hoa vòi voi, gỗ tuyết tùng
Nhóm hương: hoa cỏ và trái cây
Phong cách: thời trang, thanh lịch, gợi cảm
Dung tích: 75ml
Cách sử dụng: dạng xịt
Người sáng lập: Antoine Maisondieu
Năm phát hành: 2004
Xuất xứ:  Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Gucci-Eau-De-Parfum-II.jpg', CAST(N'2021-01-30' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (84, N'Gucci Bamboo For Women EDP', 14, 31.6, N'Mùi hương đặc trưng:
Hương đầu: cam bergamot
Hương giữa: hoa Ylang-Ylang, Casablance lily,  hoa cam
Hương cuối: gỗ đàn hương, vani Tahitian, hổ phách', N'https://orchard.vn/wp-content/uploads/2015/08/gucci-bamboo-eau-de-parfum-23186_4w0l-rz.jpg', CAST(N'2021-01-08' AS Date), 3)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (85, N'Chanel Bleu De Chanel EDP', 18, 23.1, N'Hương thơm
Hương Đầu: Quả chanh vàng, Quả bưởi, Hồng tiêu, Cam Bergamot, Ngò thơm, Cây bạc hà, Hương An đê hít.
Hương giữa: Dưa gang, Hoa nhài, Gừng, Nhục đậu khấu.
Hương cuối: Hương Labdanum, Cây hoắc hương, Gỗ đàn hương, Gỗ tuyết tùng, Hổ phách, Nhang (Hương), Amberwood.', N'https://orchard.vn/wp-content/uploads/2015/01/Chanel-Bleu-De-Chanel-EDP-100ML_huou-il.jpg', CAST(N'2021-02-22' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (86, N'Chanel Allure Homme Sport', 11, 19.8, N'Mùi hương đặc trưng
Hương đầu: cam, quýt, mùi nước biển.
Hương giữa: hạt tiêu, tinh dầu hoa cam, tuyết tùng.
Hương cuối: đậu tonka, hổ phách, vani, cỏ vetiver, xạ hương.', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Allure-Homme-Sport-Eau-Extr%C3%AAme-_1_8rtf-q8.jpg', CAST(N'2021-12-14' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (87, N'Chanel Coco Mademoiselle EDP', 14, 43, N'Mùi hương đặc trưng :

Hương đầu: cam, quýt, hoa cam, cam bergamot
Hương giữa: hoa mimosa, hoa nhài, hoa hồng, hoa ngọc lan tây
Hương cuối: đậu tonka, cây patchouli, nhựa thơm tổng hợp, vani, cỏ vetiver, xạ hương', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Coco-Mademoiselle-EDP-1_iukh-g7.jpg', CAST(N'2021-10-22' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (88, N'Chanel Chance Eau Tendre EDP', 9, 26.2, N'Thương hiệu: Chanel
Nồng độ: Eau De Parfum
Loại nước hoa: Nữ
Các mùi hương đặc trưng:
Hương Đầu: Quả bưởi, Quả mộc qua
Hương giữa: Hoa nhài, Hoa lan dạ hương
Hương cuối: Xạ hương, Hoa diên vĩ, Gỗ tuyết tùng Virginia, Hổ phách
Nhóm hương: Hương hoa cỏ trái cây
Nhà pha chế: Jacques Polge
Độ lưu hương: Tạm ổn – 3 giờ đến 6 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thời điểm khuyên dùng: Ngày, Đêm, Xuân, Hạ
Phong cách: Nữ tính , Nhẹ nhàng , Trang nhã
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2019/02/Untitledxx.jpg', CAST(N'2021-12-31' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (89, N'Chanel Chance Eau Fraiche', 14, 48.2, N'Thương hiệu: Chanel
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: chanh, tuyết tùng
Hương giữa: hạt tiêu hồng, hoa lục bình, hoa nhài
Hương cuối: gỗ tếch, hoa iris, hổ phách, cây patchouli, cỏ vetiver, xạ hương
Nhóm hương: Chypre – Floral
Phong cách: tươi mát, tinh tế, nữ tính
Thích hợp sử dụng hàng ngày đặt biệt là vào mùa xuân
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Jacques Polge
Năm phát hành: 2007
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Chance-Eau-Fraiche-EDT-1.jpg', CAST(N'2021-01-30' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (90, N'Chanel N°1 De Chanel L’eau Rouge', 8, 10.7, N'Mùi hương đặc trưng :
Hương đầu: Cam, quả mọng đỏ
Hương giữa: Hoa hồng, hoa cam, hoa nhài
Hương cuối: Xạ hương, hoa diên vỹ', N'https://orchard.vn/wp-content/uploads/2022/04/chanel-n1-de-chanel-leau-rouge-orchardvn-hinh6.jpg', CAST(N'2021-05-20' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (91, N'Chanel N°5 EDP Holiday 2021 Limited', 20, 14.3, N'Thương hiệu: Chanel
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: aldehyde, tinh dầu hoa cam, hoa ngọc lan tây, cam bergamot, chanh
Hương giữa: hoa iris, gốc cây orris, hoa nhài, hoa chuông thung lũng, hoa hồng
Hương cuối: hổ phách, gỗ đàn hương, cây patchouli, xạ hương, cầy hương, vani, rêu biển, cỏ vetiver
Nhóm hương: Chypre
Phong cách: sang trọng, quyến rũ, cuốn hút
Dung tích: 100ml
Cách sử dụng: Xịt
Thích hợp sử dụng vào buổi tối, đi dự tiệc
Tên người sáng lập: Jacques Polge
Năm phát hành: 2021
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2021/11/n-5-eau-de-parfum-spray-collector-s-edition-3-4fl-oz-packshot-default-125547-8842573512734.jpeg', CAST(N'2021-09-30' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (92, N'Chanel Coco Noir', 10, 43.4, N'Mùi hương chính:
Hương đầu: bưởi chùm, cam Bergamot, trái cam.
Hương giữa: hoa nhài, hoa hồng, hoa thủy tiên, hoa phong lữ. đào.
Hương cuối: đậu tonka, hoắc hương, gỗ đàn hương, hương vani, xạ hương, huong trầm, nhựa hương, đinh hương.', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Coco-Noir-EDP-1_ir2t-rh.jpg', CAST(N'2021-09-09' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (93, N'Chanel No5 EDP', 18, 46.8, N'Mùi hương đặc trưng
Hương đầu: aldehyt, tinh dầu hoa cam, hoa ngọc lan tây, cam bergamot, chanh.
Hương giữa: hoa iris, gốc cây orris, hoa nhài, hoa chuông thung lũng, hoa hồng.
Hương cuối: hổ phách, gỗ đàn hương, cây patchouli, xạ hương, cầy hương, vani, rêu biển, cỏ vetiver.', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-N%C2%B05-EDP_1_7qmx-qe.jpg', CAST(N'2021-12-15' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (94, N'Chanel Platinum Égoïste Pour Homme', 6, 23.9, N'Thương hiệu: Chanel
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng
Hương đầu: hoa hương thảo, hoa oải hương, dầu hoa cam, tinh dầu lá chanh
Hương giữa: galbanum, cây xô thơm, hoa nhài, hoa phong lữ
Hương cuối: hổ phách, gỗ đàn hương, địa y, cỏ vetiver, tuyết tùng
Nhóm hương: gỗ
Phong cách: Sinh động, nam tính, mạnh mẽ
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Jacques Polge
Năm phát hành:1993
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Platinum-%C3%89go%C3%AFste-Pour-Homme_1_gp0m-y8.jpg', CAST(N'2022-01-18' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (95, N'Chanel Allure Sensuelle', 9, 34.1, N'Thương hiệu: Chanel
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: hoắc hương, quả quýt, quả đào, cam bergamot
Hương giữa: hoa iris, hổ tiêu hồng, hoa nhài, hoa hồng Thổ Nhĩ Kỳ, hoa hồng Bungari
Hương cuối: nhựa labdanum, gia vị, gỗ đàn hương, hoa oải hương, hương vani, cỏ Vetiver
Nhóm hương: Oriental Floral
Phong cách: Gợi cảm, sang trọng
Dung tích: 35ml
Cách sử dụng: Xịt
Tên người sáng lập: Jacques Polge
Năm phát hành: 2006
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Allure-Sensuelle_1.jpg', CAST(N'2021-05-02' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (96, N'Chanel Chance EDP', 17, 18.3, N'Mùi hương đặc trưng:
Hương đầu: trái thơm, hoa iris, cây patchouli, hạt tiêu hồng, hoa dạ lan
Hương giữa: hoa nhài,  trái chanh
Hương cuối: xạ hương, cây patchouli, vani, cỏ vetiver', N'https://orchard.vn/wp-content/uploads/2014/06/Chanel-Chance-EDP-_1_6nk0-i9.jpg', CAST(N'2021-01-17' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (98, N'Chanel Chance Eau Vive EDT', 13, 21.7, N'Thương hiệu: Chanel
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam máu, bưởi, cam chanh.
Hương giữa: hoa nhài,  xạ hương trắng.
Hương cuối: cỏ vetiver, tuyết tùng, hoa iris.
Nhóm hương: Floral Woody Musk
Phong cách: Thanh lịch, trẻ trung, nhẹ nhàng.
Dung tích: 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Polge
Năm phát hành: 12/6/2015
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2015/08/S126560_XLARGE_7ads-m6.jpg', CAST(N'2021-08-15' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (99, N'Chanel N°5 L’Eau', 20, 24.7, N'Thương hiệu: Chanel
Nồng độ: Eau de Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: chanh, quýt, tinh dầu hoa cam, aldehyt, cam bergamot, 
Hương giữa: hoa hồng, hoa nhài, hoa ngọc lan tây
Hương cuối: tuyết tùng, xạ hương, vani, rễ diên vĩ Nhóm hương: Floral Aldehyde
Phong cách: Trẻ trung, tươi sáng, cuốn hút
Dung tích: 50ml, 100ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Polge
Năm phát hành: 2016
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2016/10/Untitled-1-3.jpg', CAST(N'2021-10-07' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (100, N'Chanel Coco Mademoiselle Intense EDP', 13, 35.8, N'Nhóm hương: Oriental Woody
Mùi hương đặc trưng
Hương đầu: cam Silica, cam bergamot, chanh.
Hương giữa: hoa hồng, hoa nhài, hỗn hợp trái cây.
Hương cuối: hoắc hương, đậu tonka, vani, labbanum, xạ hương', N'https://orchard.vn/wp-content/uploads/2018/03/coco-mademoiselle-intense-chanel.jpg', CAST(N'2021-05-02' AS Date), 4)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (102, N'Hermes Terre D’hermes Pure Parfum', 16, 15.7, N'Mùi hương đặc trưng
Hương đầu: Trái cam, Trái bưởi
Hương giữa: Đá lửa (Flint).
Hương cuối: Gỗ, Rêu sồi, An tức hương.', N'https://orchard.vn/wp-content/uploads/2020/04/terre-dhermes-parfum-orchard.vn3_.jpg', CAST(N'2022-11-10' AS Date), 5)
GO
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (104, N'Hermes Twilly D’Hermes Eau Poivreé EDP', 38, 43.3, N'Hương Thơm
Hương Đầu: Hồng tiêu
Hương giữa: Hoa hồng
Hương cuối: hoắc hương', N'https://orchard.vn/wp-content/uploads/2021/06/HERMES-Twilly-dHermes-Eau-Poivree-orchardvn-anh6.jpg', CAST(N'2022-06-14' AS Date), 5)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (105, N'Hermes Terre D’Hermes', 23, 27.8, N'Hương thơm
Hương Đầu: Quả cam, Quả bưởi
Hương giữa: Tiêu, Thiên trúc quỳ
Hương cuối: Cây hoắc hương, Gỗ tuyết tùng, Cỏ hương bài, An tức hương', N'https://orchard.vn/wp-content/uploads/2014/06/Hermes-Terre-DHermes_1.jpg', CAST(N'2021-10-17' AS Date), 5)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (106, N'Hermes Kelly Caleche For Women', 32, 72.4, N'Thương hiệu: Hermes
Nồng độ: Eau De Toilette(EDT)
Loại nước hoa: nữ
Mùi hương đặc trưng
Hương đầu: hoa linh lan, hoa thủy tiên, bưởi chùm
Hương giữa: hoa huệ, hoa hồng, hoa Mimosa
Hương cuối: da thuộc, hoa Iris
Nhóm hương: Hoa cỏ
Phong cách: Tự tin, gợi cảm, nữ tính
Dung tích: 15ml
Cách sử dụng: Chấm
Người sáng lập: Jean-Claude Ellena
Năm phát hành: 2007
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2014/06/Hermes-Kelly-Caleche-15ml_1_852q-mz.jpg', CAST(N'2022-08-11' AS Date), 5)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (107, N'Hermes Jour d’Hermes For Women', 30, 62, N'Thương hiệu: Nước hoa Hermes
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa dành cho nữ
Mùi hương đặc trưng
Hương đầu: bưởi chùm, chanh, hương nước biển
Hương giữa: hoa dành dành, hoa đậu hà lan, hương xanh, hoa trắng
Hương cuối: xạ hương, hương gỗ
Nhóm hương: Floral
Phong cách: Nhẹ nhàng, thanh lịch
Dung tích: 85ml
Cách sử dụng: Xịt
Người sáng lập: Jean Claude Ellena
Năm phát hành: 2013
Xuất xứ: Pháp', N'http://dummyimage.com/136x230.png/5fa2dd/ffffff', CAST(N'2022-11-16' AS Date), 5)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (108, N'Hermes 24 Faubourg EDT', 29, 67.6, N'Thương hiệu: Hermes
Nồng độ: Eau De Toilette(EDT)
Loại nước hoa: nữ
Mùi hương đặc trưng
Hương đầu: cam, đào, dạ hương lan, ngọc lan tây, cam Bergamot
Hương giữa: hoa iris, hoa diên vĩ, hoa cam, cây sơn chi, hoa nhài.
Hương cuối: đàn hương, hổ phách, hoắc hương, vani.
Nhóm hương: Chypre Floral
Phong cách: Duyên dáng, thanh lịch
Dung tích: 100ml
Cách sử dụng: xịt
Người sáng lập: Maurice Roucel 
Năm phát hành: 1995
Xuất xứ: Pháp', N'https://orchard.vn/wp-content/uploads/2015/08/Hermes-24_Faubourg_chf7-5f.jpg', CAST(N'2022-06-06' AS Date), 5)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (110, N'Hermès Eau Des Merveilles Bleue', 19, 81.3, N'Thương hiệu: Hermes
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nữ
Mùi hương đặc trưng: Hoắc hương, note gỗ, note hương biển Nhóm hương: Aromatic Aquatic
Phong cách: vui tươi, thể thao, quyến rũ
Dung tích: 100ml
Người sáng lập: Christine Nagel
Năm phát hành: 2016
Xuất xứ: Pháp', N'http://dummyimage.com/176x155.png/cc0000/ffffff', CAST(N'2022-01-29' AS Date), 5)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (111, N'Versace Bright Crystal EDT', 49, 14.2, N'Mùi hương đặc trưng:
Hương đầu: Cam Yuzu, lựu
Hương giữa: Hoa sen, hoa mộc lan, hoa mẫu đơn
Hương cuối: Xạ hương, cây dái ngựa, hổ phách', N'https://orchard.vn/wp-content/uploads/2014/06/Versace-Bright-Crystal-EDT-1a.jpg', CAST(N'2021-11-05' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (113, N'Versace Eros For Men EDT', 48, 73.9, N'Mùi hương
3 tầng hương:

Hương đầu: bạc hà, táo xanh, chanh.
Hương giữa: đậu Tonka, hoa phong lữ, Ambroxan.
Hương cuối: hương vani, cỏ Vetiver, địa y, tuyết tùng.', N'https://orchard.vn/wp-content/uploads/2014/06/Versace-Eros-For-Men_1.jpg', CAST(N'2021-12-22' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (115, N'Versace Bright Crystal Absolu', 33, 82.2, N'Mùi hương đặc trưng:
Hương đầu: Cam, lựu
Hương giữa: Hoa sen, hoa mẫu đơn, dâu, hoa mộc lan
Hương cuối: Xạ hương, gỗ gụ, hổ phách', N'https://orchard.vn/wp-content/uploads/2014/11/Versace-Bright-Crystal-Absolu_1.jpg', CAST(N'2022-01-19' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (117, N'Versace Crystal Noir', 18, 37.8, N'Hương thơm
Mùi hương đặc trưng:
Hương đầu: Gừng, hạt bạch đậu khấu, hồ tiêu
Hương giữa: Hoa cam, hoa dành dành, hoa mẫu đơn, dầu dừa
Hương cuối: Xạ hương, hương gỗ, hổ phách', N'https://orchard.vn/wp-content/uploads/2014/06/Versace-Crystal-Noir-EDT_1.jpg', CAST(N'2022-06-16' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (118, N'Versace Versus', 17, 35.9, N'Thương hiệu: Versace
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa: nữ
Mùi hương đặc trưng:
Hương đầu: Chanh Amalfi, quất, táo sao
Hương giữa: Hoa cam Châu Phi, hoa hồng, hoa Stephanotis
Hương cuối: Xạ hương, cây hoắc hương, Ambrette
Nhóm hương: Floral, fruity, woody
Phong cách: Quyến rũ, nữ tính
Dung tích: 100ml
Cách sử dụng: Xịt
Năm phát hành: 2010
Xuất xứ: Ý', N'https://orchard.vn/wp-content/uploads/2014/06/Versace-Versus_1_b1lg-nn.jpg', CAST(N'2022-01-23' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (120, N'Versace Man Eau Fraiche', 44, 38.1, N'Mùi hương đặc trưng:
Hương đầu: Chanh trắng, gỗ hồng mộc, khế
Hương giữa: Cây ngải giấm, hoa Clary Sage, lá tuyết tùng
Hương cuối: Xạ hương, hổ phách, gỗ sung, gỗ thơm', N'https://orchard.vn/wp-content/uploads/2014/06/Versace-Man-Eau-Fraiche-EDT_1.jpg', CAST(N'2022-11-10' AS Date), 6)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (121, N'Tom Ford Black Orchid', 15, 41.1, N'Thương hiệu: Tom Ford
Nồng độ: Eau De Parfum (EDP)
Mùi hương đặc trưng:
Hương đầu: hoa nhài, hoa dành dành, hoa ngọc lan tây, cam Bergamot, quả chanh, quả quýt, nho đen Hy Lạp, nấm truýp
Hương giữa: gia vị, hương trái cây, hoa sen, hoa phong lan
Hương cuối: cỏ Vetiver, gỗ đàn hương, hoắc hương, hổ phách, hương trầm, hương vani, Sôcôla Mexicô Nhóm hương: Oriental Floral
Phong cách: Sang trọng, gợi cảm, huyền bí
Dung tích: 100ml
Cách sử dụng: Dạng xịt
Người sáng lập: Givaudan
Năm phát hành: 2006
Xuất xứ: Mỹ ', N'https://orchard.vn/wp-content/uploads/2014/12/Tom-Ford-Black-Orchid-EDP-100ML_6od6-3g.jpg', CAST(N'2021-09-10' AS Date), 7)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (122, N'Tom Ford Sahara Noir', 28, 44.8, N'Thương hiệu: Tom Ford

Nồng độ: Eau De Perfume (EDP)

Loại nước hoa: Nữ

Mùi hương đặc trưng:

Hương đầu: cam đắng, cây mây, cây trắc bá, hoa labdanum.

Hương giữa: hoa nhài Ai Cập, hoa hồng Morocan, trần hương, quế, cây chì thảo, sáp ong.

Hương cuối: hoa labdanum, nhựa cánh kiến, vani, tuyết tùng, hổ phách, kỳ nam, linh sam

Nhóm hương: Oriental Floral

Phong cách: tinh tế, đam mê

Dung tích: 50ml

Cách sử dụng: dạng xịt

Năm phát hành: 2013

Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2015/04/2234817_fpx.jpg', CAST(N'2022-02-13' AS Date), 7)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (124, N'Tom Ford White Patchouli For Women', 16, 65.6, N'Thương hiệu: Tom Ford
Nồng độ: Eau De Perfume (EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: cam bergamot, rau mùi, hoa mẫu đơn, hoa trắng
Hương giữa: hoa nhài, hoa hồng, hạt xạ hương
Hương cuối: hoắc hương, trầm hương, gỗ.
Nhóm hương: Chypre Floral
Phong cách: Quyến rũ, huyền bí, gợi cảm
Dung tích: 100ml
Cách sử dụng: dạng xịt
Người sáng lập: Givaudan
Năm phát hành: 9/2008
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2015/09/888066002523_ckfw-5i.jpg', CAST(N'2022-06-08' AS Date), 7)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (126, N'Tom Ford Noir Anthracite For Men', 16, 67.3, N'Thương hiệu: Tom Ford
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa: Nam
Mùi hương đặc trưng:
Hương đầu: cam Bergamot, hồ tiêu, gừng
Hương giữa: gia vị thơm, các note hương hoa
Hương cuối: gỗ đàn hương, gỗ tuyết tùng, gỗ mun Nhóm hương: Chypre
Phong cách: Hiện đại, nam tính, quyến rũ
Dung tích: 100ml
Cách sử dụng: dạng xịt
Năm phát hành: 2017
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2017/11/o.56189.jpg', CAST(N'2022-01-15' AS Date), 7)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (127, N'Tom Ford Lost Cherry', 50, 98.8, N'Thương hiệu: Tom Ford
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa: Unisex
Mùi hương đặc trưng:
Hương đầu: quả anh đào chua, rượu đỏ, hạnh nhân
Hương giữa: quả anh đào chua, hoa hồng, hoa nhài, mận
Hương cuối: nhựa thơm balsam, đậu tonka, gỗ đàn hương, gỗ tuyết tung, cỏ hương bài, đinh hương, hoắc hương, vani, quế
Nhóm hương: Oriental Floral
Phong cách: Say Mê, Nồng Ấm, Quyến Rũ
Dung tích: 50ml
Cách sử dụng: Dạng xịt
Độ lưu hương: rất tốt, 8-10h
Độ toả hương: toả hương gần trong 1 cánh tay
Thời gian sử dụng khuyên dùng: ban đêm, mùa Thu Đông
Năm phát hành: 2018
 ', N'https://orchard.vn/wp-content/uploads/2018/12/Tom-Ford-Lost-Cherry1.jpg', CAST(N'2021-10-25' AS Date), 7)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (128, N'My Burberry EDP', 46, 44.5, N'Mùi hương đặc trưng
Hương đầu: đậu ngọt, cam bergamot, cam mandarin, bưởi, chanh.
Hương giữa: cây phong lữ, lan Nam Phi, mộc qua vàng, chanh dây, cây sơn chi, đào.
Hương cuối: hoắc hương, hoa hồng Damask, hoa hồng, da, hoa violet.', N'https://orchard.vn/wp-content/uploads/2015/07/Burberry-My-Burberry-2014-EDP-90ml_boxm-b9.jpg', CAST(N'2022-06-19' AS Date), 8)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (131, N'Burberry Brit For Men', 40, 52.8, N'Thương hiệu: BuberryNồng độ: Eau De Toilette (EDT)Loại nước hoa namMùi hương đặc trưngHương đầu: quýt, gừng, cam bergamot, thảo quảHương giữa: hạt đậu khấu, tuyết tùng, hoa hồng,Hương cuối: đậu tonka, cây patchouli, hương gỗ, tuyết tùng, xạ hương Nhóm hương: OrientalPhong cách: trẻ trung, quyến rũ, hiện đạiĐộ lưu hương: Tạm ổn – 3 giờ đến 6 giờĐộ toả hương: Gần – Toả hương trong vòng một cánh tayThời điểm khuyên dùng: Ngày, Đêm, Thu, ĐôngDung tích: 100mlCách sử dụng: XịtTên người sáng lập: Antoine MaisondieuNăm phát hành: 2004Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2014/06/c288ee9b-df40-46e0-ad9b-0c97407b77e5.jpg', CAST(N'2021-07-11' AS Date), 1)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (133, N'Burberry Summer For Men 2013', 20, 81.4, N'Thương hiệu: Burberry

Nồng độ: Eau De Toilette (EDT)

Loại nước hoa nam

Mùi hương đặc trưng

Hương đầu: cây cối, lá bạc hà, quả quýt, cam Yuzu, tinh dầu lá chanh

Hương giữa: cỏ xạ hương, gỗ trôi giạt, cây kim tước

Hương cuối: xạ hương, hoa Amyris, tuyết tùng, hổ phách

Nhóm hương: Gỗ
Phong cách: Tươi mát, năng động

Dung tích: 100ml

Cách sử dụng: Xịt

Năm phát hành: 2013

Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2014/06/Burberry-Summer-For-Men-2013-100ml_1_joc1-29.jpg', CAST(N'2022-06-26' AS Date), 8)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (135, N'Burberry Hero For Men', 16, 58.7, N'Mùi hương đặc trưng
Hương Đầu: Cam Bergamot
Hương giữa: Hạt tiêu đen, bách xù
Hương cuối: Gỗ tuyết tùng Himalayan, Gỗ tuyết tùng Atlas, gỗ tuyết tùng Virginia', N'https://orchard.vn/wp-content/uploads/2022/04/burberry-hero-orchardvn-hinh2.jpg', CAST(N'2022-03-04' AS Date), 8)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (137, N'Victoria’s Secret Hardcore Rose EDP', 22, 83.6, N'Thương hiệu: Victoria’s Secret
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng: Hoa hồng đen, Hổ phách thô,…
Nhóm hương: Hương Hoa Cỏ – Trái Cây
Phong cách: Tinh Khiết và Ấm Áp
Cách sử dụng: Xịt
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2019/10/Untitled-1.jpg', CAST(N'2021-10-04' AS Date), 9)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (139, N'Victoria’s Secret Very Sexy Sea EDP', 45, 78.1, N'Mùi hương đặc trưng:
Hương đầu : Hương thơm của cam Bergamot.
Hương giữa: Hương Hoa Cam.
Hương cuối: Hương thơm của gỗ Tuyết tùng.', N'https://orchard.vn/wp-content/uploads/2020/03/victorias-secret-very-sexy-sea-edp-orchard.vn3_.jpg', CAST(N'2022-06-04' AS Date), 9)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (141, N'Victoria’s Secret Bombshell Forever', 28, 55.6, N'Thương hiệu: Victoria’s Secret
Nồng độ: Eau De Perfume(EDP)
Loại nước hoa: Nữ
Mùi hương đặc trưng:
Hương đầu: quả mâm xôi
Hương giữa: hoa oải hương
Hương cuối: hương gỗ
Nhóm hương: Floral Fruity
Phong cách: Nồng nàn, quyến rũ
Dung tích: 50ml, 100ml
Cách sử dụng: Xịt
Năm phát hành: 2013
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2014/12/Victorias-Secret-Bombshell-Forever_vs77-wx.jpg', CAST(N'2022-01-13' AS Date), 9)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (143, N'Victoria’s Secret Victoria EDP', 10, 99.7, N'Thương hiệu: Victoria’s Secret
Nồng độ: Eau De Perfume (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng: quả mọng đỏ, hoa hồng, Creme Brulee Nhóm hương: Floral Fruity Gourmand
Phong cách: Ngọt ngào, trẻ trung, quyến rũ
Dung tích: 25ml
Cách sử dụng: Xịt
Xuất xứ: Mỹ', N'https://orchard.vn/wp-content/uploads/2014/06/IMG_2318_copy.jpg', CAST(N'2022-06-08' AS Date), 9)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (146, N'Dolce & Gabbana Light Blue Eau Intense EDP For Women', 36, 17.9, N'Thương hiệu: Dolce & Gabbana
Nồng độ: EDP
Loại nước hoa nữ
Mùi hương đặc trưng
Hương Đầu: Quả chanh vàng, Quả táo Granny Smith

Hương giữa: Hoa cúc kim tiền, Hoa nhài

Hương cuối: Amberwood, Xạ hương

Nhóm hương: Hương hoa cỏ trái cây
Phong cách: Tươi mới, sảng khoái.
Nhà pha chế: Olivier Cresp
Độ lưu hương: Lâu – 7 giờ đến 12 giờ
Độ toả hương: Gần – Toả hương trong vòng một cánh tay
Thời điểm khuyên dùng: Ngày, Đêm, Xuân, Hạ
Dung tích: 100ml
Cách sử dụng: Xịt
Năm phát hành: 
Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2019/07/dg2.png', CAST(N'2022-05-24' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (147, N'D&G The One For Men Intense EDP', 45, 87.5, N'Mùi hương chính
Hương đầu: Hoa cam, Cây bách, Thảo quả.
Hương giữa: Gỗ, Hoa cam, An tức hương, Hương Benzoin.
Hương cuối: Hoa cam, Da thuộc , Hoắc hương, Hương Labdanum.', N'https://orchard.vn/wp-content/uploads/2021/05/dg-the-one-for-men-intense-orchard.vn_.jpg', CAST(N'2022-10-10' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (148, N'Dolce & Gabbana Pour Homme', 42, 81.5, N'Thương hiệu: Dolce & Gabbana
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa nam
Mùi hương đặc trưng 
Hương đầu: cam bergamot, hoa cam, tinh dầu cam chanh, quýt
Hương giữa: hoa oải hương, cây xô thơm, hạt tiêu
Hương cuối: đậu tonka, tuyết tùng, thuốc lá
Nhóm hương: Citrus
Phong cách: tươi mát, nam tính, năng động
Thích hợp sử dụng hàng ngày
Dung tích: 4.5ml
Cách sử dụng: Chấm
Tên người sáng lập: Olivier Cresp
Năm phát hành: 1994
Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2014/06/Dolce-Gabbana-Pour-Homme_1.jpg', CAST(N'2022-10-08' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (149, N'Dolce & Gabbana The One Lace Edition', 20, 31.7, N'Thương hiệu: Dolce & Gabbana
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam bergamot, quýt, đào, trái vải
Hương giữa: hoa nhài, hoa lan chuông, hoa Lily
Hương cuối: cỏ vetiver, xạ hương, hổ phách, vani, mận
Nhóm hương: Fruity
Phong cách: nữ tính, gợi cảm, trẻ trung
Thích hợp sử dụng vào ban đêm
Dung tích: 50ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Cresp
Năm phát hành: 2011
Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2014/06/Dolce-Gabbana-The-One-Lace-Edition_1.jpg', CAST(N'2022-04-12' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (152, N'Dolce & Gabbana Light Blue Living Stromboli', 6, 55, N'Thương hiệu: Nước hoa Dolce & Gabbana 
Nồng độ: Eau De Toilette (EDT)
Loại nước hoa dành cho nam
Mùi hương đặc trưng 
Hương đầu: tinh dầu cam chanh, hạt tiêu hồng
Hương giữa: hương nước biển, cây phong lữ
Hương cuối: cỏ vetiver, cây patchouli, hổ phách
Nhóm hương: Citrus
Phong cách: tươi mát, nam tính, mạnh mẽ
Thích hợp sử dụng hàng ngày vào mùa hè
Dung tích: 40ml và 125ml
Cách sử dụng: Xịt
Tên người sáng lập: Olivier Cresp
Năm phát hành: 2012
Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2014/06/Dolce-Gabbana-Light-Blue-Living-Stromboli_1.jpg', CAST(N'2021-07-18' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (154, N'Dolce & Gabbana The One Desire', 19, 39.6, N'Thương hiệu: Dolce & Gabbana
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa nữ
Mùi hương đặc trưng
Hương đầu: cam Bergamot, quả quýt, quả vải, hoa linh lan
Hương giữa: hoa huệ
Hương cuối: gỗ đàn hương, hương vani, đường caramel, hổ phách
Nhóm hương: Phương Đông
Phong cách: Độc đáo, gợi cảm
Dung tích: 75ml
Cách sử dụng: Xịt
Tên người sáng lập: Givaudan
Năm phát hành: 2013
Xuất xứ: Anh', N'https://orchard.vn/wp-content/uploads/2014/06/Dolce-Gabbana-The-One-Desire-EDP_1_io75-zi.jpg', CAST(N'2022-05-08' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (155, N'Dolce & Gabbana Intense Pour Femme', 9, 17.4, N'Thương hiệu: Nước hoa Dolce & Gabbana
Nồng độ: Eau De Parfum (EDP)
Loại nước hoa dành cho nữ
Mùi hương đặc trưng:
Hương đầu: quả quýt, dầu hoa cam
Hương giữa: hoa huệ, hoa cam
Hương cuối: gỗ đàn hương, kẹo dẻo
Nhóm hương: Oriental Floral
Phong cách: Sang trọng, quyến rũ
Dung tích: 100ml
Cách sử dụng: dạng xịt
Năm phát hành: 2013
Xuất xứ:  Ý', N'https://orchard.vn/wp-content/uploads/2014/11/Dolce-Gabbana-Intense-Pour-Femme_1_6owp-je.jpg', CAST(N'2022-06-11' AS Date), 10)
INSERT [dbo].[Product_HE151027] ([id], [name], [quantity], [price], [description], [imageUrl], [created_date], [CategoryId]) VALUES (200, N'ABC', 5, 50, N'thom', N'', CAST(N'2022-07-12' AS Date), 8)
GO
SET IDENTITY_INSERT [dbo].[Shipping_HE151027] ON 

INSERT [dbo].[Shipping_HE151027] ([id], [name], [phone], [address]) VALUES (1, N'Tran Van Tuan', N'0123456789', N'Ha Noi')
INSERT [dbo].[Shipping_HE151027] ([id], [name], [phone], [address]) VALUES (2, N'Tran Van Tuan', N'0123456789', N'Ha Noi')
INSERT [dbo].[Shipping_HE151027] ([id], [name], [phone], [address]) VALUES (3, N'Tran Van Tuan', N'0123456789', N'Ha Noi')
INSERT [dbo].[Shipping_HE151027] ([id], [name], [phone], [address]) VALUES (4, N'ABC', N'0123456789', N'Ha Noi')
INSERT [dbo].[Shipping_HE151027] ([id], [name], [phone], [address]) VALUES (5, N'u1', N'0123456789', N'Ha Noi')
SET IDENTITY_INSERT [dbo].[Shipping_HE151027] OFF
GO
ALTER TABLE [dbo].[Orders_HE151027] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[OrderDetail_HE151027]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders_HE151027] ([id])
GO
ALTER TABLE [dbo].[OrderDetail_HE151027] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[Orders_HE151027]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Account] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account_HE151027] ([id])
GO
ALTER TABLE [dbo].[Orders_HE151027] CHECK CONSTRAINT [FK_Orders_Account]
GO
ALTER TABLE [dbo].[Orders_HE151027]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping_HE151027] ([id])
GO
ALTER TABLE [dbo].[Orders_HE151027] CHECK CONSTRAINT [FK_Orders_Shipping]
GO
ALTER TABLE [dbo].[Product_HE151027]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category_HE151027] ([id])
GO
ALTER TABLE [dbo].[Product_HE151027] CHECK CONSTRAINT [FK_Product_Category]
GO
