--Dla każdego pracownika (imię i nazwisko) podaj łączną wartość zamówień obsłużonych przez tego pracownika–Ogranicz wynik tylko do pracowników
-- a) którzy mają podwładnych
-- b) którzy nie mają podwładnych
-- have employees under them
select distinct e.firstname, e.LastName, round(sum(quantity*unitprice*(1-discount)), 2) as total
from Employees as e
inner join Orders on e.EmployeeID = Orders.EmployeeID
inner join dbo.[Order Details] "[O D]" on Orders.OrderID = "[O D]".OrderID
inner join Employees as e1 on e.EmployeeID = e1.ReportsTo
group by e.firstname, e.lastname, e1.EmployeeID
order by total desc

--doesnt have employees under them
select distinct e.firstname, e.LastName, round(sum(quantity*unitprice*(1-discount)), 2) as total
from Employees as e
inner join Orders on e.EmployeeID = Orders.EmployeeID
inner join dbo.[Order Details] "[O D]" on Orders.OrderID = "[O D]".OrderID
left outer join Employees as e1 on e.EmployeeID = e1.ReportsTo
where e1.EmployeeID is null
group by e.firstname, e.lastname
order by total desc