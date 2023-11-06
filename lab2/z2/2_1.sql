--Podaj liczbę zamówionych jednostek produktów dla  produktów, dla których productid< 3
select ProductID, sum(Quantity)
from [Order Details]
where ProductID>3
group by ProductID
