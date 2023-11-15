-- Który z pracowników obsłużył najaktywniejszy (obsłużył zamówienia o największej wartości) w 1997r, podaj imię i nazwisko takiego pracownika


select TOP 1 e.firstname,
             e.lastname,
             round((select sum(o.freight)
                    from orders o
                    where o.employeeid = e.employeeid and year(o.OrderDate) = 1997)
                    +
                   (select sum(od.unitprice * od.quantity * (1-od.discount))
                    from [order details] as od
                    where od.OrderID in (select o2.OrderID
                                         from orders as o2
                                         where o2.employeeid = e.employeeid and year(o2.orderdate) = 1997)), 2) as total
from employees e
