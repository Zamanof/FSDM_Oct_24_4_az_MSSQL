-- User Definition Functions (UDF)

-- UDF iki tipdə olur
-- Scalar-valued functions
-- Table-valued functions

USE [Library]

GO

-- Scalar-valaued function example
--CREATE FUNCTION CountBooksForReturn
--(@stud_id AS int)
--RETURNS int
--AS
--BEGIN
--	DECLARE @books AS int = 0
--	SELECT @books = COUNT(*) 
--	FROM S_Cards
--	WHERE S_Cards.Id_Student = @stud_id AND S_Cards.DateIn IS NULL

--	RETURN @books
--END

--SELECT dbo.CountBooksForReturn(2) AS BooksCount

--DECLARE @books_count AS int
--EXEC @books_count = CountBooksForReturn 2
--SELECT @books_count AS BooksCount

-- Table-valued functions examples

--CREATE FUNCTION BookList()
--RETURNS TABLE
--AS
--RETURN(
--		SELECT	B.[Name] AS BookName,
--				C.[Name] AS CategoryName,
--				T.[Name] AS ThemeName,
--				A.FirstName + N' ' + A.LastName AS Author
--		FROM Books AS B
--		INNER JOIN Authors AS A ON A.Id = B.Id_Author
--		INNER JOIN Categories AS C ON C.Id = B.Id_Category
--		INNER JOIN Themes AS T ON T.Id = B.Id_Themes
--)

--SELECT *
--FROM BookList()

--CREATE FUNCTION BooksCountByAuthors()
--RETURNS @BooksAuthors TABLE (Author nvarchar(30), BooksCount int)
--AS
--BEGIN
--	DECLARE @tmp_books TABLE (Author nvarchar(30), BooksCount int)
--	INSERT @tmp_books
--	SELECT A.FirstName + N' ' + A.LastName, COUNT(SC.Id_Book)
--	FROM Authors AS A
--	INNER JOIN Books AS B ON A.Id = B.Id_Author
--	INNER JOIN S_Cards AS SC ON SC.Id_Book = B.Id
--	GROUP BY A.FirstName, A.LastName

--	INSERT @tmp_books
--	SELECT A.FirstName + N' ' + A.LastName, COUNT(TC.Id_Book)
--	FROM Authors AS A
--	INNER JOIN Books AS B ON A.Id = B.Id_Author
--	INNER JOIN T_Cards AS TC ON TC.Id_Book = B.Id
--	GROUP BY A.FirstName, A.LastName

--	DECLARE @tmp_books2 TABLE (Author nvarchar(30), BooksCount int)
--	INSERT @tmp_books2
--	SELECT T.Author, SUM(T.BooksCount)
--	FROM @tmp_books AS T
--	GROUP BY T.Author

--	INSERT @BooksAuthors
--	SELECT T.Author, T.BooksCount
--	FROM @tmp_books2 AS T

--	RETURN
--END

--SELECT TOP(1) Author, BooksCount
--FROM BooksCountByAuthors() AS BC
--ORDER BY BooksCount DESC