--Dla każdej kategorii produktu (nazwa), podaj łączną wartość zamówionych przez klientów jednostek towarów z tek kategorii.
select CategoryName, round(sum(quantity*[Order Details].unitprice*(1-discount)), 2) as Total
from Products
inner join [Order Details] on Products.ProductID = [Order Details].ProductID
inner join Categories on Products.CategoryID = Categories.CategoryID
group by CategoryName
order by sum(quantity) desc
