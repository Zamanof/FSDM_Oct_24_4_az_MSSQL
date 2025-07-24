-- Triggers
-- DML Triggers
-- DML Events (INSERT, UPDATE, DELETE)

USE [Library]

--CREATE TRIGGER BookUpdates
--ON Books
--AFTER UPDATE
--AS 
--BEGIN
--	PRINT CAST(@@ROWCOUNT AS nvarchar(10)) + N' sətir yeniləndi.'
--END

--UPDATE Books
--SET Pages += 1

--UPDATE Books
--SET Pages += 1
--WHERE [Name] LIKE N'%a%'


--CREATE TRIGGER OldBooks
--ON Books
--AFTER INSERT
--AS
--BEGIN
--	DECLARE @year int
--	SELECT @year = YearPress
--	FROM inserted

--	IF @year <= 2000
--		BEGIN
--			PRINT N'Bu köhnə toz basmış kitabı hardan tapmısız? Yəqin ki, toz basmış Nadir müəllim verib.'
--			ROLLBACK TRAN
--		END
--	ELSE
--		BEGIN
--			PRINT N'Bombəəəə. Ağamirze bu kitebi bəyəndüü. Mən sizə alqış deyirəm.'			
--		END

--END

--INSERT INTO Books (Id, [Name], Pages, Id_Author, YearPress, Id_Press, Id_Themes, Id_Category, Quantity)
--VALUES(103, 'Ay Anəəəə!!', 1, 15, 1985, 3, 1, 1, 1254698)

--INSERT INTO Books (Id, [Name], Pages, Id_Author, YearPress, Id_Press, Id_Themes, Id_Category, Quantity)
--VALUES(104, 'SQL Imtahanına az qaldı', 13, 16, 2025, 3, 1, 1, 6)


--CREATE TRIGGER NotPiter
--ON Books
--AFTER DELETE
--AS
--BEGIN
--	IF EXISTS( SELECT * FROM deleted WHERE Id_Press = 3)
--	BEGIN
--		PRINT N'Piter əlçatmazdır, silinməz. Çünki Orda Nadir m. də kitabı var'
--		ROLLBACK TRAN
--	END
--END

--DELETE FROM Books WHERE Id = 104

--CREATE TRIGGER NoInsertLibrarian
--ON Libs
--INSTEAD OF INSERT
--AS
--BEGIN
--	PRINT 'Msg 3609, Level 16, State 1, Line 63.'
--	PRINT 'Insert operation has been aborted. System Error'
--END

--DECLARE @i AS int = 0
--WHILE @i < 1000000
--BEGIN
--	INSERT INTO Libs(Id, FirstName, LastName)
--	VALUES(3, 'Hüseyn', 'Səbziyev')

--	SET @i += 1
--END

--DROP TRIGGER NoInsertLibrarian