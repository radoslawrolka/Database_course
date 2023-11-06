--Dla każdej kategorii produktu (nazwa), podaj łączną liczbę zamówionych przez klientów jednostek towarów z tek kategorii.
select CategoryName, sum(quantity)
from Products
inner join [Order Details] on Products.ProductID = [Order Details].ProductID
inner join Categories on Products.CategoryID = Categories.CategoryID
group by CategoryName
order by sum(quantity) desc
