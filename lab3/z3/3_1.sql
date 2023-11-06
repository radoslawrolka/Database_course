--Dla każdego przewoźnika (nazwa) podaj liczbę zamówień które przewieźli w 1997r
select companyname, count(orderid)
from Shippers
inner join Orders on Shippers.shipperid = Orders.shipvia
group by companyname
order by count(orderid) desc
