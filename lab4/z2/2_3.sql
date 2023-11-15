-- Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu danej kategori

select ProductName, UnitPrice, CategoryID, (select avg(UnitPrice) from Products as p1 where p1.CategoryID = Products.CategoryID)
from Products
where UnitPrice < (select avg(UnitPrice) from Products as p1 where p1.CategoryID = Products.CategoryID)