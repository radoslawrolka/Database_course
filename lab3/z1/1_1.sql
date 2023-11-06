--Dla każdego zamówienia podaj łączną liczbę zamówionych jednostek towaru oraz nazwę klienta.
select [Order Details].orderid, sum(quantity), CompanyName
from [Order Details]
inner join orders on orders.orderid = [Order Details].orderid
inner join customers on orders.customerid = customers.customerid
group by [Order Details].OrderID, CompanyName
