-- Podaj łączną wartość zamówień każdego zamówienia (uwzględnij cenę za przesyłkę)

select orderid, round(sum(unitprice * quantity * (1-Discount)) +
                (select freight from Orders where [Order Details].OrderID = Orders.OrderID), 2) as total
from [Order Details]
group by orderid