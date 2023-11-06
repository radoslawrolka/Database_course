--Posortuj wyniki w zapytaniu z poprzedniego punktu wg:
-- a) łącznej wartości zamówień
-- b) łącznej liczby zamówionych przez klientów jednostek towarów.
select CategoryName, round(sum(quantity*[Order Details].unitprice*(1-discount)), 2) as Total
from Products
inner join [Order Details] on Products.ProductID = [Order Details].ProductID
inner join Categories on Products.CategoryID = Categories.CategoryID
group by CategoryName
order by sum(quantity) desc

select CategoryName, round(sum(quantity*[Order Details].unitprice*(1-discount)), 2) as Total
from Products
inner join [Order Details] on Products.ProductID = [Order Details].ProductID
inner join Categories on Products.CategoryID = Categories.CategoryID
group by CategoryName
order by count(quantity) desc
