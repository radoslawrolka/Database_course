-- Zmodyfikuj rozwiązania z pkt 3 tak aby dla pracowników pokazać jeszcze datę ostatnio obsłużonego zamówienia

-- a)
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
                                   where o2.employeeid = e.employeeid)), 2) as total,
      (select max(o3.orderdate)
       from orders as o3
       where o3.employeeid = e.employeeid) as lastorderdate
from employees e
where e.employeeid in (select e2.reportsTo
                       from employees as e2
                       where e2.reportsTo is not null)

-- b)
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
                                   where o2.employeeid = e.employeeid)), 2) as total,
       (select max(o3.orderdate)
        from orders as o3
        where o3.employeeid = e.employeeid) as lastorderdate
from employees e
where e.employeeid not in (select e2.reportsTo
                       from employees as e2
                       where e2.reportsTo is not null)