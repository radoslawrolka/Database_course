--Zmodyfikuj poprzedni przykład, aby pokazać tylko takie zamówienia, dla których łączna liczbę zamówionych jednostek jest większa niż 250
select [Order Details].orderid, sum(quantity), CompanyName
from [Order Details]
inner join orders on orders.orderid = [Order Details].orderid
inner join customers on orders.customerid = customers.customerid
group by [Order Details].OrderID, CompanyName
HAVING sum(quantity) > 250
