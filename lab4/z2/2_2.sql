-- Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu

select ProductName, UnitPrice, (select avg(UnitPrice) from Products)
from Products
where UnitPrice < (select avg(UnitPrice) from Products)
order by UnitPrice desc