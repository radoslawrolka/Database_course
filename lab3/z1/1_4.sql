--Zmodyfikuj poprzedni przykład, aby pokazać tylko takie zamówienia, dla których łączna liczba jednostek jest większa niż 250
select [Order Details].orderid, round(sum(quantity*products.UnitPrice*(1-Discount)),2), CompanyName
from [Order Details]
inner join orders on orders.orderid = [Order Details].orderid
inner join customers on orders.customerid = customers.customerid
inner join products on products.productid = [Order Details].productid
group by [Order Details].OrderID, CompanyName
having sum(quantity)>250