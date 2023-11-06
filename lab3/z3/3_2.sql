--Który z przewoźników był najaktywniejszy (przewiózł największą liczbę zamówień) w 1997r, podaj nazwę tego przewoźnika
select companyname, count(orderid)
from Shippers
inner join Orders on Shippers.shipperid = Orders.shipvia
where year(ShippedDate) = 1997
group by companyname
order by count(orderid) desc
