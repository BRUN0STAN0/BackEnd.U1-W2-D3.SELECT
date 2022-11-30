SELECT COUNT(*) AS TotOrdini FROM Orders
SELECT COUNT(*) AS TotClienti FROM Customers
SELECT COUNT(*) AS TotClientiLondra, City FROM Customers GROUP BY City HAVING City = 'London'
SELECT AVG(Freight) as MediaTraspOrdini FROM Orders
SELECT AVG(Freight) as MediaSpeseTrasp, CustomerID FROM Orders GROUP BY CustomerID HAVING CustomerID='BOTTM'
SELECT SUM(Freight) AS SpeseTraspCliente, CustomerID FROM Orders GROUP BY CustomerID
SELECT COUNT(*) AS TotClienti_x_Citta, City FROM Customers GROUP BY City
SELECT SUM(UnitPrice * Quantity) AS ResocontoOrdini, OrderID From [Order Details] GROUP BY OrderID
SELECT SUM(UnitPrice * Quantity) AS ResocontoOrdini, OrderID From [Order Details] GROUP BY OrderID HAVING OrderID = 10248
SELECT COUNT(*) AS NrProdotti, CategoryID FROM Products GROUP BY CategoryID