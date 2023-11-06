--Który z pracowników obsłużył największą liczbę zamówień w 1997r, podaj imię i nazwisko takiego pracownika
select top 1 firstname, LastName, count(orderid)
from Employees
inner join Orders on Employees.EmployeeID = Orders.EmployeeID
where year(OrderDate) = 1997
group by firstname, lastname
order by count(orderid) desc