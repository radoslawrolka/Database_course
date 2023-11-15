-- Dla każdego produktu podaj jego nazwę, cenę, średnią cenę wszystkich produktów oraz różnicę między ceną produktu a średnią ceną wszystkich produktów

select ProductName,
       UnitPrice,
       (select avg(UnitPrice) from Products),
       (UnitPrice - (select avg(UnitPrice) from Products)) as 'Różnica'
from Products
order by Różnica desc