USE [Data]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/4/2018 8:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[ContactName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [nchar](12) NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 5/4/2018 8:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 5/4/2018 8:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserID] [int] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UserName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/4/2018 8:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/4/2018 8:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/4/2018 8:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitInStock] [int] NOT NULL,
	[ProductType] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Customers] ([CustomerID], [ContactName], [Address], [Phone], [UserID]) VALUES (1, N'Maria Anders', N'Obere Str. 57', N'030-0074321 ', 5)
INSERT [dbo].[Customers] ([CustomerID], [ContactName], [Address], [Phone], [UserID]) VALUES (2, N'Ana Trujillo', N'Avda. de la Constitución 2222', N'(5) 555-4729', 6)
INSERT [dbo].[Customers] ([CustomerID], [ContactName], [Address], [Phone], [UserID]) VALUES (3, N'Antonio Moreno', N'Mataderos  2312', N'(5) 555-3932', 7)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [UserID]) VALUES (1, N'Davolio Nancy', 1)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [UserID]) VALUES (2, N'Fuller Andrew', 2)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [UserID]) VALUES (3, N'Leverling Janet', 3)
INSERT [dbo].[Employees] ([EmployeeID], [EmployeeName], [UserID]) VALUES (4, N'Peacock Margaret', 4)
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (1, N'admin', N'admin     ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (2, N'staff1', N'staff1    ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (3, N'staff2', N'staff2    ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (4, N'staff3', N'staff3    ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (5, N'cus1', N'cus1      ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (6, N'cus2', N'cus2      ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (7, N'cus3', N'cus3      ')
INSERT [dbo].[Login] ([UserID], [Password], [UserName]) VALUES (8, N'cus4', N'cus4      ')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (61688, 1, 1, CAST(N'1996-07-04 00:00:00.000' AS DateTime))
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [EmployeeID], [OrderDate]) VALUES (61689, 2, 2, CAST(N'1996-07-09 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (1, N'Chai', 1.0000, 1, N'Beverages')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (2, N'Chang', 1.0000, 1, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (3, N'Aniseed Syrup', 1.0000, 2, N'Beverages')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2.0000, 2, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2.0000, 2, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (6, N'Grandma''s Boysenberry Spread', 3.0000, 2, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 3.0000, 7, N'Meat/Poultry')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (8, N'Northwoods Cranberry Sauce', 3.0000, 2, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (9, N'Mishi Kobe Niku', 4.0000, 6, N'Beverages')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (10, N'Ikura', 4.0000, 8, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (11, N'Queso Cabrales', 5.0000, 4, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (12, N'Queso Manchego La Pastora', 5.0000, 4, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (13, N'Konbu', 6.0000, 8, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (14, N'Tofu', 6.0000, 7, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (15, N'Genen Shouyu', 6.0000, 2, N'Beverages')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (16, N'Pavlova', 7.0000, 3, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (17, N'Alice Mutton', 7.0000, 6, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (18, N'Carnarvon Tigers', 7.0000, 8, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (19, N'Teatime Chocolate Biscuits', 8.0000, 3, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (20, N'Sir Rodney''s Marmalade', 8.0000, 3, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (21, N'Sir Rodney''s Scones', 8.0000, 3, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (22, N'Gustaf''s Knäckebröd', 9.0000, 5, N'Beverages')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (23, N'Tunnbröd', 9.0000, 5, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (24, N'Guaraná Fantástica', 10.0000, 1, N'Beverages')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 11.0000, 3, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (26, N'Gumbär Gummibärchen', 11.0000, 3, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (27, N'Schoggi Schokolade', 11.0000, 3, N'Meat/Poultry')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (28, N'Rössle Sauerkraut', 12.0000, 7, N'Meat/Poultry')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (29, N'Thüringer Rostbratwurst', 12.0000, 6, N'50 bags x 30 sausgs.')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (30, N'Nord-Ost Matjeshering', 13.0000, 8, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (31, N'Gorgonzola Telino', 14.0000, 4, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (32, N'Mascarpone Fabioli', 14.0000, 4, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (33, N'Geitost', 15.0000, 4, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (34, N'Sasquatch Ale', 16.0000, 1, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (35, N'Steeleye Stout', 16.0000, 1, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (36, N'Inlagd Sill', 17.0000, 8, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (37, N'Gravad lax', 17.0000, 8, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (38, N'Côte de Blaye', 18.0000, 1, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (39, N'Chartreuse verte', 18.0000, 1, N'Produce')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (40, N'Boston Crab Meat', 19.0000, 8, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (41, N'Jack''s New England Clam Chowder', 19.0000, 8, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (42, N'Singaporean Hokkien Fried Mee', 20.0000, 5, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (43, N'Ipoh Coffee', 20.0000, 1, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (44, N'Gula Malacca', 20.0000, 2, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (45, N'Rogede sild', 21.0000, 8, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (46, N'Spegesild', 21.0000, 8, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (47, N'Zaanse koeken', 22.0000, 3, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (48, N'Chocolade', 22.0000, 3, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (49, N'Maxilaku', 23.0000, 3, N'Confections')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (50, N'Valkoinen suklaa', 23.0000, 3, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (51, N'Manjimup Dried Apples', 24.0000, 7, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (52, N'Filo Mix', 24.0000, 5, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (53, N'Perth Pasties', 24.0000, 6, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (54, N'Tourtière', 25.0000, 6, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (55, N'Pâté chinois', 25.0000, 6, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (56, N'Gnocchi di nonna Alice', 26.0000, 5, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (57, N'Ravioli Angelo', 26.0000, 5, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (58, N'Escargots de Bourgogne', 27.0000, 8, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (59, N'Raclette Courdavault', 28.0000, 4, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (60, N'Camembert Pierrot', 28.0000, 4, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (61, N'Sirop d''érable', 29.0000, 2, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (62, N'Tarte au sucre', 29.0000, 3, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (63, N'Vegie-spread', 7.0000, 2, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (64, N'Wimmers gute Semmelknödel', 12.0000, 5, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2.0000, 2, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (66, N'Louisiana Hot Spiced Okra', 2.0000, 2, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (67, N'Laughing Lumberjack Lager', 16.0000, 1, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (68, N'Scottish Longbreads', 8.0000, 3, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (69, N'Gudbrandsdalsost', 15.0000, 4, N'Grains/Cereals')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (70, N'Outback Lager', 7.0000, 1, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (71, N'Flotemysost', 15.0000, 4, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (72, N'Mozzarella di Giovanni', 14.0000, 4, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (73, N'Röd Kaviar', 17.0000, 8, N'Seafood')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (74, N'Longlife Tofu', 4.0000, 7, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (75, N'Rhönbräu Klosterbier', 12.0000, 1, N'Dairy Products')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (76, N'Lakkalikööri', 23.0000, 1, N'Condiments')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitInStock], [ProductType]) VALUES (77, N'Original Frankfurter grüne Soße', 12.0000, 2, N'Condiments')
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Login] FOREIGN KEY([UserID])
REFERENCES [dbo].[Login] ([UserID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Login]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Login] FOREIGN KEY([UserID])
REFERENCES [dbo].[Login] ([UserID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Login]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Employees] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Employees]
GO
