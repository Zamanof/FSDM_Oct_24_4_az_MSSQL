-- JOIN

-- Implicit JOIN

--SELECT *
--FROM Orders, Customers

--SELECT *
--FROM Orders, Customers
--WHERE Orders.CustomerId = Customers.Id


--SELECT Customers.FirstName, Products.ProductName,
--						Orders.CreatedAt, Orders.ProductCount,
--						Orders. Price * Orders.ProductCount AS TotalPrice
--FROM Orders, Customers, Products
--WHERE Orders.CustomerId = Customers.Id
--					AND Products.Id = Orders.ProductId

-- Alias
--SELECT C.FirstName, P.ProductName,
--						O.CreatedAt, O.ProductCount,
--						O. Price * O.ProductCount AS TotalPrice
--FROM Orders AS O, Customers AS C, Products AS P
--WHERE O.CustomerId = C.Id AND P.Id = O.ProductId


-- Explicit JOINS

-- CROSS JOIN

--SELECT *
--FROM Orders CROSS JOIN Customers
--WHERE Orders.CustomerId = Customers.Id


--SELECT C.FirstName, P.ProductName,
--						O.CreatedAt, O.ProductCount,
--						O. Price * O.ProductCount AS TotalPrice
--FROM Orders AS O 
--	 CROSS JOIN Customers AS C 
--	 CROSS JOIN Products AS P
--WHERE O.CustomerId = C.Id AND P.Id = O.ProductId

-- [INNER] JOIN

--SELECT C.FirstName, P.ProductName,
--						O.CreatedAt, O.ProductCount,
--						O. Price * O.ProductCount AS TotalPrice
--FROM Orders AS O 
--	 INNER JOIN Customers AS C ON O.CustomerId = C.Id
--	 JOIN Products AS P ON P.Id = O.ProductId


--  {LEFT | RIGHT | FULL} OUTER JOIN

--SELECT C.FirstName, O.CreatedAt, O.ProductCount
--FROM Customers AS C
--LEFT OUTER JOIN Orders AS O ON C.Id = O.CustomerId


--SELECT C.FirstName, O.CreatedAt, O.ProductCount
--FROM Customers AS C
--LEFT JOIN Orders AS O ON C.Id = O.CustomerId
--WHERE O.CustomerId IS NULL

--SELECT C.FirstName, O.CreatedAt, O.ProductCount
--FROM Orders AS O
--RIGHT JOIN  Customers AS C ON C.Id = O.CustomerId
--WHERE O.CustomerId IS NULL


--SELECT C.FirstName, O.CreatedAt, O.ProductCount,
--								O.Price * O.ProductCount AS TotalPrice, 
--								P.ProductName
--FROM Customers AS C
--FULL JOIN Orders AS O ON C.Id = O.CustomerId
--FULL JOIN Products AS P ON P.Id = O.ProductId



--SELECT C.FirstName,  P.ProductName
--FROM Customers AS C
--FULL JOIN Orders AS O ON C.Id = O.CustomerId
--FULL JOIN Products AS P ON P.Id = O.ProductId
--WHERE O.CustomerId IS NULL AND O.ProductId IS NULL

--SELECT C.FirstName, O.CreatedAt, O.ProductCount,
--								O.Price * O.ProductCount AS TotalPrice, 
--								P.ProductName
--FROM Customers AS C
--FULL JOIN Orders AS O ON C.Id = O.CustomerId
--FULL JOIN Products AS P ON P.Id = O.ProductId
--WHERE O.CustomerId IS NOT NULL AND O.ProductId IS NOT NULL
