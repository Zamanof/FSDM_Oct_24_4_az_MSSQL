-- Relationships

-- One To One

--CREATE TABLE Countries(
--[Id] int PRIMARY KEY IDENTITY(1, 1),
--[Name] nvarchar(50) NOT NULL
--)

--CREATE TABLE Capitals(
--[Id] int PRIMARY KEY IDENTITY(1, 1),
--[Name] nvarchar(50) NOT NULL,
--[CountryId] int NOT NULL UNIQUE
--CONSTRAINT FK_Capitals FOREIGN KEY([CountryId]) REFERENCES Countries([Id])
--)


-- One To Many

--CREATE TABLE Groups(
--[Id] int PRIMARY KEY IDENTITY(1, 1),
--[Name] nvarchar(50) NOT NULL
--)

--CREATE TABLE Students(
--[Id] int PRIMARY KEY IDENTITY(1, 1),
--[FirstName] nvarchar(50) NOT NULL,
--[LastName] nvarchar(50) NOT NULL,
--[BirthDate] date NOT NULL,
--[GroupId] int NOT NULL REFERENCES Groups([Id])
--)

-- Many To Many

--CREATE TABLE Authors(
--[Id] int PRIMARY KEY IDENTITY(1, 1),
--[FirstName] nvarchar(50) NOT NULL,
--[LastName] nvarchar(50) NOT NULL,
--[BirthDate] date NOT NULL
--)

--CREATE TABLE Books(
--[Id] int PRIMARY KEY IDENTITY(1, 1),
--[Name] nvarchar(50) NOT NULL,
--[Pages] int NOT NULL,
--[Price] smallmoney NOT NULL
--)

--CREATE TABLE AuthorsBooks(
--[AuthorId] int NOT NULL,
--[BookId] int NOT NULL,
--CONSTRAINT FK_Aouthors_Id FOREIGN KEY([AuthorId]) REFERENCES Authors([Id]),
--CONSTRAINT FK_Books_Id FOREIGN KEY([BookId]) REFERENCES Books([Id]),
--)