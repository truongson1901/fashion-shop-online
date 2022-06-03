USE [master]
GO
/****** Object:  Database [Fashion_Shop_Online]    Script Date: 6/3/2022 4:46:41 PM ******/
CREATE DATABASE [Fashion_Shop_Online]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fashion_Shop_Online', FILENAME = N'D:\Fashion_Shop_Online.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Fashion_Shop_Online_log', FILENAME = N'D:\Fashion_Shop_Online_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Fashion_Shop_Online] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fashion_Shop_Online].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fashion_Shop_Online] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Fashion_Shop_Online] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fashion_Shop_Online] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fashion_Shop_Online] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Fashion_Shop_Online] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fashion_Shop_Online] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Fashion_Shop_Online] SET  MULTI_USER 
GO
ALTER DATABASE [Fashion_Shop_Online] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fashion_Shop_Online] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fashion_Shop_Online] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fashion_Shop_Online] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Fashion_Shop_Online] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Fashion_Shop_Online] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Fashion_Shop_Online] SET QUERY_STORE = OFF
GO
USE [Fashion_Shop_Online]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[author_id] [int] NULL,
	[updated_date] [date] NULL,
	[content] [nvarchar](max) NULL,
	[thumbnail] [text] NULL,
	[brief_infor] [nvarchar](255) NULL,
	[categoryBlog_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category_Blog]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_Blog](
	[categoryBlog_id] [int] IDENTITY(1,1) NOT NULL,
	[categoryBlog_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryBlog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedBack_id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[rated_star] [float] NULL,
	[feedback] [nvarchar](max) NULL,
	[image_status] [varbinary](max) NULL,
	[status] [bit] NULL,
	[product_id] [int] NULL,
	[userId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedBack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[orderDate] [date] NULL,
	[total_cost] [float] NULL,
	[fullName] [nvarchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[address] [nvarchar](255) NULL,
	[status_order] [varchar](20) NULL,
	[userId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[orderDetail_id] [int] IDENTITY(1,1) NOT NULL,
	[prices] [float] NULL,
	[quantity] [int] NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](255) NULL,
	[original_prices] [float] NULL,
	[sale_prices] [float] NULL,
	[product_details] [nvarchar](max) NULL,
	[brief_infor] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[quantity] [int] NULL,
	[category_id] [int] NULL,
	[update_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Color]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Color](
	[color] [varchar](20) NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[size] [varchar](20) NULL,
	[product_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Images]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Images](
	[products_images_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[images] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[products_images_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [nvarchar](50) NULL,
	[slider_image] [varchar](max) NULL,
	[backlink] [varchar](max) NULL,
	[note] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[updated_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Update_Customer]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Update_Customer](
	[updateCustomer_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[fullName] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[mobile] [varchar](50) NULL,
	[address] [nvarchar](255) NULL,
	[update_date] [date] NULL,
	[update_by] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[updateCustomer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/3/2022 4:46:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[avatar] [varchar](max) NULL,
	[gender] [bit] NULL,
	[email] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
	[address] [nvarchar](255) NULL,
	[status] [bit] NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([blog_id], [title], [author_id], [updated_date], [content], [thumbnail], [brief_infor], [categoryBlog_id]) VALUES (1, N'Coolmate’s CLEAN DENIM', NULL, NULL, NULL, N'images/blog/1.png', N'Chiếc quần Jeans này chính là sản phẩm đầu tiên Coolmate theo hướng Thời trang bền vững, từ nguồn gốc sợi Regenarative Cotton', NULL)
INSERT [dbo].[Blog] ([blog_id], [title], [author_id], [updated_date], [content], [thumbnail], [brief_infor], [categoryBlog_id]) VALUES (2, N'Dòng sản phẩm công nghệ EXCOOL', NULL, NULL, NULL, N'images/blog/2.png', N'Excool là dòng sản phẩm công nghệ mới với mục tiêu đem tới các sản phẩm đa tính năng như nhẹ, bền, dễ chăm sóc, không nhăn cùng nhiều tính năng vượt trội khác.', NULL)
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Áo')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'Quần')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Quần Lót')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Phụ Kiện')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (1, NULL, 5, N'good', NULL, 1, 29, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (2, NULL, 4, NULL, NULL, 1, 29, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (3, NULL, 3, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (4, NULL, 4, NULL, NULL, 1, 1, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (5, NULL, 4, NULL, NULL, 1, 2, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (6, NULL, 5, NULL, NULL, 1, 3, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (7, NULL, 3, NULL, NULL, 1, 4, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (8, NULL, 4, NULL, NULL, 1, 4, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (9, NULL, 5, NULL, NULL, 1, 5, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (10, NULL, 4, NULL, NULL, 1, 6, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (11, NULL, 3, NULL, NULL, 1, 7, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (12, NULL, 4, NULL, NULL, 1, 8, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (13, NULL, 5, NULL, NULL, 1, 9, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (14, NULL, 4, NULL, NULL, 1, 10, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (15, NULL, 3, NULL, NULL, 1, 11, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (16, NULL, 3, NULL, NULL, 1, 12, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (17, NULL, 4, NULL, NULL, 1, 13, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (18, NULL, 5, NULL, NULL, 1, 14, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (19, NULL, 4, NULL, NULL, 1, 15, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (20, NULL, 4, NULL, NULL, 1, 16, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (21, NULL, 3, NULL, NULL, 1, 17, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (22, NULL, 4, NULL, NULL, 1, 18, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (23, NULL, 5, NULL, NULL, 1, 19, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (24, NULL, 4, NULL, NULL, 1, 20, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (25, NULL, 3, NULL, NULL, 1, 21, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (26, NULL, 5, NULL, NULL, 1, 22, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (27, NULL, 4, NULL, NULL, 1, 23, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (28, NULL, 3, NULL, NULL, 1, 24, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (29, NULL, 4, NULL, NULL, 1, 25, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (30, NULL, 3, NULL, NULL, 1, 26, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (31, NULL, 4, NULL, NULL, 1, 27, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (32, NULL, 5, NULL, NULL, 1, 28, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (33, NULL, 4, NULL, NULL, 1, 29, 1)
INSERT [dbo].[Feedback] ([feedBack_id], [fullName], [rated_star], [feedback], [image_status], [status], [product_id], [userId]) VALUES (34, NULL, NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (1, N'Áo thun nam Daily Tee thoáng khí, nhuộm sạch Cleandye', 199000, NULL, N'Coolmate đã cho ra mắt sản phẩm Áo thun nam thoáng khí ứng dụng công nghệ CleanDye - chiếc áo đầu tiên tại Coolmate ứng dụng Công nghệ nhuộm sạch thân thiện với môi trường. Bên cạnh ứng dụng công nghệ NHUỘM SẠCH KHÔNG NƯỚC, chiếc áo còn được xử lý hoàn thiện bằng công nghệ Wicking (Thấm hút) và QuickDry (Nhanh khô) đem đến cho bạn trải nghiệm thoải mái và thoáng khí.', N'Nhanh khô, thoáng khí phù hợp với hoạt động thể thao', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (2, N'Áo thun cổ tròn Excool', 299000, 279000, N'
SỰ KẾT HỢP GIỮA CHẤT LƯỢNG VÀ GIÁ TRỊ BỀN VỮNG
Sản phẩm vải Sorona, được phát triển bởi việc thay thế bằng nguyên liệu tự nhiên ít nhất là 37% Bio-PDO trong quá trình sản xuất, nguyên liệu này được phân hủy sau quá trình sử dụng.

Sản phẩm từ Sorona sử dụng ít hơn 30% năng lượng để sản xuất và giảm 63% khí thải nhà kính.

Năng lượng tiết kiệm tương đương khi sản xuất 50.000 tấn Bio-PDO đủ cung cấp nhiên liệu cho 24.000 ô tô hàng năm.', N'Thấm hút và nhanh khô để bạn luôn cảm thấy thoải mái và tự tin', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (3, N'Áo thun in save the future', 299000, 229000, N' "Clean Vietnam" là dự án cộng đồng tâm huyết của Coolmate và đối tác của mình - Nam Anh Fabric và nghệ sĩ Vietmax với mong muốn nâng cao nhận thức về việc hạn chế sử dụng chai nhựa, tăng cường việc tái chế và tái sử dụng đồ nhựa, góp phần vì một Việt Nam thật xanh nói riêng. 
Lần đầu tiên, với sự kết hợp cùng nghệ sĩ Vietmax, Coolmate mang đến cho bạn một chiếc áo thun oversize với hoạ tiết đầy trẻ trung và năng động. Bạn hoàn toàn có thể mặc chiếc áo này khi đi làm, thoải mái diện xuống phố đi chơi hay đi cà phê với bạn bè.', N'Đây là sản phẩm thuộc Clean Vietnam Collection', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (4, N'Áo thun trơn Clean Vietnam', 269000, 199000, N'"Clean Vietnam" là dự án cộng đồng tâm huyết của Coolmate và đối tác của mình - Nam Anh Fabric và nghệ sĩ Vietmax với mong muốn nâng cao nhận thức về việc hạn chế sử dụng chai nhựa, tăng cường việc tái chế và tái sử dụng đồ nhựa, góp phần vì một Việt Nam thật xanh nói riêng. 
Lần đầu tiên, với sự kết hợp cùng nghệ sĩ Vietmax, Coolmate mang đến cho bạn một chiếc áo thun oversize với hoạ tiết đầy trẻ trung và năng động. Bạn hoàn toàn có thể mặc chiếc áo này khi đi làm, thoải mái diện xuống phố đi chơi hay đi cà phê với bạn bè.', N'Đây là sản phẩm thuộc Clean Vietnam Collection', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (5, N'Áo thun in Peace Clean Vietnam', 299000, 229000, N' "Clean Vietnam" là dự án cộng đồng tâm huyết của Coolmate và đối tác của mình - Nam Anh Fabric và nghệ sĩ Vietmax với mong muốn nâng cao nhận thức về việc hạn chế sử dụng chai nhựa, tăng cường việc tái chế và tái sử dụng đồ nhựa, góp phần vì một Việt Nam thật xanh nói riêng. 
Lần đầu tiên, với sự kết hợp cùng nghệ sĩ Vietmax, Coolmate mang đến cho bạn một chiếc áo thun oversize với hoạ tiết đầy trẻ trung và năng động. Bạn hoàn toàn có thể mặc chiếc áo này khi đi làm, thoải mái diện xuống phố đi chơi hay đi cà phê với bạn bè.', N'Đây là sản phẩm thuộc Clean Vietnam Collection', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (6, N'Áo thun oversize in The Future Is Yours Clean Vietnam', 329000, 249000, N' "Clean Vietnam" là dự án cộng đồng tâm huyết của Coolmate và đối tác của mình - Nam Anh Fabric và nghệ sĩ Vietmax với mong muốn nâng cao nhận thức về việc hạn chế sử dụng chai nhựa, tăng cường việc tái chế và tái sử dụng đồ nhựa, góp phần vì một Việt Nam thật xanh nói riêng. 
Lần đầu tiên, với sự kết hợp cùng nghệ sĩ Vietmax, Coolmate mang đến cho bạn một chiếc áo thun oversize với hoạ tiết đầy trẻ trung và năng động. Bạn hoàn toàn có thể mặc chiếc áo này khi đi làm, thoải mái diện xuống phố đi chơi hay đi cà phê với bạn bè.', N'Đây là sản phẩm thuộc Clean Vietnam Collection', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (7, N'Áo thun nam Cotton Compact phiên bản Premium chống nhăn', 259000, NULL, N'T-Shirt Cotton Compact Premium là sản phẩm áo thun hoàn toàn mới với nhiều sự cải tiến đã được nghiên cứu kỹ lưỡng và phát triển với chất liệu Cotton Compact cao cấp. Một chiếc áo nên có trong tủ đồ với sự đa dụng dùng được trong mọi hoàn cảnh: đi làm, đi chơi, cafe hay cả những buổi gặp mặt lịch sự thì T-Shirt Coolmate chắc chắn sẽ làm bạn trên cả sự hài lòng. Đơn giản nhưng cực nam tính, đơn điệu mà vẫn thời thượng', N'Mềm mại và không gây khó chịu khi mặc', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (8, N'Áo thun nam in Coolmate Cotton Compact phiên bản Premium', 259000, NULL, N'Làm mới mình ngay với chiếc áo thun in chữ ‘Coolmate’ với kiểu chữ thiết kế hiện đại và nổi bật sẽ khiến bạn cảm giác tự tin và hứng khởi để bắt đầu một ngày mới. 

Coolmate đặc biệt dành sản phẩm áo thun in phiên bản premium này gửi đến các chàng cho sự lựa chọn tuyệt vời nhất!', N'Chất liệu Cotton Compact - đẹp hơn, bền hơn, mượt hơn gấp 2 lần Cotton thường.', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (9, N'Áo thun nam 100% Cotton Coolmate Basics', 119000, NULL, N'Áo thun nam Essential Tee này đúng với tên của nó - một chiếc áo luôn cần có trong tủ đồ của bạn bởi sự tiện lợi, dễ mặc và dễ phối đồ trong bất kỳ trường hợp nào. 

Nếu một ngày bạn đang "không biết mặc gì" thì chọn ngay áo thun nam cao cấp Essential Tee - tiện lợi ra đường, thoải mái mà lịch sự,... một chiếc áo đi từ nhà ra phố mà Coolmate dành rất nhiều thời gian để nghiên cứu và phát triển. Essential Tee được Coolmate đặt với mong muốn chiếc áo thun cao cấp này sẽ làm đúng với cái tên của nó, chiếc áo thun nam đem lại trải nghiệm tốt nhất để ai cũng muốn sở hữu nó trong tủ đồ.', N'Chất liệu 100% Cotton tạo sự mềm mại ngay lần đầu chạm', 1, 100, 1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (10, N'Quần Jogger thể thao co giãn Graphene', 339000, NULL, N'Lắng nghe khách hàng của mình và hiểu được mỗi chàng trai đều cần có trong tủ đồ mình 1 chiếc quần Jogger thể thao đặc biệt thoải mái trong mọi vận động. Và Coolmate đặc biệt cho ra mắt sản phẩm Quần thể thao Jogger co giãn ứng dụng công nghệ Hexarel - 1 dòng công nghệ được phát triển bởi Reliance ứng dụng vật liệu mới Graphene vào vải để mang lại các tính năng ưu việt. Với chất liệu vải 100% Polyester PTT với nhiều tính năng tuyệt vời, chắc chắn chàng sẽ thích.', N'Sản phẩm đầu tiên của Coolmate ứng dụng vật liệu mới Graphene vào công đoạn hoàn tất', 1, 100, 2, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (11, N'Quần thể thao Jogger co giãn', 289000, NULL, N'Lắng nghe khách hàng của mình và hiểu được mỗi chàng trai đều cần có trong tủ đồ mình 1 chiếc quần Jogger thể thao đặc biệt thoải mái trong mọi vận động. Và Coolmate đặc biệt cho ra mắt sản phẩm Quần thể thao Jogger phiên bản mới với chất liệu vải 100% Polyester PTT đặc biệt CO GIÃN TUYỆT VỜI đem đến sự thoải mái tối đa. ', N'Chất liệu 100% polyester PTT, đảm bảo nhẹ, thoáng khí, co giãn tuyệt vời', 1, 100, 2, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (12, N'Quần Jeans Clean Denim dáng Slimfit', 599000, 539000, N'Bạn có biết để sản xuất ra một chiếc quần Jeans cần rất nhiều công đoạn và đặc biệt giai đoạn nhuộm vải Jeans chính là tác nhân gây ra ô nhiễm môi trường rất lớn; với mong muốn đem đến những sản phẩm quần Jeans nam đảm bảo yếu tố chất lượng, thoải mái cho người dùng mà vẫn đảm bảo một sản phẩm sạch, bền vững với môi trường, Coolmate cho ra mắt Dòng Sản Phẩm Jeans Clean Denim - với nguyên liệu và quy cách nhuộm mới đảm bảo sẽ là chiếc Jeans bền màu và thân thiện với môi trường.', N'Vải Denim được dệt toàn bộ tại nhà máy Nhơn Trạch, Đồng Nai của Saitex', 1, 100, 2, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (13, N'Quần dài Kaki Excool co giãn', 499000, 419000, N'Excool là công nghệ được Coolmate và đối tác của mình nghiên cứu và phát triển với mục tiêu đem tới các sản phẩm may mặc nhẹ, bền, dễ chăm sóc, không nhăn cùng nhiều tính năng vượt trội khác. Chiếc Quần Kaki nam Excool là sản phẩm được Coolmate và đối tác tạo lên từ công nghệ này.
Hãy khám phá những sự KHÁC BIỆT tới từ sản phẩm này nhé.', N'hất liệu: 43% Sợi Sorona + 57% Polyester co giãn', 1, 100, 2, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (14, N'Quần nam Daily Pants - sợi Sorona, nhuộm Cleandye', 299000, NULL, N'Với mong muốn đem đến cho khách hàng những sản phẩm tốt nhất, không chỉ từ cảm nhận khi mặc mà Coolmate còn mong muốn bạn được sử dụng và trải nghiệm sản phẩm “xanh" trong xu hướng thời trang phát triển bền vững. Chúng tôi hiểu, khởi đầu của 01 dòng sản phẩm tốt là ở chất liệu vải. Coolmate đã tích cực làm việc với nhà phát triển vải hàng đầu nhằm mang đến bạn một loại vải hoàn toàn mới và rất khác biệt.

Sorona là sợi được tạo ra và phát triển bởi Dupont, một công ty dẫn đầu thị trường về các giải giáp bền vững, đem đến một cuộc sống tốt hơn, an toàn hơn cho sức khoẻ của con người. Thành phần quan trọng trong Sorona là Bio-PDO, được thực hiện thông qua quá trình lên men đường có chiết xuất từ NGÔ (bắp).', N'Chất liệu: 47% Polyester Sorona + 53% Polyester', 1, 100, 2, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (15, N'Combo 3 Quần lót Trunk vải Cotton Modal đen cạp', 299000, 259000, N'MỘT CHIẾC QUẦN LÓT ĐEM ĐẾN TRẢI NGHIỆM TUYỆT VỜI CHO BẠN
Được làm kết hợp từ chất liệu Modal (gỗ sồi) và Cotton, với chất liệu tự nhiên, sẽ mang đến trải nghiệm thoáng mát, thoải mái để vận động cả ngày.', N'Công nghệ may Flat-out Stream đảm bảo co dãn và êm ái nhẹ nhàng cho phần da vùng nhạy cảm', 1, 100, 3, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (16, N'Combo 3 Quần lót Trunk nam khử mùi Anti-Smell', 299000, NULL, N'Ngăn mùi ưu việt và thông thoáng khí cho phần da vùng nhạy cảm. Vải xốp, xù nhẹ, giữ nguyên trạng thái tự nhiên của Cotton', N'Chất liệu 95% Cotton + 5% Spandex mềm mại, không gây ngứa, khó chịu khi mặc', 1, 100, 3, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (17, N'Combo 03 quần lót nam New Trunk Cotton Compact co giãn', 289000, NULL, N'Nếu bạn đang mặc chiếc quần lót nam với kiểu dáng Trunk và thường bị ống cuốn lên trong quá trình hoạt động, hoặc bạn đang mặc những chiếc quần Brief (kiểu dáng tam giác) và thường bị cảm giác siết chặt 2 bên đùi bởi đường viền của chiếc quần Brief đó quá mảnh, Coolmate xin giới thiệu đến bạn ngay chiếc quần kiểu dáng Trunk mới có thể giải quyết những vấn đề bạn đang gặp phải và cho bạn cảm giác thoải mái tối đa. ', N'Chất liệu 95% Cotton Compact, 5% Spandex tạo sự mềm mại và thoáng mát', 1, 100, 3, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (18, N'Combo 03 Quần lót nam Trunk Bamboo kháng khuẩn S2', 299000, NULL, N'Nếu bạn đang mặc chiếc quần lót nam với kiểu dáng Trunk và thường bị ống cuốn lên trong quá trình hoạt động, hoặc bạn đang mặc những chiếc quần Brief (kiểu dáng tam giác) và thường bị cảm giác siết chặt 2 bên đùi bởi đường viền của chiếc quần Brief đó quá mảnh, Coolmate xin giới thiệu đến bạn ngay chiếc quần kiểu dáng Trunk mới có thể giải quyết những vấn đề bạn đang gặp phải và cho bạn cảm giác thoải mái tối đa. ', N'Chất liệu 95% Cotton Compact, 5% Spandex tạo sự mềm mại và thoáng mát', 1, 100, 3, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (19, N'Combo 3 khẩu trang công nghệ HeiQ Viroblock', 99000, 49000, N'Khẩu trang là một phụ kiện thiết yếu không thể thiếu trong cuộc sống "bình thường mới" hiện nay, và lựa chọn cho mình một chiếc khẩu trang thoải mái, với nhiều ưu điểm như có thể tái sử dụng, thoáng khí, kháng khuẩn,... Và Coolmate ra mắt một chiếc khẩu trang đặc biệt, nằm trong dòng sản phẩm "Ứng dụng Công nghệ HeiQ Viroblock" đem đến cho bạn chiếc khẩu trang với nhiều đặc điểm tốt nhất! ', N'Khẩu trang 2 lớp, được xử lý công nghệ HeiQ Viroblock, HeiQ Pure có khả năng diệt virus và vi khuẩn', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (20, N'Túi Coolmate Clean Bag', 49000, NULL, N'NULLTúi tote có thể coi là chiếc túi thời trang và tiện lợi. Với mẫu túi này, bạn có thể biến hóa với nhiều phong cách thời trang khác nhau như năng động cá tính hay ngay thanh lịch cũng rất phù hợp. Vì vậy, sở hữu một chiếc túi tote của Coolmate trong tủ đồ sẽ làm đa dạng phụ kiện cho outfit của bạn.

Chiếc túi Clean Bag gửi tới các bạn - một item hơn cả chiếc túi, bởi Coolmate cùng nhà sản xuất đã cùng nhau thực hiện những chiếc túi đặc biệt, được vẽ, cắt may và tái sử dụng trực tiếp từ những phần vải xuất khẩu còn lại từ nhà sản xuất. Vẫn là loại vải chất lượng đảm bảo về độ bền và dai Polyester nhưng những chiếc túi Coolmate giúp bạn đựng được cả thế giới. ', N'Túi vải mỏng nhẹ, bền với 2 màu lựa chọn: Xanh rêu - Xám ghi', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (21, N'
Mũ Bucket Hat thêu Care & Share Handwriting', 169000, 136000, N'Nếu bạn đã sở hữu những chiếc mũ lưỡi trai thuần nam tính hoặc những dáng mũ fedora lịch lãm, kiểu dáng mũ cao bồi cách điệu bụi bặm, và đang muốn tìm cho mình một chiếc mũ mang đến vẻ trẻ trung, năng động thì Bucket Hat chính là câu trả lời của bạn đây. Care & Share ra mắt phiên bản mũ Bucket Hat cùng với nhiều thiết kế ấn tượng nhưng không hề mất đi vẻ nam tính, đơn giản của bạn khi mang chiếc mũ này nhé! ', N'Thiết kế độc đáo được thêu phía trước mũ nổi bật', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (22, N'Mũ Bucket Hat thêu Care & Share Box', 169000, 136000, N'Nếu bạn đã sở hữu những chiếc mũ lưỡi trai thuần nam tính hoặc những dáng mũ fedora lịch lãm, kiểu dáng mũ cao bồi cách điệu bụi bặm, và đang muốn tìm cho mình một chiếc mũ mang đến vẻ trẻ trung, năng động thì Bucket Hat chính là câu trả lời của bạn đây. Care & Share ra mắt phiên bản mũ Bucket Hat cùng với nhiều thiết kế ấn tượng nhưng không hề mất đi vẻ nam tính, đơn giản của bạn khi mang chiếc mũ này nhé! ', N'Thiết kế độc đáo được thêu phía trước mũ nổi bật', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (23, N'Mũ Bucket Hat thêu Be Cool!!', 169000, 136000, N'Nếu bạn đã sở hữu những chiếc mũ lưỡi trai thuần nam tính hoặc những dáng mũ fedora lịch lãm, kiểu dáng mũ cao bồi cách điệu bụi bặm, và đang muốn tìm cho mình một chiếc mũ mang đến vẻ trẻ trung, năng động thì Bucket Hat chính là câu trả lời của bạn đây. Care & Share ra mắt phiên bản mũ Bucket Hat cùng với nhiều thiết kế ấn tượng nhưng không hề mất đi vẻ nam tính, đơn giản của bạn khi mang chiếc mũ này nhé! ', N'Thiết kế độc đáo được thêu phía trước mũ nổi bật', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (24, N'Mũ lưỡi trai SS2 Care & Share', 149000, 120000, N'Mũ lưỡi trai là món phụ kiện unisex được lòng cả 2 phái. Với kiểu dáng đơn giản, khỏe khoắn, mũ lưỡi trai thường được kết hợp cùng trang phục sporty năng động hoặc phối với phong cách thời trang minimalism (tối giản). Áo thun, quần jeans, quần short, giày sneaker, tank top,denim jacket,… là những item cực hợp khi kết hợp với mũ lưỡi trai. ', N'Form mũ chuẩn với đường may sắc nét', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (25, N'Combo 3 đôi tất thể thao Compression Socks', 149000, NULL, N'Nếu bạn là người yêu thích các hoạt động ngoài trời hay vận động thể thao… thì việc bảo vệ đôi chân rất cần được chú trọng. Một đôi giày tốt, vừa vặn thích hợp là điều cần thiết, tuy nhiên, những phụ kiện nhỏ hỗ trợ như một đôi vớ, tất thể thao cũng đóng vai trò quan trọng không kém tới khả năng vận động, cũng như để bảo vệ đôi chân từ bên trong. ', N'Tất thể thao có đệm dày ở gót, mũi và cổ chân tạo cảm giác êm ái, thoải mái', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (26, N'Combo 4 đôi tất thể thao Techfit', 199000, NULL, N'Một đôi giày tốt, vừa vặn thích hợp là điều cần thiết, tuy nhiên, những phụ kiện nhỏ hỗ trợ như một đôi vớ, tất thể thao cũng đóng vai trò quan trọng không kém tới khả năng vận động, cũng như để bảo vệ đôi chân từ bên trong. Coolmate giới thiệu đến bạn, Combo 4 đôi tất thể thao Techfit thế hệ mới tại Coolmate.

Coolmate đã ra mắt rất nhiều dòng tất thể thao từ Tất thể thao Max-cushion; Tất thể thao Hi-boost và chiếc Tất kiểu dáng thể thao Techfit này thực sự sẽ không làm bạn thất vọng.', N'Chất liệu 80% Nylon, 20% Spandex đảm bảo độ bền và co giãn hơn tất cotton thông thường', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (27, N'Combo 4 đôi tất cổ ngắn Modal', 159000, NULL, N'Về cơ bản, tất cả chúng ta đều đang mang giày giống nhau như Stan Smiths, Converse, Vans, Nike... vì vậy, việc mang đôi tất theo cách khác nhau sẽ nói lên tính cách mỗi người. Hầu hết mọi người chỉ mặc một chiếc quần và áo sơ-mi vào mỗi ngày, trong khi tất có thể được thay thường xuyên, và mang đến cho bạn nét cá tính mà không thứ gì khác có thể”, Donna Wallace, biên tập viên chuyên phụ trách mảng phụ kiện tờ Elle nhấn mạnh.

Hãy tìm đến những đôi tất phù hợp nếu muốn có vẻ ngoài phá cách, nếu muốn giữ đôi chân ấm áp. 

Những đôi tất Coolmate được dệt hoàn toàn theo công nghệ và tiêu chuẩn Nhật Bản, ĐẶC BIỆT sợi Modal (Gỗ sồi) là chất liệu chất lượng cao mang đến sự mềm mại, tính hút ẩm tốt cùng với đó tính năng khử mùi, khử khuẩn tốt đem lại những lợi ích thực sự cho người dùng.', N'Chất liệu: 95% Modal (Gỗ sồi), 5% Spandex', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (28, N'Combo 6 đôi tất ngắn Cotton', 179000, 89000, N'Phù hợp với đi giày thể thao, giày thời trang, và công sở

Bỏ qua những đôi tất (vớ) dễ rách, nhanh nhão, không thoáng khí hay bốc mùi để đến với những đôi tất (vớ) mang thương hiệu #Coolmate. Được dệt hoàn toàn theo công nghệ và tiêu chuẩn Nhật Bản, sợi Cotton organic bền hơn, và đặc biệt là có tính năng khử mùi, khử khuẩn tốt đem lại những lợi ích thực sự cho người dùng.', N'Kiểu dáng không cổ trẻ trung dễ phối với giày', 1, 100, 4, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Product] ([product_id], [product_name], [original_prices], [sale_prices], [product_details], [brief_infor], [status], [quantity], [category_id], [update_date]) VALUES (29, N'Mũ lưỡi trai Baseball Unisex Unavailable', 149000, 89000, N'Nếu chỉ phải sở hữu duy nhất một chiếc mũ lưỡi trai, thì mũ Baseball sẽ luôn là lựa chọn tối ưu nhất cho tủ đồ của bạn: hài hoà với bất kỳ khuôn mặt nào, dễ dàng phối với outfit bên dưới, và cực kỳ tiện lợi cho việc bảo quản vì form mũ khó hư hơn.', N'Form mũ chuẩn với đường may sắc nét', 1, 100, 4, CAST(N'2022-05-31' AS Date))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_Images] ON 

INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (1, 1, N'images/product/1.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (2, 2, N'images/product/2.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (3, 3, N'images/product/3.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (4, 4, N'images/product/4.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (5, 5, N'images/product/5.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (6, 6, N'images/product/6.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (7, 7, N'images/product/7.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (8, 8, N'images/product/8.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (9, 9, N'images/product/9.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (10, 10, N'images/product/10.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (11, 11, N'images/product/11.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (12, 12, N'images/product/12.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (13, 13, N'images/product/13.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (14, 14, N'images/product/14.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (15, 15, N'images/product/15.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (16, 16, N'images/product/16.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (17, 17, N'images/product/17.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (18, 18, N'images/product/18.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (19, 19, N'images/product/19.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (20, 20, N'images/product/20.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (21, 21, N'images/product/21.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (22, 22, N'images/product/22.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (23, 23, N'images/product/23.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (24, 24, N'images/product/24.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (25, 25, N'images/product/25.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (26, 26, N'images/product/26.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (27, 27, N'images/product/27.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (28, 28, N'images/product/28.jpg')
INSERT [dbo].[Products_Images] ([products_images_id], [product_id], [images]) VALUES (29, 29, N'images/product/29.jpg')
SET IDENTITY_INSERT [dbo].[Products_Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [role_name]) VALUES (1, N'customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_image], [backlink], [note], [status], [updated_by]) VALUES (1, NULL, N'images/slider/1.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_image], [backlink], [note], [status], [updated_by]) VALUES (2, NULL, N'images/slider/2.jpg', NULL, NULL, NULL, NULL)
INSERT [dbo].[Slider] ([slider_id], [slider_title], [slider_image], [backlink], [note], [status], [updated_by]) VALUES (3, NULL, N'images/slider/3.png', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userId], [fullName], [password], [avatar], [gender], [email], [mobile], [address], [status], [role_id]) VALUES (1, N'Nguyễn Trí Sơn ', N'123', N'', NULL, N'son2212601@gmail.com', N'0352212601', N'hạ mỗ', NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_update_date]  DEFAULT (getdate()) FOR [update_date]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([author_id])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([categoryBlog_id])
REFERENCES [dbo].[Category_Blog] ([categoryBlog_id])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [fk_Blog_author_id] FOREIGN KEY([author_id])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [fk_Blog_author_id]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Products_Images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[Slider]  WITH CHECK ADD FOREIGN KEY([updated_by])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[Update_Customer]  WITH CHECK ADD FOREIGN KEY([update_by])
REFERENCES [dbo].[User] ([userId])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [Fashion_Shop_Online] SET  READ_WRITE 
GO
