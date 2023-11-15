-- Podaj produkty kupowane przez więcej niż jednego klienta

SELECT ProductName, Number_of_clients
FROM (
    SELECT P.ProductID,
           P.ProductName,
           COUNT(DISTINCT O.CustomerID) AS Number_of_clients
    FROM Products AS P
             INNER JOIN [Order Details] OD ON P.ProductID = OD.ProductID
             INNER JOIN Orders O ON OD.OrderID = O.OrderID
    GROUP BY P.ProductID, P.ProductName
) AS Subquery
WHERE Number_of_clients > 1
ORDER BY Number_of_clients DESC;
