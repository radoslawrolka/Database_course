--Który z pracowników obsłużył najaktywniejszy (obsłużył zamówienia o największej wartości) w 1997r, podaj imię i nazwisko takiego pracownika
select firstname, LastName, round(sum(quantity*unitprice*(1-discount)), 2) as total
from Employees
inner join Orders on Employees.EmployeeID = Orders.EmployeeID
inner join dbo.[Order Details] "[O D]" on Orders.OrderID = "[O D]".OrderID
where year(OrderDate) = 1997
group by firstname, lastname
order by total desc
