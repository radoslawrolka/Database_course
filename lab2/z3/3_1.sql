--Dla każdego pracownika podaj liczbę obsługiwanych przez niego zamówień
select EmployeeID, sum(OrderID)
from Orders
where ShippedDate is not null
group by EmployeeID