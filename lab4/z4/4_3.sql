-- Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe

select distinct c.CompanyName, c.Address, c.City, c.Country
from Customers as c
where CustomerID not in (
    select distinct CustomerID
    from Orders
    where year(orderdate) = 1997
    )