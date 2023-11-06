--Dla każdego spedytora/przewoźnika podaj wartość "opłata za przesyłkę" przewożonych przez niego zamówień w latach o 1996 do 1997
select ShipVia, round(sum(Freight), 2)
from Orders
where year(ShippedDate) in (1996, 1997)
group by ShipVia
order by 2 desc