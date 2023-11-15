-- Dla każdego produktu podaj maksymalną liczbę zamówionych jednostek

select
    (select ProductName from Products where [Order Details].ProductID = Products.ProductID),
    max(Quantity)
from [Order Details]
group by ProductID
order by max(Quantity) desc