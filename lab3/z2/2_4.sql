--Dla każdego zamówienia podaj jego wartość uwzględniając opłatę za przesyłkę
select [Order Details].orderid, round(sum(quantity*unitprice*(1-discount))+Freight, 2)
from [Order Details]
join Orders on [Order Details].orderid = Orders.orderid
group by [Order Details].orderid, Freight
order by orderid
