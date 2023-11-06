--Dla każdego pracownika (imię i nazwisko) podaj łączną wartość zamówień obsłużonych przez tego pracownika
select firstname, LastName, count(orderid)
from Employees
inner join Orders on Employees.EmployeeID = Orders.EmployeeID
group by firstname, lastname
order by count(orderid) desc