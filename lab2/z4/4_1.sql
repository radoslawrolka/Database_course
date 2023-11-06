--Dla każdego pracownika podaj liczbę obsługiwanych przez niego zamówień z podziałem na lata i miesiące
SELECT
    EmployeeID,
    Year(OrderDate),
    MONTH(OrderDate),
    COUNT(OrderID) AS OrdersHandled
FROM Orders
GROUP BY Rollup (EmployeeID, YEAR(OrderDate), MONTH(OrderDate))
ORDER BY EmployeeID, 2, 3;
