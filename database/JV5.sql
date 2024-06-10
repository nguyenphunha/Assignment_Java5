-- Tạo cơ sở dữ liệu JV5
CREATE DATABASE JV5;
GO

-- Sử dụng cơ sở dữ liệu JV5
USE JV5;
GO

-- Tạo bảng Accounts
CREATE TABLE Accounts (
    Username nvarchar(50) NOT NULL,
    Password varchar(50) NOT NULL,
    Fullname nvarchar(50) NOT NULL,
    Email varchar(50) NOT NULL,
    Photo nvarchar(50) NOT NULL,
    Activated bit NOT NULL,
    Admin bit NOT NULL,
    PRIMARY KEY (Username)
);
GO

-- Tạo bảng Categories với ID tự tăng
CREATE TABLE Categories (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar(50) NOT NULL,
    PRIMARY KEY (Id)
);
GO

-- Tạo bảng Brands với ID tự tăng
CREATE TABLE Brands (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar(50) NOT NULL,
    PRIMARY KEY (Id)
);
GO

-- Tạo bảng Orders
CREATE TABLE Orders (
    Id bigint IDENTITY(1,1) NOT NULL,
    Username nvarchar(50) NOT NULL,
    CreatedDate datetime NOT NULL,
    Address nvarchar(50) NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Username) REFERENCES Accounts(Username)
);
GO

-- Tạo bảng Products
CREATE TABLE Products (
    Id int IDENTITY(1,1) NOT NULL,
    Name nvarchar(50) NOT NULL,
    Image varchar(50) NOT NULL,
    Price float NOT NULL,
    Description nvarchar(255) NOT NULL,
    CreatedDate date NOT NULL,
    Available bit NOT NULL,
    CategoryId int NOT NULL,
    BrandId int NOT NULL,
    Origin nvarchar(50) NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id),
    FOREIGN KEY (BrandId) REFERENCES Brands(Id)
);
GO

-- Tạo bảng OrderDetails
CREATE TABLE OrderDetails (
    Id bigint IDENTITY(1,1) NOT NULL,
    OrderId bigint NOT NULL,
    ProductId int NOT NULL,
    Price float NOT NULL,
    Quantity int NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (OrderId) REFERENCES Orders(Id),
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);
GO

-- Tạo bảng Cart
CREATE TABLE Cart (
    CartId int IDENTITY(1,1) NOT NULL,
    Username nvarchar(50) NOT NULL,
    ProductId int NOT NULL,
    Quantity int NOT NULL,
    AddedDate datetime NOT NULL,
    PRIMARY KEY (CartId),
    FOREIGN KEY (Username) REFERENCES Accounts(Username),
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);
GO

-- Thêm dữ liệu vào bảng Categories
INSERT INTO Categories (Name) VALUES (N'Tai nghe có dây');
INSERT INTO Categories (Name) VALUES (N'Tai nghe không dây');
INSERT INTO Categories (Name) VALUES (N'In-ear Headphone');
INSERT INTO Categories (Name) VALUES (N'Earphone');
GO

-- Thêm dữ liệu vào bảng Brands
INSERT INTO Brands (Name) VALUES (N'Brand 1');
INSERT INTO Brands (Name) VALUES (N'Brand 2');
INSERT INTO Brands (Name) VALUES (N'Brand 3');
INSERT INTO Brands (Name) VALUES (N'Brand 4');
GO

-- Bật IDENTITY_INSERT cho bảng Products
SET IDENTITY_INSERT Products ON;
GO

-- Chèn dữ liệu vào bảng Products
INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (3, N'Sản Phẩm 1', 'product1.png', 200, N'Mô tả sản phẩm 1', CAST('2024-01-01' AS Date), 1, 1, 1, N'Việt Nam');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (4, N'Sản Phẩm 2', 'product2.png', 300, N'Mô tả sản phẩm 2', CAST('2024-01-01' AS Date), 1, 1, 2, N'Mỹ');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (5, N'Sản Phẩm 3', 'product3.png', 400, N'Mô tả sản phẩm 3', CAST('2024-01-01' AS Date), 1, 2, 3, N'Nhật Bản');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (6, N'Sản Phẩm 4', 'product4.png', 100, N'Mô tả sản phẩm 4', CAST('2024-01-01' AS Date), 1, 3, 4, N'Đức');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (7, N'Sản Phẩm 5', 'product5.png', 500, N'Mô tả sản phẩm 5', CAST('2024-01-01' AS Date), 1, 3, 1, N'Hàn Quốc');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (8, N'Sản Phẩm 6', 'product6.png', 80, N'Mô tả sản phẩm 6', CAST('2024-01-01' AS Date), 1, 2, 2, N'Trung Quốc');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (9, N'Sản Phẩm 7', 'product7.png', 130, N'Mô tả sản phẩm 7', CAST('2024-01-01' AS Date), 1, 3, 3, N'Việt Nam');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (10, N'Sản Phẩm 8', 'product8.png', 220, N'Mô tả sản phẩm 8', CAST('2024-01-01' AS Date), 1, 2, 4, N'Mỹ');

INSERT INTO Products (Id, Name, Image, Price, Description, CreatedDate, Available, CategoryId, BrandId, Origin) 
VALUES (11, N'Sản Phẩm 9', 'product9.png', 460, N'Mô tả sản phẩm 9', CAST('2024-01-01' AS Date), 1, 3, 1, N'Nhật Bản');
GO

-- Tắt IDENTITY_INSERT cho bảng Products
SET IDENTITY_INSERT Products OFF;
GO
