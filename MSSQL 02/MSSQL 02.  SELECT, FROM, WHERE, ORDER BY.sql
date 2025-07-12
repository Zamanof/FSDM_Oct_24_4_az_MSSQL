-- SELECT, FROM, WHERE

/*
SELECT [TOP(N)] [DISTINCT | ALL] * | val1, val2, ..., valN
FROM <table_name>
WHERE <search_condition>
ORDER BY <order_list> [ASC | DESC]
OFFSET (N) ROWS
FETCH NEXT (N) ROWS ONLY

FROM - dataların mənbəyi
SELECT - dataların seçilməsi
*/

--SELECT *
--FROM Students.dbo.Students

--SELECT *
--FROM dbo.Students

--SELECT *
--FROM Students

--SELECT FirstName, LastName, Age
--FROM Students

--SELECT FirstName + ' ' + LastName, 2025 - Age
--FROM Students

-- Alias
--SELECT FirstName + ' ' + LastName AS FullName, 2025 - Age AS [Born Year]
--FROM Students

--SELECT ALL [Group]
--FROM Students

-- DISTINCT - dataları təkrarlanmadan seçmək üçündür
--SELECT DISTINCT [Group]
--FROM Students

-- ORDER BY column_name [ASC | DESC] - çeşidləmə - by default ASC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY Age ASC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY Age DESC

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY FirstName, Age


-- WHERE - dataların seçilməsi üçün şərt
-- comparison operator - (>, <, >=, <=, =, != (<>))

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age > 50

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Olqa'

-- AND , OR, NOT
--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age > 70 AND FirstName = N'Olqa'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age > 70 OR FirstName = N'Olqa'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE NOT Age > 70


--SELECT FirstName, LastName, Age
--FROM Students
--WHERE NOT (Age > 70 OR FirstName = N'Olqa')

-- <column_name> IS [NOT] NULL

--SELECT FirstName, LastName, Age, [Group]
--FROM Students
--WHERE [Group] IS NULL

--SELECT FirstName, LastName, Age, [Group]
--FROM Students
--WHERE [Group] IS NOT NULL

-- IN, BETWEEN

-- BETWEEN Example
--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age >= 70 AND Age <= 85

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE Age BETWEEN 70 AND 85

-- IN Example
--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Petr' OR FirstName = N'Olqa' OR FirstName = N'Yuriy'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName IN (N'Petr', N'Olqa',N'Yuriy')

-- LIKE - sətirlərdə daha dəqiq seçimlər etmək üçün 
/*
	%		- bir neçə istənilən simvol
	_		- bir istənilən simvol
	[abc]	- göstərilən simvollardan hər hansı biri
	[a-f]	- göstərilən simvollar arralığından hər hansı biri
	[^abc]	- göstərilən simvollardan heç biri
*/

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName = N'Olqa'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'Olqa'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'O%'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'O%' AND LastName NOT LIKE N'M%'


--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'_a%'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'[AOP]%'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'[^aop]%'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE FirstName LIKE N'[f-p]%'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE LastName LIKE N'%ova'

--SELECT FirstName, LastName, Age
--FROM Students
--WHERE LastName LIKE N'[a-d][k-o]%'

-- TOP(N) - ilk N sayda seçimi göstərir

-- cədvəldə olan ilk 5 tələbə
--SELECT TOP(5) FirstName, LastName, Age
--FROM Students

-- ən cavan tələbə
--SELECT TOP(1) FirstName, LastName, Age
--FROM Students
--ORDER BY Age

-- ən yaşlı tələbə
--SELECT TOP(1) FirstName, LastName, Age
--FROM Students
--ORDER BY Age DESC


-- OFFSET (N) ROWS - N sayda sətri buraxmaq
-- (ORDER BY ilə işləyir və TOP olmadan)
-- A TOP can not be used in the same query or sub-query as a OFFSET.

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY FirstName
--OFFSET (5) ROWS

-- FETCH NEXT (N) ROWS ONLY - növbəti N sətri göstər

--SELECT FirstName, LastName, Age
--FROM Students
--ORDER BY FirstName
--OFFSET (5) ROWS
--FETCH NEXT (1) ROWS ONLY
