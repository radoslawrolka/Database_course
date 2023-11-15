-- Dla każdego pracownika (imię i nazwisko) podaj łączną wartość zamówień obsłużonych przez tego pracownika (przy obliczaniu wartości zamówień uwzględnij cenę za przesyłkę

select e.firstname,
       e.lastname,
       round((select sum(o.freight)
              from orders o
              where o.employeeid = e.employeeid)
              +
             (select sum(od.unitprice * od.quantity * (1-od.discount))
              from [order details] as od
              where od.OrderID in (select o2.OrderID
                                   from orders as o2
                                   where o2.employeeid = e.employeeid)), 2) as total
from employees e