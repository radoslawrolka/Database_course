-- Podaj łączną wartość zamówienia o numerze 1025 (uwzględnij cenę za przesyłkę

select orderid, round(sum(unitprice * quantity * (1-Discount)) +
                (select freight from Orders where OrderID = 10250), 2) as total
from [Order Details]
where orderid = 10250
group by orderid