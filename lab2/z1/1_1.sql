--Napisz polecenie, które oblicza wartość sprzedaży dla każdego zamówienia i zwraca wynik posortowany w malejącej kolejności (wg wartości sprzedaży).
select orderid, round(sum(UnitPrice*Quantity*(1-Discount)), 2) as sum
from [Order Details]
group by orderid
order by sum desc