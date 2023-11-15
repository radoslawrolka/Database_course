-- Dla każdego produktu podaj jego nazwę kategorii, nazwę produktu, cenę, średnią cenę wszystkich produktów danej kategorii oraz różnicę między ceną produktu a średnią ceną wszystkich produktów danej kategorii

select (select CategoryName from Categories where Categories.CategoryID = Products.CategoryID) as 'Kategoria',
       ProductName,
       UnitPrice,
       (select avg(UnitPrice) from Products as p1 where p1.CategoryID = Products.CategoryID) as 'Średnia kategoria',
       (UnitPrice - (select avg(UnitPrice) from Products)) as 'Różnica'
from Products
order by Różnica desc
