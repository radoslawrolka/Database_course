--Zmodyfikuj zapytanie z poprzedniego punktu, tak aby zwracało pierwszych 10 wierszy
select top 10 orderid, round(sum(UnitPrice*Quantity*(1-Discount)), 2) as sum
from [Order Details]
group by orderid
order by sum desc