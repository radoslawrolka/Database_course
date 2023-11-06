--Dla każdego spedytora/przewoźnika podaj wartość "opłata za przesyłkę" przewożonych przez niego zamówień
select ShipVia, sum(Freight)
from Orders
group by ShipVia